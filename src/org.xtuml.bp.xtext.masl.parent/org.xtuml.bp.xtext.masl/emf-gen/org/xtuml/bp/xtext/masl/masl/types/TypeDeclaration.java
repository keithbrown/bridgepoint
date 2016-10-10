/**
 * generated by Xtext 2.9.2
 */
package org.xtuml.bp.xtext.masl.masl.types;

import org.xtuml.bp.xtext.masl.masl.structure.AbstractFeature;
import org.xtuml.bp.xtext.masl.masl.structure.Pragmatized;
import org.xtuml.bp.xtext.masl.masl.structure.Visibility;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Type Declaration</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.xtuml.bp.xtext.masl.masl.types.TypeDeclaration#getVisibility <em>Visibility</em>}</li>
 *   <li>{@link org.xtuml.bp.xtext.masl.masl.types.TypeDeclaration#getDefinition <em>Definition</em>}</li>
 * </ul>
 *
 * @see org.xtuml.bp.xtext.masl.masl.types.TypesPackage#getTypeDeclaration()
 * @model
 * @generated
 */
public interface TypeDeclaration extends Pragmatized, AbstractFeature {
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
	 * @see org.xtuml.bp.xtext.masl.masl.types.TypesPackage#getTypeDeclaration_Visibility()
	 * @model unique="false"
	 * @generated
	 */
	Visibility getVisibility();

	/**
	 * Sets the value of the '{@link org.xtuml.bp.xtext.masl.masl.types.TypeDeclaration#getVisibility <em>Visibility</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Visibility</em>' attribute.
	 * @see org.xtuml.bp.xtext.masl.masl.structure.Visibility
	 * @see #getVisibility()
	 * @generated
	 */
	void setVisibility(Visibility value);

	/**
	 * Returns the value of the '<em><b>Definition</b></em>' containment reference.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Definition</em>' containment reference isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Definition</em>' containment reference.
	 * @see #setDefinition(AbstractTypeDefinition)
	 * @see org.xtuml.bp.xtext.masl.masl.types.TypesPackage#getTypeDeclaration_Definition()
	 * @model containment="true"
	 * @generated
	 */
	AbstractTypeDefinition getDefinition();

	/**
	 * Sets the value of the '{@link org.xtuml.bp.xtext.masl.masl.types.TypeDeclaration#getDefinition <em>Definition</em>}' containment reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Definition</em>' containment reference.
	 * @see #getDefinition()
	 * @generated
	 */
	void setDefinition(AbstractTypeDefinition value);

} // TypeDeclaration
