Profile: DSUBm_SubscriptionTopic_SubmissionSet_MultiPatient
Parent: SubscriptionTopic
Id: DSUBm-SubmissionSet-MultiPatient-SubscriptionTopic
Title:       "SubscriptionTopic for SubmissionSet Multi-patient "
Description:  "Resource SubscriptionTopic for DSUBm profile for SubmissionSet without the indication of the patient
- the trigger for this topic shall be the resourceTrigger so the eventTrigger shall not be used.
    - the resourceTrigger.resource element shall be a SubmissionSet resource
"
* obeys DSUBm-trigger
* resourceTrigger.resource = Canonical(SubmissionSetR4b)
* resourceTrigger.fhirPathCriteria 0..0
* eventTrigger 0..0
* canFilterBy obeys DSUBm-Multipatient

