/*
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
    Folders 0..* and
    Patient 0..1
* entry[SubmissionSet].resource only 
    IHE.DSUB.Minimal.SubmissionSet 
* entry[SubmissionSet] ^short = "the SubmissionSet"
* entry[SubmissionSet] ^definition = "The SubmissionSet defines who submitted it, why they submitted it, when they submitted, what is in it, and where it is destine."
* entry[SubmissionSet].resource 1..1
* entry[SubmissionSet].request 1..1
* entry[SubmissionSet].request.method = #POST
/*
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


Profile: SubmissionSet
Parent: List
Id: IHE.DSUB.Minimal.SubmissionSet
Title: "DSUBm SubmissionSet Minimal derived from MHD"
Description: "A profile on the List resource for DSUBm SubmissionSet. (see MHD)"
* extension[designationTypeDSUbm] 0..1 MS
* extension contains SourceId named sourceId 1..1
* extension contains IntendedRecipient named intendedRecipient 0..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #open
* identifier contains uniqueId 0..1
* identifier[uniqueId] only SubmissionSetUniqueIdIdentifier
* identifier contains entryUUID 0..*
* identifier[entryUUID] only EntryUUIDIdentifier
* status from http://hl7.org/fhir/ValueSet/list-status (required)
* status = #current
* mode = #working
* title 0..1
* code = MHDlistTypes#submissionset
* subject 0..1 MS
* subject only Reference(Patient)
* encounter 0..0
* date 1..1
// source is author
* source 0..1 MS
* source.extension contains AuthorOrg named authorOrg 0..1
* orderedBy 0..0
* note 0..1
//*entry 
* entry.flag 0..0
* entry.deleted 0..0
* entry.date 0..0
* entry.item only Reference(DocumentReference or List)
* emptyReason 0..0



Profile: ListDSUBm
Parent: List 
Id:     IHE.DSUBm.List
Title:  "DSUbm common List with designationType derived from MHD"
Description:    "A profile on the List resource for MHD. Used with both Folder and SubmissionSet.
- MHD adds a codeable Concept to List for use with Folder and SubmissionSet"
* extension contains DesignationTypeDSUbm named designationTypeDSUbm 0..*
* modifierExtension 0..0
// code is used ONLY to switch between folder and submissionSet
* identifier 0..* 
* code 1..1
* code from MHDlistTypesVS (required)

Extension: DesignationTypeDSUbm
Id: ihe-designationTypeDSUbm
Title: "Clinical code of the List"
Description: "Expresses contentType of submissionSet or the codeList of a Folder. Usually expressed in LOINC or SNOMED."
* ^context[+].type = #element
* ^context[=].expression = "List"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1

CodeSystem:  DSUbmlistTypes 
Title: "DSUbm List Types"
Description:  "To use the List resource for two different use-cases we define a code-system with the types of List needed in MHD"
* ^caseSensitive = true
* ^experimental = false
* #folder "Folder as a FHIR List"
* #submissionset "SubmissionSet as a FHIR List"

ValueSet: DSUbmlistTypesVS
Title: "DSUbm List Types ValueSet"
Description: "ValueSet of the DSUbm List Types allowed"
* ^experimental = false
* DSUbmlistTypes#folder
* DSUbmlistTypes#submissionset
*/