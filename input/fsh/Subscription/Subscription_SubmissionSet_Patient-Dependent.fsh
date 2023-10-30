
Profile: DSUBm_SubmissionSet_PatientDependent_Subscription
Parent: http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-subscription 
Id: DSUBm-SubmissionSet-PatientDependent-Subscription
Title:       "Subscription for SubmissionSet Patient-Dependent"
Description:  "Resource Subscription for DSUBm profile for SubmissionSet with the indication of the patient
- the criteria element shall contain the URL of an instance of SubscriptionTopic from the 'DSUBm_SubscriptionTopic_SubmissionSet_PatientDependent' profile
"
* criteria 1..1 
* criteria ^short = "Canonical URL for the SubscriptionTopic used to generate events. The SubsciptionTopic shall be an instance of the 'DSUBm_SubscriptionTopic_SubmissionSet_PatientDependent' "
* criteria.extension obeys SubmissionSet-PatientDependent
* criteria = Canonical(DSUBm-SubscriptionTopic-SubmissionSet-PatientDependent)
* channel.type = #rest-hook 
* channel.endpoint 0..1 MS SU  
* channel.endpoint ^short = "The endpoint should be the endpoint that the Resource Notification Recipient is receiving the notifications."
* channel.payload from DSUBmPayload
