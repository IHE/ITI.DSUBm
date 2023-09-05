
Profile: DSUBm_ResourcePublishBundle
Parent: Bundle
Id: ResourcePublishITI-111
Description: "Resource Publish transaction from DSUBm profile
- The Bundle shall contain 
    - a SubmissionSet type List that is either minimal, comprehensive, or unContained.
    - one or more DocumentReference that is either minimal, comprehensive, or unContained
    - one or more Folder type List that is either minimal, comprehensive, or unContained
    - no entry shall be present for the Binary encoded document
    - no entry shall be present for the FHIR Document Bundle 
"
* type = #transaction
* meta.profile 1..*
* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.discriminator[1].type = #value
* entry ^slicing.discriminator[1].path = "request.method"
* entry ^slicing.rules = #closed
* entry ^slicing.description = "Slicing based on the profile conformance of the entry"
* entry and entry.resource MS
* entry contains
    SubmissionSet 1..1 and
    DocumentRefs 0..* and
    UpdateDocumentRefs 0..* and
    Documents 0..0 and
    FhirDocuments 0..0 and
    Folders 0..* and
    Patient 0..1
* entry[SubmissionSet].resource only
    IHE.MHD.Minimal.SubmissionSet 
* entry[SubmissionSet] ^short = "the SubmissionSet"
* entry[SubmissionSet] ^definition = "The SubmissionSet defines who submitted it, why they submitted it, when they submitted, what is in it, and where it is destine."
* entry[SubmissionSet].resource 1..1
* entry[SubmissionSet].request 1..1
* entry[SubmissionSet].request.method = #POST
* entry[DocumentRefs].resource only 
    IHE.MHD.Minimal.DocumentReference 
* entry[DocumentRefs] ^short = "the DocumentReference resources"
* entry[DocumentRefs] ^definition = "any new DocumentReference that are part of the SubmissionSet. These might be new or other associations"
* entry[DocumentRefs].resource 1..1
* entry[DocumentRefs].request 1..1
* entry[DocumentRefs].request.method = #POST
* entry[UpdateDocumentRefs].resource only 
    IHE.MHD.Patch.Parameters 
* entry[UpdateDocumentRefs] ^short = "the superseded DocumentReference resources"
* entry[UpdateDocumentRefs] ^definition = "any updated DocumentReference that are part of the SubmissionSet if a new new DocumentReference replaces this DocumentReference."
* entry[UpdateDocumentRefs].resource 1..1
* entry[UpdateDocumentRefs].request 1..1
* entry[UpdateDocumentRefs].request.method = #PATCH
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
