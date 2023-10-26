
Profile: DSUBm_DocumentReference_PatientDependent_Subscription
Parent: DSUBm_Subscription 
Id: DSUBm-DocumentReference-PatientDependent-Subscription
Title:       "Subscription for DocumentReference Patient-Dependent"
Description:  "Resource Subscription for DSUBm profile for DocumentReference with the indication of the patient
- the criteria element shall contain the URL of a canonical instance of SubscriptionTopic from the 'DSUBm-SubscriptionTopic-DocumentReference-PatientDependent' profile
"
* criteria 1..1 
* criteria ^short = "Canonical URL for the SubscriptionTopic used to generate events. The SubsciptionTopic shall be an instance of the 'DSUBm_SubscriptionTopic_DocumentReference_PatientDependent' "
* criteria.extension obeys DocumentReference-PatientDependent
* criteria = Canonical(DSUBm-SubscriptionTopic-DocumentReference-PatientDependent)


Profile: DSUBm_DocumentReference_PatientDependent_Subscription_update
Parent: DSUBm_Subscription 
Id: DSUBm-DocumentReference-PatientDependent-Subscription-update
Title:       "Subscription for DocumentReference Patient-Dependent with update option"
Description:  "Resource Subscription for DSUBm profile for DocumentReference with the indication of the patient
- the criteria element shall contain the URL of a canonical instance of SubscriptionTopic from the 'DSUBm-SubscriptionTopic-DocumentReference-PatientDependent' profile
"
* criteria 1..1 
* criteria ^short = "Canonical URL for the SubscriptionTopic used to generate events. The SubsciptionTopic shall be an instance of the 'DSUBm_SubscriptionTopic_DocumentReference_PatientDependent' "
* criteria.extension obeys DocumentReference-PatientDependent
* criteria = Canonical(SubscriptionTopic-DocReference-PatientDependent-All-Interaction)

