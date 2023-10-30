
Profile: DSUBm_DocumentReference_MultiPatient_Subscription
Parent: http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-subscription 
Id: DSUBm-DocumentReference-MultiPatient-Subscription
Title:       "Subscription for DocumentReference Patient-Dependent"
Description:  "Resource Subscription for DSUBm profile for DocumentReference without the indication of the patient
- the criteria element shall contain the URL of an instance of SubscriptionTopic from the 'DSUBm-SubscriptionTopic-DocumentReference-MultiPatient' profile
"
* criteria 1..1 
* criteria ^short = "Canonical URL for the SubscriptionTopic used to generate events. The SubsciptionTopic shall be an instance of the 'DSUBm_SubscriptionTopic_DocumentReference_MultiPatient' "
* criteria.extension obeys DocumentReference-MultiPatient
* criteria = Canonical(DSUBm-SubscriptionTopic-DocumentReference-MultiPatient)
* channel.type = #rest-hook 
* channel.endpoint 0..1 MS SU  
* channel.endpoint ^short = "The endpoint should be the endpoint that the Resource Notification Recipient is receiving the notifications."
* channel.payload from DSUBmPayload


Profile: DSUBm_DocumentReference_MultiPatient_Subscription_update
Parent: http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-subscription 
Id: DSUBm-DocumentReference-MultiPatient-Subscription-update
Title:       "Subscription for DocumentReference Patient-Dependent with update option"
Description:  "Resource Subscription for DSUBm profile for DocumentReference without the indication of the patient
- the criteria element shall contain the URL of an instance of SubscriptionTopic from the 'DSUBm-SubscriptionTopic-DocumentReference-MultiPatient' profile
"
* criteria 1..1 
* criteria ^short = "Canonical URL for the SubscriptionTopic used to generate events. The SubsciptionTopic shall be an instance of the 'DSUBm_SubscriptionTopic_DocumentReference_MultiPatient' "
* criteria.extension obeys DocumentReference-MultiPatient
* criteria = Canonical(SubscriptionTopic-DocReference-MultiPatient-All-Interaction)
* channel.type = #rest-hook 
* channel.endpoint 0..1 MS SU  
* channel.endpoint ^short = "The endpoint should be the endpoint that the Resource Notification Recipient is receiving the notifications."
* channel.payload from DSUBmPayload
