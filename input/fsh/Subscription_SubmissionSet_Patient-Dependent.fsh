
Profile: DSUBm_SubmissionSet_PatientDependent_Subscription
Parent: DSUBm_Subscription 
Id: DSUBm-SubmissionSet-PatientDependent-Subscription
Title:       "Subscription for SubmissionSet Patient-Dependent"
Description:  "Resource Subscription for DSUBm profile for SubmissionSet with the indication of the patient
- the criteria element shall contain the URL of an instance of SubscriptionTopic from the 'DSUBm_SubscriptionTopic_SubmissionSet_PatientDependent' profile
"
* criteria 1..1 
* criteria ^short = "Canonical URL for the SubscriptionTopic used to generate events. The SubsciptionTopic shall be an instance of the 'DSUBm_SubscriptionTopic_SubmissionSet_PatientDependent' "
* criteria.extension obeys SubmissionSet-PatientDependent
* criteria = "urn:uuid:fbede94e-dbdc-4f6b-bc1f-d730e677cece"
