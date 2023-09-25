Profile: DSUBm_SubscriptionTopic_SubmissionSet_PatientDependent
Parent: SubscriptionTopic
Id: DSUBm-SubmissionSet-PatientDependent-SubscriptionTopic
Title:       "SubscriptionTopic for SubmissionSet PatientDependent "
Description:  "Resource SubscriptionTopic for DSUBm profile for SubmissionSet Patient Dependent 
- the element resourceTrigger.resource shall be a SubmissionSet resource
- the element canFilterBy shall have SubmissionSet.patient as search parameter
"
* obeys DSUBm-trigger
* obeys DSUBm-PatientDependentRule
* resourceTrigger.resource = Canonical(SubmissionSetR4b)
* resourceTrigger.fhirPathCriteria 0..0
* eventTrigger 0..0
// at least one canfilterBy for the patient
* canFilterBy 1..*
* canFilterBy.resource = "SubmissionSetR4b"