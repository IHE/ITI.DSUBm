
Profile: DSUBm_DocumentReference_PatientDependent_Subscription
Parent: DSUBm_Subscription 
Id: DSUBm-DocumentReference-PatientDependent-Subscription
Title:       "Subscription for DocumentReference Patient-Dependent"
Description:  "Resource Subscription for DSUBm profile for DocumentReference with the indication of the patient
- the criteria element shall contain the URL of an instance of SubscriptionTopic from the 'DSUBm_SubscriptionTopic_DocumentReference_PatientDependent' profile
"
* criteria 1..1 
* criteria ^short = "Canonical URL for the SubscriptionTopic used to generate events. The SubsciptionTopic shall be an instance of the 'DSUBm_SubscriptionTopic_DocumentReference_PatientDependent' "
* criteria.extension.valueString obeys DocumentReference-PatientDependent
* criteria = "urn:uuid:aa2332d0-f8fe-11e0-be50-0800200c9a66"
