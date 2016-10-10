/**
 * generated by Xtext 2.9.2
 */
package org.xtuml.bp.xtext.masl.masl.types.impl;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;

import org.xtuml.bp.xtext.masl.masl.behavior.Expression;

import org.xtuml.bp.xtext.masl.masl.types.ConstrainedArrayTypeReference;
import org.xtuml.bp.xtext.masl.masl.types.TypeDeclaration;
import org.xtuml.bp.xtext.masl.masl.types.TypesPackage;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Constrained Array Type Reference</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.xtuml.bp.xtext.masl.masl.types.impl.ConstrainedArrayTypeReferenceImpl#getElementType <em>Element Type</em>}</li>
 *   <li>{@link org.xtuml.bp.xtext.masl.masl.types.impl.ConstrainedArrayTypeReferenceImpl#getConstraint <em>Constraint</em>}</li>
 * </ul>
 *
 * @generated
 */
public class ConstrainedArrayTypeReferenceImpl extends AbstractTypeReferenceImpl implements ConstrainedArrayTypeReference {
	/**
	 * The cached value of the '{@link #getElementType() <em>Element Type</em>}' reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getElementType()
	 * @generated
	 * @ordered
	 */
	protected TypeDeclaration elementType;

	/**
	 * The cached value of the '{@link #getConstraint() <em>Constraint</em>}' containment reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getConstraint()
	 * @generated
	 * @ordered
	 */
	protected Expression constraint;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected ConstrainedArrayTypeReferenceImpl() {
		super();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	protected EClass eStaticClass() {
		return TypesPackage.Literals.CONSTRAINED_ARRAY_TYPE_REFERENCE;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public TypeDeclaration getElementType() {
		if (elementType != null && elementType.eIsProxy()) {
			InternalEObject oldElementType = (InternalEObject)elementType;
			elementType = (TypeDeclaration)eResolveProxy(oldElementType);
			if (elementType != oldElementType) {
				if (eNotificationRequired())
					eNotify(new ENotificationImpl(this, Notification.RESOLVE, TypesPackage.CONSTRAINED_ARRAY_TYPE_REFERENCE__ELEMENT_TYPE, oldElementType, elementType));
			}
		}
		return elementType;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public TypeDeclaration basicGetElementType() {
		return elementType;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public void setElementType(TypeDeclaration newElementType) {
		TypeDeclaration oldElementType = elementType;
		elementType = newElementType;
		if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, TypesPackage.CONSTRAINED_ARRAY_TYPE_REFERENCE__ELEMENT_TYPE, oldElementType, elementType));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Expression getConstraint() {
		return constraint;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public NotificationChain basicSetConstraint(Expression newConstraint, NotificationChain msgs) {
		Expression oldConstraint = constraint;
		constraint = newConstraint;
		if (eNotificationRequired()) {
			ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, TypesPackage.CONSTRAINED_ARRAY_TYPE_REFERENCE__CONSTRAINT, oldConstraint, newConstraint);
			if (msgs == null) msgs = notification; else msgs.add(notification);
		}
		return msgs;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public void setConstraint(Expression newConstraint) {
		if (newConstraint != constraint) {
			NotificationChain msgs = null;
			if (constraint != null)
				msgs = ((InternalEObject)constraint).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - TypesPackage.CONSTRAINED_ARRAY_TYPE_REFERENCE__CONSTRAINT, null, msgs);
			if (newConstraint != null)
				msgs = ((InternalEObject)newConstraint).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - TypesPackage.CONSTRAINED_ARRAY_TYPE_REFERENCE__CONSTRAINT, null, msgs);
			msgs = basicSetConstraint(newConstraint, msgs);
			if (msgs != null) msgs.dispatch();
		}
		else if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, TypesPackage.CONSTRAINED_ARRAY_TYPE_REFERENCE__CONSTRAINT, newConstraint, newConstraint));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
		switch (featureID) {
			case TypesPackage.CONSTRAINED_ARRAY_TYPE_REFERENCE__CONSTRAINT:
				return basicSetConstraint(null, msgs);
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
			case TypesPackage.CONSTRAINED_ARRAY_TYPE_REFERENCE__ELEMENT_TYPE:
				if (resolve) return getElementType();
				return basicGetElementType();
			case TypesPackage.CONSTRAINED_ARRAY_TYPE_REFERENCE__CONSTRAINT:
				return getConstraint();
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
			case TypesPackage.CONSTRAINED_ARRAY_TYPE_REFERENCE__ELEMENT_TYPE:
				setElementType((TypeDeclaration)newValue);
				return;
			case TypesPackage.CONSTRAINED_ARRAY_TYPE_REFERENCE__CONSTRAINT:
				setConstraint((Expression)newValue);
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
			case TypesPackage.CONSTRAINED_ARRAY_TYPE_REFERENCE__ELEMENT_TYPE:
				setElementType((TypeDeclaration)null);
				return;
			case TypesPackage.CONSTRAINED_ARRAY_TYPE_REFERENCE__CONSTRAINT:
				setConstraint((Expression)null);
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
			case TypesPackage.CONSTRAINED_ARRAY_TYPE_REFERENCE__ELEMENT_TYPE:
				return elementType != null;
			case TypesPackage.CONSTRAINED_ARRAY_TYPE_REFERENCE__CONSTRAINT:
				return constraint != null;
		}
		return super.eIsSet(featureID);
	}

} //ConstrainedArrayTypeReferenceImpl