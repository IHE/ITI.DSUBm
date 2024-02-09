Profile: DSUBm_SubmissionSet_PatientDependent_Subscription
Parent: http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-subscription 
Id: DSUBm-SubmissionSet-PatientDependent-Subscription
Title:       "Subscription for SubmissionSet Patient-Dependent"
Description:  "Resource Subscription for DSUBm profile for SubmissionSet with the indication of the patient
- the criteria element SHALL contain the URL of an instance of SubscriptionTopic for the creation of SubmissionSet type List Resources
"
* criteria 1..1 
* criteria ^short = "Canonical URL for the SubscriptionTopic."
* criteria.extension obeys SubmissionSet-PatientDependent
* criteria.extension ^short = "The criteria.extension SHALL have at least one of the patient or patient.identifier parameter as a subscription criteria. The code parameter SHALL be used and SHALL indicates the List of type SubmissionSet."
* criteria = "https://profiles.ihe.net/ITI/DSUBm/SubscriptionTopic/DSUBm-SubscriptionTopic-SubmissionSet-PatientDependent"
* channel.type = #rest-hook 
* channel.endpoint 1..1 MS SU  
* channel.endpoint ^short = "The endpoint SHOULD be the endpoint that the Resource Notification Recipient is receiving the notifications."
* channel.payload from DSUBmPayload




//----------------------------------


Profile: DSUBm_SubmissionSet_MultiPatient_Subscription
Parent: http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-subscription
Id: DSUBm-SubmissionSet-MultiPatient-Subscription
Title:       "Subscription for SubmissionSet Multi-Patient"
Description:  "Resource Subscription for DSUBm profile for SubmissionSet without the indication of the patient
- the criteria element SHALL contain the URL of an instance of SubscriptionTopic for the creation of SubmissionSet type List Resources
"
* criteria 1..1 
* criteria ^short = "Canonical URL for the SubscriptionTopic."
* criteria.extension obeys SubmissionSet-MultiPatient
* criteria.extension ^short = "The criteria.extension SHALL NOT have the patient or the patient.identifier parameter as a subscription criteria. The code parameter SHALL be used and SHALL indicates the List of type SubmissionSet."
* criteria = "https://profiles.ihe.net/ITI/DSUBm/SubscriptionTopic/DSUBm-SubscriptionTopic-SubmissionSet-MultiPatient"
* channel.type = #rest-hook 
* channel.endpoint 1..1 MS SU  
* channel.endpoint ^short = "The endpoint SHOULD be the endpoint that the Resource Notification Recipient is receiving the notifications."
* channel.payload from DSUBmPayload