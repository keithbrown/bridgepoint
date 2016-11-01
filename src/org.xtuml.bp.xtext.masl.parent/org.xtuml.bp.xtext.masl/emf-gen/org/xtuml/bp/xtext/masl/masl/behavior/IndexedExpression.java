/**
 * generated by Xtext 2.9.2
 */
package org.xtuml.bp.xtext.masl.masl.behavior;


/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Indexed Expression</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.xtuml.bp.xtext.masl.masl.behavior.IndexedExpression#getReceiver <em>Receiver</em>}</li>
 *   <li>{@link org.xtuml.bp.xtext.masl.masl.behavior.IndexedExpression#getBrackets <em>Brackets</em>}</li>
 * </ul>
 *
 * @see org.xtuml.bp.xtext.masl.masl.behavior.BehaviorPackage#getIndexedExpression()
 * @model
 * @generated
 */
public interface IndexedExpression extends Expression {
	/**
	 * Returns the value of the '<em><b>Receiver</b></em>' containment reference.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Receiver</em>' containment reference isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Receiver</em>' containment reference.
	 * @see #setReceiver(Expression)
	 * @see org.xtuml.bp.xtext.masl.masl.behavior.BehaviorPackage#getIndexedExpression_Receiver()
	 * @model containment="true"
	 * @generated
	 */
	Expression getReceiver();

	/**
	 * Sets the value of the '{@link org.xtuml.bp.xtext.masl.masl.behavior.IndexedExpression#getReceiver <em>Receiver</em>}' containment reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Receiver</em>' containment reference.
	 * @see #getReceiver()
	 * @generated
	 */
	void setReceiver(Expression value);

	/**
	 * Returns the value of the '<em><b>Brackets</b></em>' containment reference.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Brackets</em>' containment reference isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Brackets</em>' containment reference.
	 * @see #setBrackets(Expression)
	 * @see org.xtuml.bp.xtext.masl.masl.behavior.BehaviorPackage#getIndexedExpression_Brackets()
	 * @model containment="true"
	 * @generated
	 */
	Expression getBrackets();

	/**
	 * Sets the value of the '{@link org.xtuml.bp.xtext.masl.masl.behavior.IndexedExpression#getBrackets <em>Brackets</em>}' containment reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Brackets</em>' containment reference.
	 * @see #getBrackets()
	 * @generated
	 */
	void setBrackets(Expression value);

} // IndexedExpression
