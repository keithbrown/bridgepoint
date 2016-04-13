/**
 * generated by Xtext 2.9.1
 */
package org.xtuml.bp.ui.xtext.myDsl;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>elsif Block</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.xtuml.bp.ui.xtext.myDsl.elsifBlock#getC <em>C</em>}</li>
 *   <li>{@link org.xtuml.bp.ui.xtext.myDsl.elsifBlock#getS <em>S</em>}</li>
 * </ul>
 *
 * @see org.xtuml.bp.ui.xtext.myDsl.MyDslPackage#getelsifBlock()
 * @model
 * @generated
 */
public interface elsifBlock extends EObject
{
  /**
   * Returns the value of the '<em><b>C</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>C</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>C</em>' containment reference.
   * @see #setC(condition)
   * @see org.xtuml.bp.ui.xtext.myDsl.MyDslPackage#getelsifBlock_C()
   * @model containment="true"
   * @generated
   */
  condition getC();

  /**
   * Sets the value of the '{@link org.xtuml.bp.ui.xtext.myDsl.elsifBlock#getC <em>C</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>C</em>' containment reference.
   * @see #getC()
   * @generated
   */
  void setC(condition value);

  /**
   * Returns the value of the '<em><b>S</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <p>
   * If the meaning of the '<em>S</em>' containment reference isn't clear,
   * there really should be more of a description here...
   * </p>
   * <!-- end-user-doc -->
   * @return the value of the '<em>S</em>' containment reference.
   * @see #setS(statementList)
   * @see org.xtuml.bp.ui.xtext.myDsl.MyDslPackage#getelsifBlock_S()
   * @model containment="true"
   * @generated
   */
  statementList getS();

  /**
   * Sets the value of the '{@link org.xtuml.bp.ui.xtext.myDsl.elsifBlock#getS <em>S</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>S</em>' containment reference.
   * @see #getS()
   * @generated
   */
  void setS(statementList value);

} // elsifBlock