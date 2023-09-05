Profile: DSUBm_SubscriptionTopic_DocumentReference_PatientDependent
Parent: SubscriptionTopic
Id: DSUBm-SubscriptionTopic
Title:       "DocumentReference PatientDependent SubscriptionTopic"
Description:  "Resource SubscriptionTopic for DSUBm profile for DocumentReference Patient Dependent 
- the element resourceTrigger.resource shall be a DocumentReference resource
- the element canFilterBy shall have DocumentReference.patient as search parameter
"
* obeys DSUBm-trigger
* resourceTrigger.resource = "http://hl7.org/fhir/StructureDefinition/DocumentReference"
* resourceTrigger.fhirPathCriteria 0..0
* eventTrigger 0..0
// at least one canfilterBy for the 
* canFilterBy obeys DSUBm-PatientDependentRule

Invariant: DSUBm-PatientDependentRule
Severity: #error
Description: "SHALL have at least one canfilterBy for DocumentReference with filterParameter = 'patient' "
Expression: "canFilterBy.where(resource='DocumentReference').select(filterParameter = 'patient').allFalse()"
