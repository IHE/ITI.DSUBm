Profile: DSUBm_Folder_Subscription_for_Full_Events
Parent: http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-subscription 
Id: DSUBm-Folder-Subscription-for-Full-Events
Title:       "Subscription for Folder Patient-Dependent with Folder Subscription for Full Events Option"
Description:  "Resource Subscription for DSUBm profile for Folder with the indication of the patient
- the criteria element shall contain the URL of a canonical instance of SubscriptionTopic for creation, update or deletion of a Folder type List Resource
"
* criteria 1..1 
* criteria ^short = "Canonical URL for the SubscriptionTopic."
* criteria.extension obeys Folder-PatientDependent
* criteria.extension ^short = "The criteria.extension shall have at least one of the patient or patient.identifier parameter as a subscription criteria. The code parameter shall be used and shall indicates the List of type Folder."
* criteria = Canonical(DSUBm-SubscriptionTopic-Folder-Subscription-for-Full-Events)
* channel.type = #rest-hook 
* channel.endpoint 1..1 MS SU  
* channel.endpoint ^short = "The endpoint should be the endpoint that the Resource Notification Recipient is receiving the notifications."
* channel.payload from DSUBmPayload


