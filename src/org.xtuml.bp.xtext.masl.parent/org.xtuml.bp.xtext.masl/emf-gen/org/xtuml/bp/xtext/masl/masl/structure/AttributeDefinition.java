/**
 * generated by Xtext 2.9.2
 */
package org.xtuml.bp.xtext.masl.masl.structure;

import org.eclipse.emf.common.util.EList;

import org.xtuml.bp.xtext.masl.masl.behavior.ConstExpression;

import org.xtuml.bp.xtext.masl.masl.types.AbstractTypeReference;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Attribute Definition</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.xtuml.bp.xtext.masl.masl.structure.AttributeDefinition#isPreferred <em>Preferred</em>}</li>
 *   <li>{@link org.xtuml.bp.xtext.masl.masl.structure.AttributeDefinition#isUnique <em>Unique</em>}</li>
 *   <li>{@link org.xtuml.bp.xtext.masl.masl.structure.AttributeDefinition#getReferentials <em>Referentials</em>}</li>
 *   <li>{@link org.xtuml.bp.xtext.masl.masl.structure.AttributeDefinition#getType <em>Type</em>}</li>
 *   <li>{@link org.xtuml.bp.xtext.masl.masl.structure.AttributeDefinition#getDefaultValue <em>Default Value</em>}</li>
 * </ul>
 *
 * @see org.xtuml.bp.xtext.masl.masl.structure.StructurePackage#getAttributeDefinition()
 * @model
 * @generated
 */
public interface AttributeDefinition extends AbstractNamed, Pragmatized, AbstractFeature {
	/**
	 * Returns the value of the '<em><b>Preferred</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Preferred</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Preferred</em>' attribute.
	 * @see #setPreferred(boolean)
	 * @see org.xtuml.bp.xtext.masl.masl.structure.StructurePackage#getAttributeDefinition_Preferred()
	 * @model unique="false"
	 * @generated
	 */
	boolean isPreferred();

	/**
	 * Sets the value of the '{@link org.xtuml.bp.xtext.masl.masl.structure.AttributeDefinition#isPreferred <em>Preferred</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Preferred</em>' attribute.
	 * @see #isPreferred()
	 * @generated
	 */
	void setPreferred(boolean value);

	/**
	 * Returns the value of the '<em><b>Unique</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Unique</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Unique</em>' attribute.
	 * @see #setUnique(boolean)
	 * @see org.xtuml.bp.xtext.masl.masl.structure.StructurePackage#getAttributeDefinition_Unique()
	 * @model unique="false"
	 * @generated
	 */
	boolean isUnique();

	/**
	 * Sets the value of the '{@link org.xtuml.bp.xtext.masl.masl.structure.AttributeDefinition#isUnique <em>Unique</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Unique</em>' attribute.
	 * @see #isUnique()
	 * @generated
	 */
	void setUnique(boolean value);

	/**
	 * Returns the value of the '<em><b>Referentials</b></em>' containment reference list.
	 * The list contents are of type {@link org.xtuml.bp.xtext.masl.masl.structure.RelationshipNavigation}.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Referentials</em>' containment reference list isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Referentials</em>' containment reference list.
	 * @see org.xtuml.bp.xtext.masl.masl.structure.StructurePackage#getAttributeDefinition_Referentials()
	 * @model containment="true"
	 * @generated
	 */
	EList<RelationshipNavigation> getReferentials();

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
	 * @see org.xtuml.bp.xtext.masl.masl.structure.StructurePackage#getAttributeDefinition_Type()
	 * @model containment="true"
	 * @generated
	 */
	AbstractTypeReference getType();

	/**
	 * Sets the value of the '{@link org.xtuml.bp.xtext.masl.masl.structure.AttributeDefinition#getType <em>Type</em>}' containment reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Type</em>' containment reference.
	 * @see #getType()
	 * @generated
	 */
	void setType(AbstractTypeReference value);

	/**
	 * Returns the value of the '<em><b>Default Value</b></em>' containment reference.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Default Value</em>' containment reference isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Default Value</em>' containment reference.
	 * @see #setDefaultValue(ConstExpression)
	 * @see org.xtuml.bp.xtext.masl.masl.structure.StructurePackage#getAttributeDefinition_DefaultValue()
	 * @model containment="true"
	 * @generated
	 */
	ConstExpression getDefaultValue();

	/**
	 * Sets the value of the '{@link org.xtuml.bp.xtext.masl.masl.structure.AttributeDefinition#getDefaultValue <em>Default Value</em>}' containment reference.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Default Value</em>' containment reference.
	 * @see #getDefaultValue()
	 * @generated
	 */
	void setDefaultValue(ConstExpression value);

} // AttributeDefinition
