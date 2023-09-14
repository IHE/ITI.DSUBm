Profile: DSUBm_DocumentReference_MultiPatient_Subscription
Parent: DSUBm_Subscription 
Id: DSUBm-DocumentReference-MultiPatient-Subscription
Title:       "DocumentReference Multi-Patient Subscription"
Description:  "Resource Subscription for DSUBm profile for DocumentReference without explicit indication of a patient
- the criteria element shall contain the URL of an instance of SubscriptionTopic from the 'DSUBm_SubscriptionTopic_DocumentReference_MultiPatient' profile
"
* criteria 1..1 
* criteria ^short = "Canonical URL for the SubscriptionTopic used to generate events. The SubsciptionTopic shall be an instance of the 'DSUBm_SubscriptionTopic_DocumentReference_MultiPatient' "
* criteria.extension[BackportFilterCriteria] obeys DSUBm-MultiPatientRule-Subscription

