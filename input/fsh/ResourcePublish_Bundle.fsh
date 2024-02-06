Profile: ResourcePublishBundle
Parent: Bundle
/*Parent:         IHE.MHD.Minimal.ProvideBundle*/
Id:             IHE.DSUBm.ResourceBundle
Title:          "Resource Publish Bundle"
Description:    "A profile for the Bundle used in the  ITI-111 Resource Publish transaction. This profile extends the MHD Minimal.ProvideBundle profile.
The DSUBm Actors should consider the following entry in the Bundle: 
- SubmissionSet
- DocumentRefs
- Folders
- Patient (if present)

and the update or delete of DocumentReference and/or Folders 
"

/*
* meta.profile 1..*
* type = #transaction
* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.discriminator[1].type = #value
* entry ^slicing.discriminator[1].path = "request.method"
* entry ^slicing.rules = #closed
* entry ^slicing.description = "Slicing based on the profile conformance of the entry"
* entry and entry.resource MS
* entry contains 
    SubmissionSet 0..1 and
    DocumentRefs 0..* and
    Folders 0..* and
    Patient 0..1
* entry[SubmissionSet].resource only
    IHE.DSUBm.Minimal.SubmissionSet
* entry[SubmissionSet] ^short = "the SubmissionSet"
* entry[SubmissionSet] ^definition = "The SubmissionSet defines who submitted it, why they submitted it, when they submitted, what is in it, and where it is destine."
* entry[SubmissionSet].resource 1..1
* entry[SubmissionSet].request 1..1
* entry[SubmissionSet].request.method = #POST
* entry[DocumentRefs].resource only 
    IHE.DSUBm.Minimal.DocumentReference
* entry[DocumentRefs] ^short = "the DocumentReference resources"
* entry[DocumentRefs] ^definition = "any new DocumentReference that are part of the SubmissionSet. These might be new or other associations"
* entry[DocumentRefs].resource 1..1
* entry[DocumentRefs].request 1..1
* entry[DocumentRefs].request.method  from DSUBmPublishBundleActions
* entry[Folders].resource only 
    IHE.DSUBm.Minimal.Folder
* entry[Folders] ^short = "Folders"
* entry[Folders] ^definition = "any Folders being created or updated"
* entry[Folders].resource 1..1
* entry[Folders].request 1..1
* entry[Folders].request.method from DSUBmPublishBundleActions
* entry[Patient].resource ^type.code = "Patient"
* entry[Patient].resource ^type.profile = Canonical(Patient)
* entry[Patient] ^short = "the Patient"
* entry[Patient] ^definition = "the Patient"
* entry[Patient].resource 1..1
* entry[Patient].request.method from MHDprovidePatientActions
*/
* meta.profile 1..*
* type = #transaction
* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.discriminator[1].type = #value
* entry ^slicing.discriminator[1].path = "request.method"
* entry ^slicing.rules = #closed
* entry ^slicing.description = "Slicing based on the profile conformance of the entry"
* entry and entry.resource MS
* entry contains 
    SubmissionSet 0..1 and
    DocumentRefs 0..* and
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
* entry[DocumentRefs].request.method  from DSUBmPublishBundleActions
* entry[Folders].resource only 
    IHE.MHD.Minimal.Folder
* entry[Folders] ^short = "Folders"
* entry[Folders] ^definition = "any Folders being created or updated"
* entry[Folders].resource 1..1
* entry[Folders].request 1..1
* entry[Folders].request.method from DSUBmPublishBundleActions
* entry[Patient].resource ^type.code = "Patient"
* entry[Patient].resource ^type.profile = Canonical(Patient)
* entry[Patient] ^short = "the Patient"
* entry[Patient] ^definition = "the Patient"
* entry[Patient].resource 1..1
* entry[Patient].request.method from MHDprovidePatientActions


// added PUT e DELETE DocumentReference
//added DELETE Folder to Valueset 
ValueSet: DSUBmPublishBundleActions
Title: "DSUBm Update to document sharing resources actions ValueSet"
Description: "A ValueSet of the allowed actions in a ITI-111 Resource Publish for the Folder List type and the DocumentReference resources."
* ^experimental = false
* http://hl7.org/fhir/http-verb#POST
* http://hl7.org/fhir/http-verb#PUT
* http://hl7.org/fhir/http-verb#DELETE