/*
Profile: DSUBm_Folder_PatientDependent_Subscription
Parent: DSUBm_Subscription 
Id: DSUBm-Folder-PatientDependent-Subscription
Title:       "Subscription for Folder Patient-Dependent"
Description:  "Resource Subscription for DSUBm profile for Folder with the indication of the patient
- the criteria element shall contain the URL of an instance of SubscriptionTopic from the 'DSUBm_SubscriptionTopic_Folder_PatientDependent' profile
"
* criteria 1..1 
* criteria ^short = "Canonical URL for the SubscriptionTopic used to generate events. The SubsciptionTopic shall be an instance of the 'DSUBm_SubscriptionTopic_Folder_PatientDependent' "
//* criteria.extension obeys DSUBm-PatientDependentRule-Subscription
* criteria = "https://profiles.ihe.net/ITI/DSUBm/SubscriptionTopic/Folder-PatientDependent"

*/
