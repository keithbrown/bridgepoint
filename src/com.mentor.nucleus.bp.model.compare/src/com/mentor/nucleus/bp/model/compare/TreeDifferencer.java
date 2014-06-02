package com.mentor.nucleus.bp.model.compare;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;

import org.eclipse.compare.structuremergeviewer.Differencer;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.TreePath;

import com.mentor.nucleus.bp.core.InterfaceOperation_c;
import com.mentor.nucleus.bp.core.InterfaceSignal_c;
import com.mentor.nucleus.bp.core.common.NonRootModelElement;
import com.mentor.nucleus.bp.core.inspector.ObjectElement;
import com.mentor.nucleus.bp.model.compare.contentmergeviewer.SynchronizedTreeViewer;
import com.mentor.nucleus.bp.model.compare.providers.NonRootModelElementComparable;

public class TreeDifferencer extends Differencer {

	private boolean threeWay;
	private LinkedHashMap<Object, List<TreeDifference>> leftDifferenceMap = new LinkedHashMap<Object, List<TreeDifference>>();
	private LinkedHashMap<Object, List<TreeDifference>> rightDifferenceMap = new LinkedHashMap<Object, List<TreeDifference>>();
	private ITreeDifferencerProvider contentProvider;
	private Object[] left;
	private Object[] right;
	private Object[] ancestor;
	private Object input;
	public static HashMap<Object, TreeDifferencer> instances = new HashMap<Object, TreeDifferencer>();

	public TreeDifferencer(ITreeDifferencerProvider provider,
			Object[] leftElements, Object[] rightElements, Object[] ancestors,
			boolean threeWay, Object input) {
		this.contentProvider = provider;
		this.threeWay = threeWay;
		this.left = leftElements;
		this.right = rightElements;
		this.ancestor = ancestors;
		this.input = input;
		performDifferencing();
		instances.put(input, this);
	}

	public void performDifferencing() {
		if(left != null) {
			for (Object l : left) {
				collectDifferences(null, null, null, l);
			}
		}
		// now locate any missing elements from the right
		// side
		if(right != null) {
			for (Object r : right) {
				gatherMissingElementsFromRight(r, null, null);
			}
		}
	}

	private void gatherMissingElementsFromRight(Object right,
			Object leftParent, Object ancestorParent) {
		right = contentProvider.getComparableTreeObject(right);
		Object left = locateElementInOtherVersion(leftParent, right,
				contentProvider, this.left);
		Object ancestor = locateElementInOtherVersion(ancestorParent,
				right, contentProvider, this.ancestor);
		if (left == null) {
			// create a missing difference
			int description = getDifferenceType(left, right, ancestor, threeWay);
			TreeDifference leftDifference = new TreeDifference(left,
					TreeDifference.VALUE_DIFFERENCE, true, description,
					getPathForElement(leftParent, contentProvider));
			leftDifference.setLocation(getLocationOfElement(
					contentProvider.getParent(right), right, leftParent,
					contentProvider));
			leftDifference.setParent(leftParent);
			TreeDifference rightDifference = new TreeDifference(right,
					TreeDifference.VALUE_DIFFERENCE, true, description,
					getPathForElement(right, contentProvider));
			rightDifference.setLocation(getLocationOfElement(
					contentProvider.getParent(right), right, leftParent,
					contentProvider));
			leftDifference.setMatchingDifference(rightDifference);
			rightDifference.setMatchingDifference(leftDifference);
			addDifferenceToMap(leftParent, leftDifference, true);
			addDifferenceToMap(right, rightDifference, false);
		} else {
			// scan the children
			// recursively check the children
			Object[] children = contentProvider.getChildren(right);
			for(Object child : children) {
				gatherMissingElementsFromRight(child, left, ancestor);
			}
		}
	}

