
Profile: DSUBm_SubmissionSet_MultiPatient_Subscription
Parent: DSUBm_Subscription 
Id: DSUBm-SubmissionSet-MultiPatient-Subscription
Title:       "Subscription for SubmissionSet Multi-Patient"
Description:  "Resource Subscription for DSUBm profile for SubmissionSet without the indication of the patient
- the criteria element shall contain the URL of an instance of SubscriptionTopic from the 'DSUBm_SubscriptionTopic_SubmissionSet_MultiPatient' profile
"
* criteria 1..1 
* criteria ^short = "Canonical URL for the SubscriptionTopic used to generate events. The SubsciptionTopic shall be an instance of the 'DSUBm_SubscriptionTopic_SubmissionSet_MultiPatient' "
* criteria.extension obeys SubmissionSet-MultiPatient
* criteria = Canonical(DSUBm-SubscriptionTopic-SubmissionSet-MultiPatient)