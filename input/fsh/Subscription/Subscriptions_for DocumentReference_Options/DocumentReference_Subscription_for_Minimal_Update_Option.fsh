Profile: DSUBm_DocumentReference_PatientDependent_Subscription_MinUpdate
Parent: http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-subscription 
Id: DSUBm-DocumentReference-PatientDependent-Subscription-MinUpdate
Title:       "Subscription for DocumentReference Patient-Dependent with DocumentReference Subscription for Minimal Update Option"
Description:  "Resource Subscription for DSUBm profile for DocumentReference with the indication of the patient
- the criteria element shall contain the URL of a canonical instance of SubscriptionTopic for creation, deletion and update only in the \"status\" of a DocumentReference
"
* criteria 1..1 
* criteria ^short = "Canonical URL for the SubscriptionTopic."
* criteria.extension obeys DocumentReference-PatientDependent
* criteria.extension ^short = "The criteria.extension shall have at least one of the patient or patient.identifier parameter as a subscription criteria."
* criteria = "https://profiles.ihe.net/ITI/DSUBm/SubscriptionTopic/DSUBm-SubscriptionTopic-DocReference-PatientDependent-MinUpdate"
* channel.type = #rest-hook 
* channel.endpoint 1..1 MS SU  
* channel.endpoint ^short = "The endpoint should be the endpoint that the Resource Notification Recipient is receiving the notifications."
* channel.payload from DSUBmPayload


//------------------

Profile: DSUBm_DocumentReference_MultiPatient_Subscription_MinUpdate
Parent: http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-subscription 
Id: DSUBm-DocumentReference-MultiPatient-Subscription-MinUpdate
Title:       "Subscription for DocumentReference Multi-Patient with DocumentReference Subscription for Minimal Update Option"
Description:  "Resource Subscription for DSUBm profile for DocumentReference without the indication of the patient
- the criteria element shall contain the URL of a canonical instance of SubscriptionTopic for creation, deletion and update only in the \"status\" of a DocumentReference
"
* criteria 1..1 
* criteria ^short = "Canonical URL for the SubscriptionTopic."
* criteria.extension obeys DocumentReference-MultiPatient
* criteria.extension ^short = "The criteria.extension shall not have the patient or the patient.identifier parameter as a subscription criteria."
* criteria = "https://profiles.ihe.net/ITI/DSUBm/SubscriptionTopic/DSUBm-SubscriptionTopic-DocReference-MultiPatient-MinUpdate"
* channel.type = #rest-hook 
* channel.endpoint 1..1 MS SU  
* channel.endpoint ^short = "The endpoint should be the endpoint that the Resource Notification Recipient is receiving the notifications."
* channel.payload from DSUBmPayload