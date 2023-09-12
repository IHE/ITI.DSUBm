Profile: DSUBm_SubscriptionTopic_DocumentReference_PatientDependent
Parent: SubscriptionTopic
Id: DSUBm-SubscriptionTopic
Title:       "DocumentReference PatientDependent SubscriptionTopic"
Description:  "Resource SubscriptionTopic for DSUBm profile for DocumentReference Patient Dependent 
- the element resourceTrigger.resource shall be a DocumentReference resource
- the element canFilterBy shall have DocumentReference.patient as search parameter
"
* obeys DSUBm-trigger
* obeys DSUBm-PatientDependentRule
* resourceTrigger.resource = "http://hl7.org/fhir/StructureDefinition/DocumentReference"
* resourceTrigger.fhirPathCriteria 0..0
* eventTrigger 0..0
// at least one canfilterBy for the patient
* canFilterBy 1..*
* canFilterBy.resource = "DocumentReference"

/* possible slice ???
(is it possible to differentiate canFilterBy for filterParameter = patient and filterParameter != patient)

* canFilterBy ^slicing.discriminator.type = #value
* canFilterBy ^slicing.discriminator.path = "filterParameter" 
* canFilterBy ^slicing.rules = #openAtEnd
* canFilterBy ^slicing.ordered = false
* canFilterBy ^slicing.description = "Slice value for canFilterBy.resource"
* canFilterBy contains
    patientDependentFilter 1..* MS 
* canFilterBy[patientDependentFilter].filterParameter = "patient"  
//* canFilterBy[otherFilter].filterParameter = not("patient")
*/

Invariant: DSUBm-PatientDependentRule
Severity: #error
Description: "SHALL have at least one canfilterBy for DocumentReference with filterParameter = 'patient' "
Expression: "canFilterBy.where(resource='DocumentReference').select(filterParameter = 'patient').anyTrue()"


