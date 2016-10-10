/**
 * generated by Xtext 2.9.2
 */
package org.xtuml.bp.xtext.masl.masl.behavior.impl;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;

import org.xtuml.bp.xtext.masl.masl.behavior.BehaviorPackage;
import org.xtuml.bp.xtext.masl.masl.behavior.Expression;
import org.xtuml.bp.xtext.masl.masl.behavior.NavigateExpression;
import org.xtuml.bp.xtext.masl.masl.behavior.SortOrder;

import org.xtuml.bp.xtext.masl.masl.structure.RelationshipNavigation;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Navigate Expression</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.xtuml.bp.xtext.masl.masl.behavior.impl.NavigateExpressionImpl#getLhs <em>Lhs</em>}</li>
 *   <li>{@link org.xtuml.bp.xtext.masl.masl.behavior.impl.NavigateExpressionImpl#getNavigation <em>Navigation</em>}</li>
 *   <li>{@link org.xtuml.bp.xtext.masl.masl.behavior.impl.NavigateExpressionImpl#getWhere <em>Where</em>}</li>
 *   <li>{@link org.xtuml.bp.xtext.masl.masl.behavior.impl.NavigateExpressionImpl#getRhs <em>Rhs</em>}</li>
 *   <li>{@link org.xtuml.bp.xtext.masl.masl.behavior.impl.NavigateExpressionImpl#getRelationship <em>Relationship</em>}</li>
 *   <li>{@link org.xtuml.bp.xtext.masl.masl.behavior.impl.NavigateExpressionImpl#getOrder <em>Order</em>}</li>
 *   <li>{@link org.xtuml.bp.xtext.masl.masl.behavior.impl.NavigateExpressionImpl#getReverseOrder <em>Reverse Order</em>}</li>
 * </ul>
 *
 * @generated
 */
public class NavigateExpressionImpl extends ExpressionImpl implements NavigateExpression {
	/**
	 * The cached value of the '{@link #getLhs() <em>Lhs</em>}' containment reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getLhs()
	 * @generated
	 * @ordered
	 */
	protected Expression lhs;

	/**
	 * The cached value of the '{@link #getNavigation() <em>Navigation</em>}' containment reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getNavigation()
	 * @generated
	 * @ordered
	 */
	protected RelationshipNavigation navigation;

	/**
	 * The cached value of the '{@link #getWhere() <em>Where</em>}' containment reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getWhere()
	 * @generated
	 * @ordered
	 */
	protected Expression where;

	/**
	 * The cached value of the '{@link #getRhs() <em>Rhs</em>}' containment reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getRhs()
	 * @generated
	 * @ordered
	 */
	protected Expression rhs;

	/**
	 * The cached value of the '{@link #getRelationship() <em>Relationship</em>}' containment reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getRelationship()
	 * @generated
	 * @ordered
	 */
	protected RelationshipNavigation relationship;

	/**
	 * The cached value of the '{@link #getOrder() <em>Order</em>}' containment reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getOrder()
	 * @generated
	 * @ordered
	 */
	protected SortOrder order;

	/**
	 * The cached value of the '{@link #getReverseOrder() <em>Reverse Order</em>}' containment reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getReverseOrder()
	 * @generated
	 * @ordered
	 */
	protected SortOrder reverseOrder;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected NavigateExpressionImpl() {
		super();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	protected EClass eStaticClass() {
		return BehaviorPackage.Literals.NAVIGATE_EXPRESSION;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Expression getLhs() {
		return lhs;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public NotificationChain basicSetLhs(Expression newLhs, NotificationChain msgs) {
		Expression oldLhs = lhs;
		lhs = newLhs;
		if (eNotificationRequired()) {
			ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, BehaviorPackage.NAVIGATE_EXPRESSION__LHS, oldLhs, newLhs);
			if (msgs == null) msgs = notification; else msgs.add(notification);
		}
		return msgs;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public void setLhs(Expression newLhs) {
		if (newLhs != lhs) {
			NotificationChain msgs = null;
			if (lhs != null)
				msgs = ((InternalEObject)lhs).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - BehaviorPackage.NAVIGATE_EXPRESSION__LHS, null, msgs);
			if (newLhs != null)
				msgs = ((InternalEObject)newLhs).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - BehaviorPackage.NAVIGATE_EXPRESSION__LHS, null, msgs);
			msgs = basicSetLhs(newLhs, msgs);
			if (msgs != null) msgs.dispatch();
		}
		else if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, BehaviorPackage.NAVIGATE_EXPRESSION__LHS, newLhs, newLhs));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public RelationshipNavigation getNavigation() {
		return navigation;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public NotificationChain basicSetNavigation(RelationshipNavigation newNavigation, NotificationChain msgs) {
		RelationshipNavigation oldNavigation = navigation;
		navigation = newNavigation;
		if (eNotificationRequired()) {
			ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, BehaviorPackage.NAVIGATE_EXPRESSION__NAVIGATION, oldNavigation, newNavigation);
			if (msgs == null) msgs = notification; else msgs.add(notification);
		}
		return msgs;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public void setNavigation(RelationshipNavigation newNavigation) {
		if (newNavigation != navigation) {
			NotificationChain msgs = null;
			if (navigation != null)
				msgs = ((InternalEObject)navigation).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - BehaviorPackage.NAVIGATE_EXPRESSION__NAVIGATION, null, msgs);
			if (newNavigation != null)
				msgs = ((InternalEObject)newNavigation).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - BehaviorPackage.NAVIGATE_EXPRESSION__NAVIGATION, null, msgs);
			msgs = basicSetNavigation(newNavigation, msgs);
			if (msgs != null) msgs.dispatch();
		}
		else if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, BehaviorPackage.NAVIGATE_EXPRESSION__NAVIGATION, newNavigation, newNavigation));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Expression getWhere() {
		return where;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public NotificationChain basicSetWhere(Expression newWhere, NotificationChain msgs) {
		Expression oldWhere = where;
		where = newWhere;
		if (eNotificationRequired()) {
			ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, BehaviorPackage.NAVIGATE_EXPRESSION__WHERE, oldWhere, newWhere);
			if (msgs == null) msgs = notification; else msgs.add(notification);
		}
		return msgs;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public void setWhere(Expression newWhere) {
		if (newWhere != where) {
			NotificationChain msgs = null;
			if (where != null)
				msgs = ((InternalEObject)where).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - BehaviorPackage.NAVIGATE_EXPRESSION__WHERE, null, msgs);
			if (newWhere != null)
				msgs = ((InternalEObject)newWhere).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - BehaviorPackage.NAVIGATE_EXPRESSION__WHERE, null, msgs);
			msgs = basicSetWhere(newWhere, msgs);
			if (msgs != null) msgs.dispatch();
		}
		else if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, BehaviorPackage.NAVIGATE_EXPRESSION__WHERE, newWhere, newWhere));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Expression getRhs() {
		return rhs;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public NotificationChain basicSetRhs(Expression newRhs, NotificationChain msgs) {
		Expression oldRhs = rhs;
		rhs = newRhs;
		if (eNotificationRequired()) {
			ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, BehaviorPackage.NAVIGATE_EXPRESSION__RHS, oldRhs, newRhs);
			if (msgs == null) msgs = notification; else msgs.add(notification);
		}
		return msgs;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public void setRhs(Expression newRhs) {
		if (newRhs != rhs) {
			NotificationChain msgs = null;
			if (rhs != null)
				msgs = ((InternalEObject)rhs).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - BehaviorPackage.NAVIGATE_EXPRESSION__RHS, null, msgs);
			if (newRhs != null)
				msgs = ((InternalEObject)newRhs).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - BehaviorPackage.NAVIGATE_EXPRESSION__RHS, null, msgs);
			msgs = basicSetRhs(newRhs, msgs);
			if (msgs != null) msgs.dispatch();
		}
		else if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, BehaviorPackage.NAVIGATE_EXPRESSION__RHS, newRhs, newRhs));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public RelationshipNavigation getRelationship() {
		return relationship;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public NotificationChain basicSetRelationship(RelationshipNavigation newRelationship, NotificationChain msgs) {
		RelationshipNavigation oldRelationship = relationship;
		relationship = newRelationship;
		if (eNotificationRequired()) {
			ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, BehaviorPackage.NAVIGATE_EXPRESSION__RELATIONSHIP, oldRelationship, newRelationship);
			if (msgs == null) msgs = notification; else msgs.add(notification);
		}
		return msgs;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public void setRelationship(RelationshipNavigation newRelationship) {
		if (newRelationship != relationship) {
			NotificationChain msgs = null;
			if (relationship != null)
				msgs = ((InternalEObject)relationship).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - BehaviorPackage.NAVIGATE_EXPRESSION__RELATIONSHIP, null, msgs);
			if (newRelationship != null)
				msgs = ((InternalEObject)newRelationship).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - BehaviorPackage.NAVIGATE_EXPRESSION__RELATIONSHIP, null, msgs);
			msgs = basicSetRelationship(newRelationship, msgs);
			if (msgs != null) msgs.dispatch();
		}
		else if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, BehaviorPackage.NAVIGATE_EXPRESSION__RELATIONSHIP, newRelationship, newRelationship));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public SortOrder getOrder() {
		return order;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public NotificationChain basicSetOrder(SortOrder newOrder, NotificationChain msgs) {
		SortOrder oldOrder = order;
		order = newOrder;
		if (eNotificationRequired()) {
			ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, BehaviorPackage.NAVIGATE_EXPRESSION__ORDER, oldOrder, newOrder);
			if (msgs == null) msgs = notification; else msgs.add(notification);
		}
		return msgs;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public void setOrder(SortOrder newOrder) {
		if (newOrder != order) {
			NotificationChain msgs = null;
			if (order != null)
				msgs = ((InternalEObject)order).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - BehaviorPackage.NAVIGATE_EXPRESSION__ORDER, null, msgs);
			if (newOrder != null)
				msgs = ((InternalEObject)newOrder).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - BehaviorPackage.NAVIGATE_EXPRESSION__ORDER, null, msgs);
			msgs = basicSetOrder(newOrder, msgs);
			if (msgs != null) msgs.dispatch();
		}
		else if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, BehaviorPackage.NAVIGATE_EXPRESSION__ORDER, newOrder, newOrder));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public SortOrder getReverseOrder() {
		return reverseOrder;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public NotificationChain basicSetReverseOrder(SortOrder newReverseOrder, NotificationChain msgs) {
		SortOrder oldReverseOrder = reverseOrder;
		reverseOrder = newReverseOrder;
		if (eNotificationRequired()) {
			ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, BehaviorPackage.NAVIGATE_EXPRESSION__REVERSE_ORDER, oldReverseOrder, newReverseOrder);
			if (msgs == null) msgs = notification; else msgs.add(notification);
		}
		return msgs;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public void setReverseOrder(SortOrder newReverseOrder) {
		if (newReverseOrder != reverseOrder) {
			NotificationChain msgs = null;
			if (reverseOrder != null)
				msgs = ((InternalEObject)reverseOrder).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - BehaviorPackage.NAVIGATE_EXPRESSION__REVERSE_ORDER, null, msgs);
			if (newReverseOrder != null)
				msgs = ((InternalEObject)newReverseOrder).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - BehaviorPackage.NAVIGATE_EXPRESSION__REVERSE_ORDER, null, msgs);
			msgs = basicSetReverseOrder(newReverseOrder, msgs);
			if (msgs != null) msgs.dispatch();
		}
		else if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, BehaviorPackage.NAVIGATE_EXPRESSION__REVERSE_ORDER, newReverseOrder, newReverseOrder));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
		switch (featureID) {
			case BehaviorPackage.NAVIGATE_EXPRESSION__LHS:
				return basicSetLhs(null, msgs);
			case BehaviorPackage.NAVIGATE_EXPRESSION__NAVIGATION:
				return basicSetNavigation(null, msgs);
			case BehaviorPackage.NAVIGATE_EXPRESSION__WHERE:
				return basicSetWhere(null, msgs);
			case BehaviorPackage.NAVIGATE_EXPRESSION__RHS:
				return basicSetRhs(null, msgs);
			case BehaviorPackage.NAVIGATE_EXPRESSION__RELATIONSHIP:
				return basicSetRelationship(null, msgs);
			case BehaviorPackage.NAVIGATE_EXPRESSION__ORDER:
				return basicSetOrder(null, msgs);
			case BehaviorPackage.NAVIGATE_EXPRESSION__REVERSE_ORDER:
				return basicSetReverseOrder(null, msgs);
		}
		return super.eInverseRemove(otherEnd, featureID, msgs);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public Object eGet(int featureID, boolean resolve, boolean coreType) {
		switch (featureID) {
			case BehaviorPackage.NAVIGATE_EXPRESSION__LHS:
				return getLhs();
			case BehaviorPackage.NAVIGATE_EXPRESSION__NAVIGATION:
				return getNavigation();
			case BehaviorPackage.NAVIGATE_EXPRESSION__WHERE:
				return getWhere();
			case BehaviorPackage.NAVIGATE_EXPRESSION__RHS:
				return getRhs();
			case BehaviorPackage.NAVIGATE_EXPRESSION__RELATIONSHIP:
				return getRelationship();
			case BehaviorPackage.NAVIGATE_EXPRESSION__ORDER:
				return getOrder();
			case BehaviorPackage.NAVIGATE_EXPRESSION__REVERSE_ORDER:
				return getReverseOrder();
		}
		return super.eGet(featureID, resolve, coreType);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void eSet(int featureID, Object newValue) {
		switch (featureID) {
			case BehaviorPackage.NAVIGATE_EXPRESSION__LHS:
				setLhs((Expression)newValue);
				return;
			case BehaviorPackage.NAVIGATE_EXPRESSION__NAVIGATION:
				setNavigation((RelationshipNavigation)newValue);
				return;
			case BehaviorPackage.NAVIGATE_EXPRESSION__WHERE:
				setWhere((Expression)newValue);
				return;
			case BehaviorPackage.NAVIGATE_EXPRESSION__RHS:
				setRhs((Expression)newValue);
				return;
			case BehaviorPackage.NAVIGATE_EXPRESSION__RELATIONSHIP:
				setRelationship((RelationshipNavigation)newValue);
				return;
			case BehaviorPackage.NAVIGATE_EXPRESSION__ORDER:
				setOrder((SortOrder)newValue);
				return;
			case BehaviorPackage.NAVIGATE_EXPRESSION__REVERSE_ORDER:
				setReverseOrder((SortOrder)newValue);
				return;
		}
		super.eSet(featureID, newValue);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public void eUnset(int featureID) {
		switch (featureID) {
			case BehaviorPackage.NAVIGATE_EXPRESSION__LHS:
				setLhs((Expression)null);
				return;
			case BehaviorPackage.NAVIGATE_EXPRESSION__NAVIGATION:
				setNavigation((RelationshipNavigation)null);
				return;
			case BehaviorPackage.NAVIGATE_EXPRESSION__WHERE:
				setWhere((Expression)null);
				return;
			case BehaviorPackage.NAVIGATE_EXPRESSION__RHS:
				setRhs((Expression)null);
				return;
			case BehaviorPackage.NAVIGATE_EXPRESSION__RELATIONSHIP:
				setRelationship((RelationshipNavigation)null);
				return;
			case BehaviorPackage.NAVIGATE_EXPRESSION__ORDER:
				setOrder((SortOrder)null);
				return;
			case BehaviorPackage.NAVIGATE_EXPRESSION__REVERSE_ORDER:
				setReverseOrder((SortOrder)null);
				return;
		}
		super.eUnset(featureID);
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public boolean eIsSet(int featureID) {
		switch (featureID) {
			case BehaviorPackage.NAVIGATE_EXPRESSION__LHS:
				return lhs != null;
			case BehaviorPackage.NAVIGATE_EXPRESSION__NAVIGATION:
				return navigation != null;
			case BehaviorPackage.NAVIGATE_EXPRESSION__WHERE:
				return where != null;
			case BehaviorPackage.NAVIGATE_EXPRESSION__RHS:
				return rhs != null;
			case BehaviorPackage.NAVIGATE_EXPRESSION__RELATIONSHIP:
				return relationship != null;
			case BehaviorPackage.NAVIGATE_EXPRESSION__ORDER:
				return order != null;
			case BehaviorPackage.NAVIGATE_EXPRESSION__REVERSE_ORDER:
				return reverseOrder != null;
		}
		return super.eIsSet(featureID);
	}

} //NavigateExpressionImpl
