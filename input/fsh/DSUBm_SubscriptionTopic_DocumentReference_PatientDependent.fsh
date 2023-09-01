Profile: DSUBm_SubscriptionTopic_DocumentReference_PatientDependent
Parent: DSUBm_SubscriptionTopic_DocumentReference_MultiPatient
Id: DSUBm-SubscriptionTopic
Title:       "DocumentReference Patient Dependent SubscriptionTopic"
Description:  "Resource SubscriptionTopic for DSUBm profile for DocumentReference Patient Dependent 
- the element resourceTrigger.resource shall be a DocumentReference resource
- the element canFilterBy shall have patient as search parameter
"
* resourceTrigger.resource = "http://hl7.org/fhir/StructureDefinition/DocumentReference"
// at least one canfilterBy for the 
* canFilterBy obeys PatientDependentRule
// * canFilterBy[resource = 'DocumentReference' and  resource.filterParameter = 'patient'] 1..*
// * canFilterBy.where(resource='DocumentReference').select(filterParameter = 'patient').anyTrue()  

Invariant: PatientDependentRule
Severity: #error
Description: "SHALL have at least one canfilterBy for DocumentReference with filterParameter = 'patient' "
Expression: "canFilterBy.where(resource='DocumentReference').select(filterParameter = 'patient').anyTrue()"
