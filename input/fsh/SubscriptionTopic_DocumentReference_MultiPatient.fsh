Profile: DSUBm_SubscriptionTopic_DocumentReference_MultiPatient
Parent: SubscriptionTopic
Id: DSUBm-DocumentReference-MultiPatient-SubscriptionTopic
Title:       "SubscriptionTopic for DocumentReference Multi-patient "
Description:  "Resource SubscriptionTopic for DSUBm profile for DocumentReference without the indication of the patient
- the trigger for this topic shall be the resourceTrigger so the eventTrigger shall not be used.
    - the resourceTrigger.resource element shall be a DocumentReference resource
"
* obeys DSUBm-trigger
* resourceTrigger.resource = Canonical(DocumentReference)
* resourceTrigger.fhirPathCriteria 0..0
* eventTrigger 0..0
* canFilterBy obeys DSUBm-Multipatient


