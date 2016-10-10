/**
 * generated by Xtext 2.9.2
 */
package org.xtuml.bp.xtext.masl.masl.types;

import org.xtuml.bp.xtext.masl.masl.structure.AbstractNamed;
import org.xtuml.bp.xtext.masl.masl.structure.Pragmatized;
import org.xtuml.bp.xtext.masl.masl.structure.Visibility;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Type Forward Declaration</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.xtuml.bp.xtext.masl.masl.types.TypeForwardDeclaration#getVisibility <em>Visibility</em>}</li>
 * </ul>
 *
 * @see org.xtuml.bp.xtext.masl.masl.types.TypesPackage#getTypeForwardDeclaration()
 * @model
 * @generated
 */
public interface TypeForwardDeclaration extends AbstractNamed, Pragmatized {
	/**
	 * Returns the value of the '<em><b>Visibility</b></em>' attribute.
	 * The literals are from the enumeration {@link org.xtuml.bp.xtext.masl.masl.structure.Visibility}.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Visibility</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Visibility</em>' attribute.
	 * @see org.xtuml.bp.xtext.masl.masl.structure.Visibility
	 * @see #setVisibility(Visibility)
	 * @see org.xtuml.bp.xtext.masl.masl.types.TypesPackage#getTypeForwardDeclaration_Visibility()
	 * @model unique="false"
	 * @generated
	 */
	Visibility getVisibility();

	/**
	 * Sets the value of the '{@link org.xtuml.bp.xtext.masl.masl.types.TypeForwardDeclaration#getVisibility <em>Visibility</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Visibility</em>' attribute.
	 * @see org.xtuml.bp.xtext.masl.masl.structure.Visibility
	 * @see #getVisibility()
	 * @generated
	 */
	void setVisibility(Visibility value);

} // TypeForwardDeclaration
