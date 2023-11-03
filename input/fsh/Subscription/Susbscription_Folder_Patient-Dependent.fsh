
Profile: DSUBm_Folder_PatientDependent_Subscription
Parent: http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-subscription 
Id: DSUBm-Folder-PatientDependent-Subscription
Title:       "Subscription for Folder Patient-Dependent"
Description:  "Resource Subscription for DSUBm profile for Folder with the indication of the patient
- the criteria element shall contain the URL of an instance of SubscriptionTopic from the 'DSUBm_SubscriptionTopic_Folder_PatientDependent' profile
"
* criteria 1..1 
* criteria ^short = "Canonical URL for the SubscriptionTopic used to generate events. The SubsciptionTopic shall be an instance of the 'DSUBm_SubscriptionTopic_Folder_PatientDependent."
* criteria.extension obeys Folder-PatientDependent
* criteria.extension ^short = "The criteria.extension shall have at least one of the patient or patient.identifier parameter as a subscription criteria. The code parameter shall be used and shall indicates the List of type Folder."
* criteria = Canonical(DSUBm-SubscriptionTopic-Folder-PatientDependent)
* channel.type = #rest-hook 
* channel.endpoint 1..1 MS SU  
* channel.endpoint ^short = "The endpoint should be the endpoint that the Resource Notification Recipient is receiving the notifications."
* channel.payload from DSUBmPayload



Profile: DSUBm_Folder_PatientDependent_Subscription_update
Parent: http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-subscription 
Id: DSUBm-Folder-PatientDependent-Subscription-update
Title:       "Subscription for Folder Patient-Dependent with update option"
Description:  "Resource Subscription for DSUBm profile for Folder with the indication of the patient
- the criteria element shall contain the URL of an instance of SubscriptionTopic from the 'DSUBm_SubscriptionTopic_Folder_PatientDependent' profile
"
* criteria 1..1 
* criteria ^short = "Canonical URL for the SubscriptionTopic used to generate events. The SubsciptionTopic shall be an instance of the 'DSUBm_SubscriptionTopic_Folder_PatientDependent."
* criteria.extension obeys Folder-PatientDependent
* criteria.extension ^short = "The criteria.extension shall have at least one of the patient or patient.identifier parameter as a subscription criteria. The code parameter shall be used and shall indicates the List of type Folder."
* criteria = Canonical(DSUBm-SubscriptionTopic-Folder-PatientDependent-UpdateOption)
* channel.type = #rest-hook 
* channel.endpoint 1..1 MS SU  
* channel.endpoint ^short = "The endpoint should be the endpoint that the Resource Notification Recipient is receiving the notifications."
* channel.payload from DSUBmPayload



