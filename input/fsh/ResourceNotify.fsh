Profile:        ResourceNotify
Parent:         http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-subscription-notification
Id:             IHE.DSUBm.ResourceNotify
Title:          "Resource Notify Bundle R4B"
Description:    "Profile on the R4B Bundle resource for transaction for the ITI-112 Resource Notify."

* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the profile conformance of the entry. \n All notification bundle MUST have a ParSubscriptionStatus  as the first entry "
* entry and entry.resource MS
* entry contains 
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