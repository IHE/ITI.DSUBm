Profile: DSUBm_ResourceNotify
Parent:  http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-subscription-notification
Id: ITI-112-ResourceNotify
Description: "Resource Notify transaction from DSUBm profile
- The Bundle shall contain 
    - a subscriptionStatus as the first entry (as for backport-notification-bundle-1 statement).
    - in the following entry may be present one or more DocumentReference, one or more SubmissionSet (List) and one or more Folder (List)
    - based on the SubscriptionTopic.notificationShape.include there may be other fhir resource.
"
* entry contains
 SubmissionSet 1..* and 
 DocumentReference 0..* and 
 Folder 0..* and 
 other 0..*
* entry[SubmissionSet].resource 1..1 MS
* entry[SubmissionSet].resource only SubmissionSetR4b
* entry[DocumentReference].resource 1..1 MS
* entry[DocumentReference].resource only DocumentReferenceR4b
* entry[Folder].resource 1..1 MS
* entry[Folder].resource only FolderR4b
* entry[other].resource 1..1 MS
