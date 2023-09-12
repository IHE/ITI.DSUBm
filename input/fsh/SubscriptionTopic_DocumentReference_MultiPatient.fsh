Profile: DSUBm_SubscriptionTopic_DocumentReference_MultiPatient
Parent: SubscriptionTopic
Id: DSUBm-MultiPatient-SubscriptionTopic
Title:       "DocumentReference Multi-patient SubscriptionTopic"
Description:  "Resource SubscriptionTopic for DSUBm profile for DocumentReference without the indication of the patient
- the trigger shall use the resourceTrigger and shall not use the eventTrigger. If 
- the element resourceTrigger.resource shall be a DocumentReference resource
"
* obeys DSUBm-trigger
* resourceTrigger.resource = Canonical(DocumentReference)
* resourceTrigger.fhirPathCriteria 0..0
* eventTrigger 0..0
* canFilterBy obeys DSUBm-Multipatient


Invariant: DSUBm-trigger
Severity: #error
Description: "SHALL have a resourceTrigger and SHALL not have an eventTrigger"
Expression: "resourceTrigger.exists() and eventTrigger.exists().not()"
XPath: "exists(f:resourceTrigger) and exists(f:eventTrigger).not()"

Invariant: DSUBm-Multipatient
Severity: #error
Description: "the canFilterBy SHALL NOT use the patient as a filter "
Expression: "where(resource='DocumentReference').select(filterParameter = 'patient').allFalse()" 

