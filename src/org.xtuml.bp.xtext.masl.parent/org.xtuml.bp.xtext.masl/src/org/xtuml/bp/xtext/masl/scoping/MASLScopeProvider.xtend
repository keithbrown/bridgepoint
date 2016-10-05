/*
 * generated by Xtext 2.9.2
 */
package org.xtuml.bp.xtext.masl.scoping

import com.google.inject.Inject
import java.util.List
import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EReference
import org.eclipse.xtext.resource.impl.ResourceDescriptionsProvider
import org.eclipse.xtext.scoping.IScope
import org.xtuml.bp.xtext.masl.MASLExtensions
import org.xtuml.bp.xtext.masl.masl.AssocRelationshipDefinition
import org.xtuml.bp.xtext.masl.masl.AttributeReferential
import org.xtuml.bp.xtext.masl.masl.CreateExpression
import org.xtuml.bp.xtext.masl.masl.GenerateStatement
import org.xtuml.bp.xtext.masl.masl.MaslPackage
import org.xtuml.bp.xtext.masl.masl.ObjectDeclaration
import org.xtuml.bp.xtext.masl.masl.ObjectDefinition
import org.xtuml.bp.xtext.masl.masl.RegularRelationshipDefinition
import org.xtuml.bp.xtext.masl.masl.RelationshipNavigation
import org.xtuml.bp.xtext.masl.masl.SimpleFeatureCall
import org.xtuml.bp.xtext.masl.masl.SubtypeRelationshipDefinition
import org.xtuml.bp.xtext.masl.masl.TerminatorDefinition
import org.xtuml.bp.xtext.masl.masl.TerminatorOperationCall
import org.xtuml.bp.xtext.masl.masl.TransitionOption
import org.xtuml.bp.xtext.masl.masl.TransitionRow

import static org.eclipse.xtext.scoping.Scopes.*

import static extension org.eclipse.xtext.EcoreUtil2.*

/**
 * This class contains custom scoping description.
 * 
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#scoping
 * on how and when to use it.
 */
class MASLScopeProvider extends AbstractMASLScopeProvider {

	@Inject extension MaslPackage 
	
	@Inject extension MASLExtensions
	
	@Inject ResourceDescriptionsProvider resourceDescriptionsProvider

	override getScope(EObject context, EReference reference) {
		switch reference {
			case generateStatement_Event: {
				if(context instanceof GenerateStatement) 
					return createObjectScope(context.object, [events])
			}
			case createArgument_CurrentState: {
				val contextObject = context.getContainerOfType(CreateExpression)?.object
				if(contextObject != null) 
					return createObjectScope(contextObject, [states])				
			}
			case createArgument_Attribute: {
				val contextObject = context.getContainerOfType(CreateExpression)?.object
				if(contextObject != null) 
					return createObjectScope(contextObject, [attributes])				
			}
			case attributeReferential_Attribute: {
				if(context instanceof AttributeReferential) 
					return createObjectScope(context.referredObject, [attributes])
			}
			case generateStatement_Event: {
				if(context instanceof GenerateStatement) 
					return createObjectScope(context.object, [events])
			}
			case transitionRow_Start: {
				if(context instanceof TransitionRow) 
					return createObjectScope(context.getContainerOfType(ObjectDefinition), [states])
			}
			case transitionOption_EndState: {
				if(context instanceof TransitionOption) 
					return createObjectScope(context.getContainerOfType(ObjectDefinition), [states])		
			}
			case terminatorOperationCall_TerminalOperation: {
				if(context instanceof TerminatorOperationCall) {
					val receiver = context?.receiver
					if(receiver instanceof SimpleFeatureCall) {
						val feature = receiver.feature
						if(feature instanceof TerminatorDefinition) {
							return scopeFor(feature.operations)		
						}						
					}
				} 
			}
			case relationshipNavigation_ObjectOrRole: {
				if(context instanceof RelationshipNavigation) {
					val relationShip = context.relationship
					switch relationShip {
						RegularRelationshipDefinition:
							return scopeFor(#{relationShip.forwards, relationShip.backwards,
								relationShip.forwards.from, relationShip.forwards.to, 
								relationShip.backwards.from, relationShip.backwards.to
							})
						AssocRelationshipDefinition:
							return scopeFor(#{relationShip.forwards, relationShip.backwards,
								relationShip.forwards.from, relationShip.forwards.to, 
								relationShip.backwards.from, relationShip.backwards.to,
								relationShip.object
							})
						SubtypeRelationshipDefinition:
							return scopeFor(relationShip.subtypes)
							
					}
 				}
			}
			case relationshipNavigation_Object: {
				if(context instanceof RelationshipNavigation) {
					val relationShip = context.relationship
					switch relationShip {
						RegularRelationshipDefinition:
							return scopeFor(#{
								relationShip.forwards.from, relationShip.forwards.to, 
								relationShip.backwards.from, relationShip.backwards.to
							})
						AssocRelationshipDefinition:
							return scopeFor(#{
								relationShip.forwards.from, relationShip.forwards.to, 
								relationShip.backwards.from, relationShip.backwards.to
							})
						SubtypeRelationshipDefinition:
							return scopeFor(relationShip.subtypes)
					}
 				}
			}
		}
		super.getScope(context, reference)
	}
	
	private def <T extends EObject> createObjectScope(ObjectDefinition object, (ObjectDefinition)=>List<T> reference) {
		if(object == null || object.eIsProxy)
			return IScope.NULLSCOPE
		val index = resourceDescriptionsProvider.getResourceDescriptions(object.eResource)
		scopeFor(object
			.getAllSupertypes(index)
			.map[reference.apply(it)]
			.flatten)
	}

	private def <T extends EObject> createObjectScope(ObjectDeclaration object, (ObjectDefinition)=>List<T> reference) {
		if(object == null || object.eIsProxy)
			return IScope.NULLSCOPE
		val index = resourceDescriptionsProvider.getResourceDescriptions(object.eResource)
		val definition = object.getObjectDefinition(index)
		scopeFor(definition
			.getAllSupertypes(index)
			.map[reference.apply(it)]
			.flatten)
	}
}