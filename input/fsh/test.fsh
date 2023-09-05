/*
Profile: DSUBm_ResourcePublishBundle
Parent: https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.ProvideBundle
Id: TEST

* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.discriminator[1].type = #value
* entry ^slicing.discriminator[1].path = "request.method"
* entry ^slicing.rules = #closed
* entry ^slicing.description = "Slicing subset based on the profile conformance of the entry"
* entry and entry.resource MS
* entry contains 
    SubmissionSet 1..1 and
    DocumentRefs 0..* and
    UpdateDocumentRefs 0..* and
    Documents 0..0 and
    FhirDocuments 0..0 and
    Folders 0..* and
    Patient 0..1
 
*/