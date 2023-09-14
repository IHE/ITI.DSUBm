Profile: DSUBm_DocumentReference_PatientDependent_Subscription
Parent: DSUBm_Subscription 
Id: DSUBm-DocumentReference-PatientDependent-Subscription
Title:       "DocumentReference Patient-Dependent Subscription"
Description:  "Resource Subscription for DSUBm profile for DocumentReference with the indication of the patient
- the criteria element shall contain the URL of an instance of SubscriptionTopic from the 'DSUBm_SubscriptionTopic_DocumentReference_PatientDependent' profile
"

* criteria 1..1 
* criteria ^short = "Canonical URL for the SubscriptionTopic used to generate events. The SubsciptionTopic shall be an instance of the 'DSUBm_SubscriptionTopic_DocumentReference_PatientDependent' "
* criteria.extension obeys DSUBm-PatientDependentRule-Subscription