	/**
	 * Locate differences from left and right, then find missing elements
	 * on the right
	 * 
	 */
	private void collectDifferences(Object leftParent, Object rightParent, Object ancestorParent,
			Object l) {
		ComparableTreeObject left = (ComparableTreeObject) contentProvider.getComparableTreeObject(l);
		// first see if the element exists on both sides
		Object right = locateElementInOtherVersion(rightParent, left, contentProvider, this.right);
		Object ancestor = locateElementInOtherVersion(ancestorParent, left, contentProvider, this.ancestor);
		if(right != null) {
			// now check for equivalence, values matching + location matching
			if(!elementsEqualIncludingValues(left, right, false, false) && !left.isDerived()) {
				int description = getDifferenceType(left, right, ancestor, threeWay);
				TreeDifference leftDifference = new TreeDifference(left,
						TreeDifference.VALUE_DIFFERENCE, true,
						description,
						getPathForElement(left, contentProvider));
				leftDifference.setLocation(getLocationOfElement(leftParent,
						left, rightParent, contentProvider));
				TreeDifference rightDifference = new TreeDifference(right,
						TreeDifference.VALUE_DIFFERENCE, true,
						description,
						getPathForElement(right, contentProvider));
				rightDifference.setLocation(getLocationOfElement(rightParent,
						right, leftParent, contentProvider));
				leftDifference.setMatchingDifference(rightDifference);
				rightDifference.setMatchingDifference(leftDifference);
				addDifferenceToMap(left, leftDifference, true);
				addDifferenceToMap(right, rightDifference, false);
			}
			// recursively check the children
			Object[] children = contentProvider.getChildren(left);
			for(Object child : children) {
				collectDifferences(left, right, ancestor, child);
			}
		} else {
			// otherwise create an addition difference
			int description = getDifferenceType(left, right, ancestor, threeWay);
			TreeDifference leftDifference = new TreeDifference(left,
					TreeDifference.VALUE_DIFFERENCE, true,
					description,
					getPathForElement(left, contentProvider));
			leftDifference.setLocation(getLocationOfElement(leftParent, left,
					rightParent, contentProvider));
			TreeDifference rightDifference = new TreeDifference(right,
					TreeDifference.VALUE_DIFFERENCE, true,
					description,
					getPathForElement(rightParent, contentProvider));
			rightDifference.setParent(rightParent);
			rightDifference.setLocation(getLocationOfElement(leftParent, left,
					rightParent, contentProvider));
			leftDifference.setMatchingDifference(rightDifference);
			rightDifference.setMatchingDifference(leftDifference);
			addDifferenceToMap(left, leftDifference, true);		
			addDifferenceToMap(rightParent, rightDifference, false);
		}
	}

	static Object locateElementInOtherVersion(Object parent, Object object, ITreeDifferencerProvider contentProvider) {
		Object[] children = contentProvider.getChildren(parent);
		for (int i = 0; i < children.length; i++) {
			if (children[i].equals(object)) {
				return children[i];
			}
		}
		return null;
	}

	private static int getLocationOfElement(Object parent, Object element,
			ITreeDifferencerProvider contentProvider) {
		int count = 0;
		if(parent == null) {
			return 0;
		}
		Object[] children = contentProvider.getChildren(parent);
		for(Object child : children) {
			if(child.equals(element)) {
				return count;
			}
			count++;
		}
		return count;		
	}
	
	/**
	 * The location determined is the next location after any existing
	 * elements of the same type.  If there are no other elements than
	 * the location is the first spot in the element type's slot
	 */
	public static int getLocationOfElement(Object parent, Object element,
			Object otherParent, ITreeDifferencerProvider contentProvider) {
		int location = 0;
		if (locateElementInOtherVersion(otherParent, element,
				contentProvider) != null) {
			// in this case the element's position has changed
			// just return the local element's location
			return getLocationOfElement(otherParent, element, contentProvider);
		}
		if (element instanceof ComparableTreeObject) {
			element = ((ComparableTreeObject) element).getRealElement();
		}
		Object[] children = contentProvider.getChildren(otherParent);
		int elementSlot = getSlot(element);
		for (int i = 0; i <= elementSlot; i++) {
			for (int j = 0; j < children.length; j++) {
				Object child = children[j];
				if (child instanceof ComparableTreeObject) {
					child = ((ComparableTreeObject) child).getRealElement();
				}
				if (child.getClass() == getElementTypeAtSlot(i)) {
					location++;
				}
			}
		}
		return location;
	}
	
	public static Class<?> getElementTypeAtSlot(int slot) {
		if(slot == 1) {
			return InterfaceOperation_c.class;
		}
		if(slot == 2) {
			return InterfaceSignal_c.class;
		}
		return ObjectElement.class;
	}
	
	public static int getSlot(Object element) {
		if(element instanceof InterfaceOperation_c) {
			return 1;
		}
		if(element instanceof InterfaceSignal_c) {
			return 2;
		}
		return 0;
	}
	
