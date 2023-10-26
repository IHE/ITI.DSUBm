
Profile: DSUBm_DocumentReference_MultiPatient_Subscription
Parent: DSUBm_Subscription 
Id: DSUBm-DocumentReference-MultiPatient-Subscription
Title:       "Subscription for DocumentReference Patient-Dependent"
Description:  "Resource Subscription for DSUBm profile for DocumentReference without the indication of the patient
- the criteria element shall contain the URL of an instance of SubscriptionTopic from the 'DSUBm-SubscriptionTopic-DocumentReference-MultiPatient' profile
"
* criteria 1..1 
* criteria ^short = "Canonical URL for the SubscriptionTopic used to generate events. The SubsciptionTopic shall be an instance of the 'DSUBm_SubscriptionTopic_DocumentReference_MultiPatient' "
* criteria.extension obeys DocumentReference-MultiPatient
* criteria = Canonical(DSUBm-SubscriptionTopic-DocumentReference-MultiPatient)
