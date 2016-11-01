/**
 * generated by Xtext 2.9.2
 */
package org.xtuml.bp.xtext.masl.masl.structure;

import org.xtuml.bp.xtext.masl.masl.types.AbstractTypeReference;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Parameter</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.xtuml.bp.xtext.masl.masl.structure.Parameter#getMode <em>Mode</em>}</li>
 *   <li>{@link org.xtuml.bp.xtext.masl.masl.structure.Parameter#getType <em>Type</em>}</li>
 * </ul>
 *
 * @see org.xtuml.bp.xtext.masl.masl.structure.StructurePackage#getParameter()
 * @model
 * @generated
 */
public interface Parameter extends AbstractNamed, AbstractFeature {
	/**
	 * Returns the value of the '<em><b>Mode</b></em>' attribute.
	 * The literals are from the enumeration {@link org.xtuml.bp.xtext.masl.masl.structure.ParameterMode}.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Mode</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Mode</em>' attribute.
	 * @see org.xtuml.bp.xtext.masl.masl.structure.ParameterMode
	 * @see #setMode(ParameterMode)
	 * @see org.xtuml.bp.xtext.masl.masl.structure.StructurePackage#getParameter_Mode()
	 * @model unique="false"
	 * @generated
	 */
	ParameterMode getMode();

	/**
	 * Sets the value of the '{@link org.xtuml.bp.xtext.masl.masl.structure.Parameter#getMode <em>Mode</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Mode</em>' attribute.
	 * @see org.xtuml.bp.xtext.masl.masl.structure.ParameterMode
	 * @see #getMode()
	 * @generated
	 */
	void setMode(ParameterMode value);

	/**
	 * Returns the value of the '<em><b>Type</b></em>' containment reference.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Type</em>' containment reference isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Type</em>' containment reference.
	 * @see #setType(AbstractTypeReference)
	 * @see org.xtuml.bp.xtext.masl.masl.structure.StructurePackage#getParameter_Type()
	 * @model containment="true"
	 * @generated
	 */
	AbstractTypeReference getType();

	/**
	 * Sets the value of the '{@link org.xtuml.bp.xtext.masl.masl.structure.Parameter#getType <em>Type</em>}' containment reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Type</em>' containment reference.
	 * @see #getType()
	 * @generated
	 */
	void setType(AbstractTypeReference value);

} // Parameter
