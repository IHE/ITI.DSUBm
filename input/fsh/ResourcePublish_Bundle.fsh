// equivalent to MHD Provide Document Bundle transaction in R4
Profile:        ResourcePublishBundleR4
Parent:         Bundle
Id:             IHE.DSUBm.Minimal.PublishBundleR4
Title:          "Resource Publish Bundle R4"
Description:    "A profile on the Bundle transaction for ITI-111 Resource Publish resources with Minimal metadata for DSUBm."
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
    SubmissionSet 1..1 and
    DocumentRefs 0..* and
    Folders 0..* and
    Patient 0..1
* entry[SubmissionSet].resource only
    IHE.DSUBm.Minimal.SubmissionSetR4
* entry[SubmissionSet] ^short = "the SubmissionSet"
* entry[SubmissionSet] ^definition = "The SubmissionSet defines who submitted it, why they submitted it, when they submitted, what is in it, and where it is destine."
* entry[SubmissionSet].resource 1..1
* entry[SubmissionSet].request 1..1
* entry[SubmissionSet].request.method = #POST
* entry[DocumentRefs].resource only 
    IHE.DSUBm.Minimal.DocumentReferenceR4
* entry[DocumentRefs] ^short = "the DocumentReference resources"
* entry[DocumentRefs] ^definition = "any new DocumentReference that are part of the SubmissionSet. These might be new or other associations"
* entry[DocumentRefs].resource 1..1
* entry[DocumentRefs].request 1..1
* entry[DocumentRefs].request.method = #POST
/*
* entry[UpdateDocumentRefs].resource only 
    IHE.DSUBm.Patch.ParametersR4
* entry[UpdateDocumentRefs] ^short = "the superseded DocumentReference resources"
* entry[UpdateDocumentRefs] ^definition = "any updated DocumentReference that are part of the SubmissionSet if a new new DocumentReference replaces this DocumentReference."
* entry[UpdateDocumentRefs].resource 1..1
* entry[UpdateDocumentRefs].request 1..1
* entry[UpdateDocumentRefs].request.method = #PATCH

* entry[Documents].resource ^type.code = "Binary"
* entry[Documents].resource ^type.profile = Canonical(Binary)
* entry[Documents] ^short = "the Documents"
* entry[Documents] ^definition = "the Documents referenced by the DocumentReference resources"
* entry[Documents].resource 1..1
* entry[Documents].request 1..1
* entry[FhirDocuments].request.method = #POST
* entry[FhirDocuments].resource ^type.code = "Bundle"
* entry[FhirDocuments].resource ^type.profile = Canonical(Bundle)
// TODO Should there be more to be sure it is a FHIR Document Bundle?
* entry[FhirDocuments] ^short = "the FHIR-FhirDocuments"
* entry[FhirDocuments] ^definition = "the FHIR-FhirDocuments referenced by the DocumentReference resources"
* entry[FhirDocuments].resource 1..1
* entry[FhirDocuments].request 1..1
* entry[FhirDocuments].request.method = #POST
*/
* entry[Folders].resource only 
    IHE.DSUBm.Minimal.FolderR4
* entry[Folders] ^short = "Folders"
* entry[Folders] ^definition = "any Folders being created or updated"
* entry[Folders].resource 1..1
* entry[Folders].request 1..1
* entry[Folders].request.method from DSUBmPublishFolderActionsR4
* entry[Patient].resource ^type.code = "Patient"
* entry[Patient].resource ^type.profile = Canonical(Patient)
* entry[Patient] ^short = "the Patient"
* entry[Patient] ^definition = "the Patient"
* entry[Patient].resource 1..1
* entry[Patient].request.method from DSUBmPublishPatientActionsR4

ValueSet: DSUBmPublishFolderActionsR4
Title: "DSUBm Folder List Types ValueSet"
Description: "A ValueSet of the allowed actions in a ITI-111 Resource Publish Bundle for the Folder List type Resources. Where Folders are allowed to be Updated in addition to Created."
* ^experimental = false
* http://hl7.org/fhir/http-verb#POST
* http://hl7.org/fhir/http-verb#PUT

ValueSet: DSUBmPublishPatientActionsR4
Title: "DSUBm Patient Types ValueSet"
Description: "A ValueSet of the allowed actions in a ITI-111 Resource Publish Bundle for the Patient type Resource. Where Patient would typically be indicated as a GET (read), but might be created or updated depending on policy."
* ^experimental = false
* http://hl7.org/fhir/http-verb#GET
* http://hl7.org/fhir/http-verb#POST
* http://hl7.org/fhir/http-verb#PUT



Profile:        ProvideDocumentBundleResponseR4
Parent:         Bundle
Id:             IHE.DSUBm.ProvideDocumentBundleResponseR4
Title:          "DSUBm Resource Publish Bundle Response"
Description:    "A profile on the Bundle transaction-response for ITI-111 Resource Publish Bundle response.

- shall be a transaction response
- shall have at least 1 entry for each entry in the request, in the same order as received in the request
    - entry response location must be indicated 
"
* type = #transaction-response
* entry 1..* 
* entry ^short = "One entry for each entry in the request, in the same order as received"
* entry.response 1..
* entry.response ^short = "Indicating the results of processing the entry"
* entry.response.location 1..
