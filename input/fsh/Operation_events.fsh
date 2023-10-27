Profile:        SubscriptionStatus_Events
Parent:         SubscriptionStatus
Id:             IHE.DSUBm.Events
Title:          "SubscriptionStatus for the $events operation"
Description:    "Profile on the R4B SubscriptionStatus resource to be used with the $events opertion"
* status ^short = "Recommended. Should be valued with the current status of the relevant subscription"
* type = #query-event
* eventsSinceSubscriptionStart 0..1
* eventsSinceSubscriptionStart ^short = "Recommended. This value is allows clients to know if they are missing notifications.
Note: this value SHALL NOT be incremented by sending a query-event bundle."
* notificationEvent 1..1
* notificationEvent.eventNumber 1..1
* notificationEvent.timestamp 0..1 
* notificationEvent.timestamp ^short = "Recommended	So that clients can discover when an event actually occurred, timestamp is recommended."

Profile:     ResourceNotify_Events
Parent:      Bundle
Id:          DSUBm-EventsOperation-Bundle
Title:       "R4B Bundle response for $Events"
Description: "Profile on the R4B Bundle resource for the response of $Events operation."
* type = #searchset
* entry 0..*
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false 
* entry ^slicing.description = "Slice based on resource"
* entry contains SubscriptionStatus 0..* and 
    SubmissionSet 0..* and
    DocumentRefs 0..* and
    Folders 0..* and
    Patient 0..1 and 
    Resource 0..* 
* entry[SubmissionSet].resource only
    IHE.MHD.Minimal.SubmissionSet
* entry[SubmissionSet] ^short = "the SubmissionSet"
* entry[SubmissionSet] ^definition = "The SubmissionSet defines who submitted it, why they submitted it, when they submitted, what is in it, and where it is destine."
* entry[SubmissionSet].resource 1..1

* entry[DocumentRefs].resource only 
    IHE.MHD.Minimal.DocumentReference
* entry[DocumentRefs] ^short = "the DocumentReference resources"
* entry[DocumentRefs] ^definition = "any new DocumentReference that are part of the SubmissionSet. These might be new or other associations"
* entry[DocumentRefs].resource 1..1
* entry[DocumentRefs].request 1..1
* entry[DocumentRefs].request.method = #POST

* entry[Folders].resource only 
    IHE.MHD.Minimal.Folder
* entry[Folders] ^short = "Folders"
* entry[Folders] ^definition = "any Folders being created or updated"
* entry[Folders].resource 1..1
* entry[Folders].request 1..1
* entry[Folders].request.method from MHDprovideFolderActions
* entry[Patient].resource ^type.code = "Patient"
* entry[Patient].resource ^type.profile = Canonical(Patient)
* entry[Patient] ^short = "the Patient"
* entry[Patient] ^definition = "the Patient"
* entry[Patient].resource 1..1
* entry[Patient].request.method from MHDprovidePatientActions

* entry[SubscriptionStatus].resource only SubscriptionStatus_Events
