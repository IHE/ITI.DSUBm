
Profile: DSUBm_SubmissionSet_MultiPatient_Subscription
Parent: http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-subscription
Id: DSUBm-SubmissionSet-MultiPatient-Subscription
Title:       "Subscription for SubmissionSet Multi-Patient"
Description:  "Resource Subscription for DSUBm profile for SubmissionSet without the indication of the patient
- the criteria element shall contain the URL of an instance of SubscriptionTopic from the 'DSUBm_SubscriptionTopic_SubmissionSet_MultiPatient' profile
"
* criteria 1..1 
* criteria ^short = "Canonical URL for the SubscriptionTopic used to generate events. The SubsciptionTopic shall be an instance of the 'DSUBm_SubscriptionTopic_SubmissionSet_MultiPatient' "
* criteria.extension obeys SubmissionSet-MultiPatient
* criteria.extension ^short = "The criteria.extension shall not have the patient or the patient.identifier parameter as a subscription criteria. The code parameter shall be used and shall indicates the List of type SubmissionSet"
* criteria = Canonical(DSUBm-SubscriptionTopic-SubmissionSet-MultiPatient)
* channel.type = #rest-hook 
* channel.endpoint 0..1 MS SU  
* channel.endpoint ^short = "The endpoint should be the endpoint that the Resource Notification Recipient is receiving the notifications."
* channel.payload from DSUBmPayload