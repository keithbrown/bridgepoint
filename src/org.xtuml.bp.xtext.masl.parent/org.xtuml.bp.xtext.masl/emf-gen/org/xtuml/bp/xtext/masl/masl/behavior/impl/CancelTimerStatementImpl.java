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
import org.xtuml.bp.xtext.masl.masl.behavior.CancelTimerStatement;
import org.xtuml.bp.xtext.masl.masl.behavior.Expression;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Cancel Timer Statement</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.xtuml.bp.xtext.masl.masl.behavior.impl.CancelTimerStatementImpl#getTimerId <em>Timer Id</em>}</li>
 * </ul>
 *
 * @generated
 */
public class CancelTimerStatementImpl extends StatementImpl implements CancelTimerStatement {
	/**
	 * The cached value of the '{@link #getTimerId() <em>Timer Id</em>}' containment reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @see #getTimerId()
	 * @generated
	 * @ordered
	 */
	protected Expression timerId;

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	protected CancelTimerStatementImpl() {
		super();
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	protected EClass eStaticClass() {
		return BehaviorPackage.Literals.CANCEL_TIMER_STATEMENT;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public Expression getTimerId() {
		return timerId;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public NotificationChain basicSetTimerId(Expression newTimerId, NotificationChain msgs) {
		Expression oldTimerId = timerId;
		timerId = newTimerId;
		if (eNotificationRequired()) {
			ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, BehaviorPackage.CANCEL_TIMER_STATEMENT__TIMER_ID, oldTimerId, newTimerId);
			if (msgs == null) msgs = notification; else msgs.add(notification);
		}
		return msgs;
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	public void setTimerId(Expression newTimerId) {
		if (newTimerId != timerId) {
			NotificationChain msgs = null;
			if (timerId != null)
				msgs = ((InternalEObject)timerId).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - BehaviorPackage.CANCEL_TIMER_STATEMENT__TIMER_ID, null, msgs);
			if (newTimerId != null)
				msgs = ((InternalEObject)newTimerId).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - BehaviorPackage.CANCEL_TIMER_STATEMENT__TIMER_ID, null, msgs);
			msgs = basicSetTimerId(newTimerId, msgs);
			if (msgs != null) msgs.dispatch();
		}
		else if (eNotificationRequired())
			eNotify(new ENotificationImpl(this, Notification.SET, BehaviorPackage.CANCEL_TIMER_STATEMENT__TIMER_ID, newTimerId, newTimerId));
	}

	/**
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @generated
	 */
	@Override
	public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
		switch (featureID) {
			case BehaviorPackage.CANCEL_TIMER_STATEMENT__TIMER_ID:
				return basicSetTimerId(null, msgs);
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
			case BehaviorPackage.CANCEL_TIMER_STATEMENT__TIMER_ID:
				return getTimerId();
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
			case BehaviorPackage.CANCEL_TIMER_STATEMENT__TIMER_ID:
				setTimerId((Expression)newValue);
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
			case BehaviorPackage.CANCEL_TIMER_STATEMENT__TIMER_ID:
				setTimerId((Expression)null);
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
			case BehaviorPackage.CANCEL_TIMER_STATEMENT__TIMER_ID:
				return timerId != null;
		}
		return super.eIsSet(featureID);
	}

} //CancelTimerStatementImpl