	public static TreePath getPathForElement(Object object, ITreeContentProvider contentProvider) {
		List<Object> segments = new ArrayList<Object>();
		Object parent = object;
		while (parent != null) {
			segments.add(0, parent);
			parent = contentProvider.getParent(parent);
			if(parent instanceof NonRootModelElementComparable) {
				NonRootModelElementComparable nrmec = (NonRootModelElementComparable) parent;
				NonRootModelElement nrme = (NonRootModelElement) nrmec.getRealElement();
				if(nrme.isProxy()) {
					// do not count as parent
					parent = null;
				}
			}
		}
		return new TreePath(segments.toArray());
	}

	public int getDifferenceType(Object left, Object right, Object ancestor,
			boolean threeWay) {
		int description= NO_CHANGE;
		
		if (threeWay) {
			if (ancestor == null) {
				if (left == null) {
					if (right == null) {
						Assert.isTrue(false);
						// shouldn't happen
					} else {
						description= RIGHT | ADDITION;
					}
				} else {
					if (right == null) {
						description= LEFT | ADDITION;
					} else {
						description= CONFLICTING | ADDITION;
						if (elementsEqualIncludingValues(left, right, false, true))
							description|= PSEUDO_CONFLICT;
					}
				}
			} else {
				if (left == null) {
					if (right == null) {
						description= CONFLICTING | DELETION | PSEUDO_CONFLICT;
					} else {
						if (elementsEqualIncludingValues(ancestor, right, true, true))		
							description= LEFT | DELETION;
						else
							description= CONFLICTING | CHANGE;	
					}
				} else {
					if (right == null) {
						if (elementsEqualIncludingValues(ancestor, left, true, true))	
							description= RIGHT | DELETION;
						else
							description= CONFLICTING | CHANGE;	
					} else {
						boolean ay= elementsEqualIncludingValues(ancestor, left, false, true);
						boolean am= elementsEqualIncludingValues(ancestor, right, false, true);
						
						// we need to compare the location of left and right
						// otherwise a difference may be skipped
						// check the location of each
						int leftLocation = getLocationOfElement(
								contentProvider.getParent(left), left,
								contentProvider.getParent(right),
								contentProvider);
						int rightLocation = getLocationOfElement(
								contentProvider.getParent(right), right,
								contentProvider.getParent(left),
								contentProvider);
						if(leftLocation != rightLocation) {
							int ancestorLocation = getLocationOfElement(
									contentProvider.getParent(ancestor),
									ancestor, contentProvider.getParent(left),
									contentProvider);
							ay = ancestorLocation == leftLocation;
							ancestorLocation = getLocationOfElement(
									contentProvider.getParent(ancestor),
									ancestor, contentProvider.getParent(right),
									contentProvider);
							am = ancestorLocation == rightLocation;
						}
						if (ay && am) {
							// empty
						} else if (ay && !am) {
							description= RIGHT | CHANGE;
						} else if (!ay && am) {
							description= LEFT | CHANGE;
						} else {
							description= CONFLICTING | CHANGE;
							if (elementsEqualIncludingValues(left, right, false, true))
								description|= PSEUDO_CONFLICT;
						}
					}
				}
			}
		} else {	// two way compare ignores ancestor
			if (left == null) {
				if (right == null) {
					Assert.isTrue(false);
					// shouldn't happen
				} else {
					description= ADDITION;
				}
			} else {
				if (right == null) {
					description= DELETION;
				} else {
					if (! elementsEqualIncludingValues(left, right, false, false))
						description= CHANGE;
				}
			}
		}
		int direction = description & DIRECTION_MASK;
		if (direction == CONFLICTING
				&& SynchronizedTreeViewer.differenceElementIsGraphical(left)) {
			// consider all graphical changes as non-conflicting for now
			return Differencer.RIGHT + Differencer.CHANGE;
		}
		return description;
	}

	private boolean elementsEqualIncludingValues(Object left, Object right,
			boolean excludeLocationComparison, boolean includeChildren) {
		if (!elementsEqual(left, right)) {
			return false;
		}
		ComparableTreeObject leftComparable = contentProvider
				.getComparableTreeObject(left);
		ComparableTreeObject rightComparable = contentProvider
				.getComparableTreeObject(right);
		boolean result = leftComparable.treeItemValueEquals(rightComparable);
		if (includeChildren && result) {
			result = leftComparable
					.treeItemValueEqualsIncludingChildren(rightComparable);
		}
		if(result && !excludeLocationComparison && !leftComparable.ignoreOrdering()) {
			// check the location as well
			int leftLocation = getLocationOfElement(
					contentProvider.getParent(left), left,
					contentProvider.getParent(right), contentProvider);
			int rightLocation = getLocationOfElement(
					contentProvider.getParent(right), right,
					contentProvider.getParent(left), contentProvider);
			if(leftLocation != rightLocation) {
				return false;
			}
		}
		return result;
	}

