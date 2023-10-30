
Profile: DSUBm_DocumentReference_PatientDependent_Subscription
Parent: http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-subscription 
Id: DSUBm-DocumentReference-PatientDependent-Subscription
Title:       "Subscription for DocumentReference Patient-Dependent"
Description:  "Resource Subscription for DSUBm profile for DocumentReference with the indication of the patient
- the criteria element shall contain the URL of a canonical instance of SubscriptionTopic from the 'DSUBm-SubscriptionTopic-DocumentReference-PatientDependent' profile
"
* criteria 1..1 
* criteria ^short = "Canonical URL for the SubscriptionTopic used to generate events. The SubsciptionTopic shall be an instance of the 'DSUBm_SubscriptionTopic_DocumentReference_PatientDependent' "
* criteria.extension obeys DocumentReference-PatientDependent
* criteria = Canonical(DSUBm-SubscriptionTopic-DocumentReference-PatientDependent)
* channel.type = #rest-hook 
* channel.endpoint 0..1 MS SU  
* channel.endpoint ^short = "The endpoint should be the endpoint that the Resource Notification Recipient is receiving the notifications."
* channel.payload from DSUBmPayload


Profile: DSUBm_DocumentReference_PatientDependent_Subscription_update
Parent: http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-subscription 
Id: DSUBm-DocumentReference-PatientDependent-Subscription-update
Title:       "Subscription for DocumentReference Patient-Dependent with update option"
Description:  "Resource Subscription for DSUBm profile for DocumentReference with the indication of the patient
- the criteria element shall contain the URL of a canonical instance of SubscriptionTopic from the 'DSUBm-SubscriptionTopic-DocumentReference-PatientDependent' profile
"
* criteria 1..1 
* criteria ^short = "Canonical URL for the SubscriptionTopic used to generate events. The SubsciptionTopic shall be an instance of the 'DSUBm_SubscriptionTopic_DocumentReference_PatientDependent' "
* criteria.extension obeys DocumentReference-PatientDependent
* criteria = Canonical(SubscriptionTopic-DocReference-PatientDependent-All-Interaction)
* channel.type = #rest-hook 
* channel.endpoint 0..1 MS SU  
* channel.endpoint ^short = "The endpoint should be the endpoint that the Resource Notification Recipient is receiving the notifications."
* channel.payload from DSUBmPayload

