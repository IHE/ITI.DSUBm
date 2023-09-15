Profile: DSUBm_SubmissionSet_MultiPatient_Subscription
Parent: DSUBm_Subscription 
Id: DSUBm-SubmissionSet-MultiPatient-Subscription
Title:       "Subscription for SubmissionSet Multi-Patient "
Description:  "Resource Subscription for DSUBm profile for SubmissionSet without explicit indication of a patient
- the criteria element shall contain the URL of an instance of SubscriptionTopic from the 'DSUBm_SubscriptionTopic_SubmissionSet_MultiPatient' profile
"

* criteria 1..1 
* criteria ^short = "Canonical URL for the SubscriptionTopic used to generate events. The SubsciptionTopic shall be an instance of the 'DSUBm_SubscriptionTopic_SubmissionSet_MultiPatient' "
* criteria = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-SubmissionSet-MultiPatient-SubscriptionTopic"
* criteria.extension ^short = "in the extension filter-by shall not be present the patient"
//* criteria.extension obeys DSUBm-MultiPatientRule-Subscription