	public boolean elementsEqual(Object element1, Object element2) {
		if (element1 == null && element2 != null) {
			return false;
		}
		if (element1 != null && element2 == null) {
			return false;
		}
		if (element1 == null && element2 == null) {
			return true;
		}
		return contentProvider.getComparableTreeObject(element1).equals(
				contentProvider.getComparableTreeObject(element2));
	}

	static Object locateElementInOtherVersion(Object parent, Object object, ITreeDifferencerProvider contentProvider, Object[] rootElements) {
		Object[] children = contentProvider.getChildren(parent);
		if(parent == null) {
			List<Object> roots = new ArrayList<Object>();
			if(rootElements != null) {
				for(Object rootElement : rootElements) {
					roots.add(contentProvider.getComparableTreeObject(rootElement));
				}
			}
			children = roots.toArray(new Object[roots.size()]);
		}
		for (int i = 0; i < children.length; i++) {
			if (children[i].equals(object)) {
				return children[i];
			}
		}
		return null;
	}
	
	public void addDifferenceToMap(Object key, TreeDifference difference,
			boolean left) {
		HashMap<Object, List<TreeDifference>> differenceMap = leftDifferenceMap;
		if (!left) {
			differenceMap = rightDifferenceMap;
		}
		List<TreeDifference> differences = differenceMap.get(key);
		if (differences == null) {
			differences = new ArrayList<TreeDifference>(5);
		}
		differences.add(difference);
		differenceMap.put(key, differences);
	}

	public void refresh() {
		leftDifferenceMap.clear();
		rightDifferenceMap.clear();
		performDifferencing();
	}

	public void removeDifferences(Object key, boolean left) {
		if (left) {
			leftDifferenceMap.remove(key);
		} else {
			rightDifferenceMap.remove(key);
		}
	}

	public List<TreeDifference> getLeftDifferences() {
		List<TreeDifference> differences = new ArrayList<TreeDifference>();
		Set<Object> keySet = leftDifferenceMap.keySet();
		for (Object key : keySet) {
			List<TreeDifference> set = leftDifferenceMap.get(key);
			if(set != null) {
				differences.addAll(set);
			}
		}
		return differences;
	}

	public List<TreeDifference> getRightDifferences() {
		List<TreeDifference> differences = new ArrayList<TreeDifference>();
		Set<Object> keySet = rightDifferenceMap.keySet();
		for (Object key : keySet) {
			List<TreeDifference> set = rightDifferenceMap.get(key);
			if(set != null) {
				differences.addAll(set);
			}
		}
		return differences;
	}

	public List<TreeDifference> getDifferences(Object data, boolean left) {
		List<TreeDifference> differences = leftDifferenceMap.get(data);
		if (!left) {
			differences = rightDifferenceMap.get(data);
		}
		if (differences == null) {
			return Collections.emptyList();
		}
		return differences;
	}

	public void dipose() {
		instances.remove(input);
	}

	public TreeDifference getNextDifference(TreeDifference difference) {
		List<TreeDifference> leftDifferences = getLeftDifferences();
		if (difference != null) {
			int index = leftDifferences.indexOf(difference);
			if (index + 1 == leftDifferences.size()) {
				return null;
			}
			return leftDifferences.get(index + 1);
		} else {
			if (leftDifferences.isEmpty()) {
				return null;
			}
			return leftDifferences.get(0);
		}
	}

	public TreeDifference getPreviousDifference(TreeDifference difference) {
		List<TreeDifference> leftDifferences = getLeftDifferences();
		if (difference != null) {
			int index = leftDifferences.indexOf(difference);
			if (index == 0) {
				return null;
			}
			return leftDifferences.get(index - 1);
		} else {
			return null;
		}
	}

	public TreeDifference getLastDifference() {
		List<TreeDifference> leftDifferences = getLeftDifferences();
		if (leftDifferences.isEmpty()) {
			return null;
		}
		return leftDifferences.get(leftDifferences.size() - 1);
	}

	public void setElements(NonRootModelElement[] leftRoots,
			NonRootModelElement[] rightRoots,
			NonRootModelElement[] ancestorRoots) {
		left = leftRoots;
		right = rightRoots;
		ancestor = ancestorRoots;
	}

	public static TreeDifferencer getInstance(Object left) {
		return instances.get(left);
	}

	public void setIsThreeWay(boolean isThreeWay) {
		threeWay = isThreeWay;
	}

}
