Profile: DSUBm_ResourcePublishBundle
Parent: Bundle
Id: ITI-111-ResourcePublish
Description: "Resource Publish transaction from DSUBm profile
- The Bundle shall contain 
    - a SubmissionSet type List.
    - one or more DocumentReference 
    - one or more Folder type List 
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
    DocumentReference 0..* and
    Folders 0..* and
    Patient 0..1
* entry[SubmissionSet].resource only 
    IHE.DSUBm.Minimal.SubmissionSetR4b 
* entry[SubmissionSet] ^short = "the SubmissionSet"
* entry[SubmissionSet] ^definition = "The SubmissionSet defines who submitted it, why they submitted it, when they submitted, what is in it, and where it is destine."
* entry[SubmissionSet].resource 1..1
* entry[SubmissionSet].request 1..1
* entry[SubmissionSet].request.method = #POST

* entry[DocumentReference].resource only 
    IHE.DSUBm.Minimal.DocumentReferenceR4b 
* entry[DocumentReference] ^short = "the DocumentReference resources"
* entry[DocumentReference] ^definition = "any new DocumentReference that are part of the SubmissionSet. These might be new or other associations"
* entry[DocumentReference].resource 1..1
* entry[DocumentReference].request 1..1
* entry[DocumentReference].request.method = #POST
* entry[Folders].resource only 
    IHE.DSUBm.Minimal.FolderR4b 
* entry[Folders] ^short = "Folders"
* entry[Folders] ^definition = "any Folders being created or updated"
* entry[Folders].resource 1..1
* entry[Folders].request 1..1
* entry[Folders].request.method from DSUBmprovideFolderActions
* entry[Patient].resource ^type.code = "Patient"
* entry[Patient].resource ^type.profile = Canonical(Patient)
* entry[Patient] ^short = "the Patient"
* entry[Patient] ^definition = "the Patient"
* entry[Patient].resource 1..1
* entry[Patient].request.method from DSUBmprovidePatientActions


/*
Profile: SubmissionSet
Parent: List
Id: IHE.DSUBm.Minimal.SubmissionSet
Title: "DSUBm SubmissionSet Minimal derived from DSUBm"
Description: "A profile on the List resource for DSUBm SubmissionSet. (see DSUBm)"
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
* code = DSUBmlistTypes#submissionset
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
*/
/*
Profile: ListDSUBm
Parent: List 
Id:     IHE.DSUBm.List
Title:  "DSUbm common List with designationType derived from DSUBm"
Description:    "A profile on the List resource for DSUBm. Used with both Folder and SubmissionSet.
- DSUBm adds a codeable Concept to List for use with Folder and SubmissionSet"
* extension contains DesignationTypeDSUbm named designationTypeDSUBm 0..*
* modifierExtension 0..0
// code is used ONLY to switch between folder and submissionSet
* identifier 0..* 
* code 1..1
* code from DSUbmlistTypesVS (required)

Extension: DesignationTypeDSUBm
Id: ihe-designationTypeDSUBm
Title: "Clinical code of the List"
Description: "Expresses contentType of submissionSet or the codeList of a Folder. Usually expressed in LOINC or SNOMED."
* ^context[+].type = #element
* ^context[=].expression = "List"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
*/

CodeSystem:  DSUBmlistTypes 
Title: "DSUBm List Types"
Description:  "To use the List resource for two different use-cases we define a code-system with the types of List needed in DSUBm"
* ^caseSensitive = true
* ^experimental = false
* #folder "Folder as a FHIR List"
* #submissionset "SubmissionSet as a FHIR List"

ValueSet: DSUBmlistTypesVS
Title: "DSUBm List Types ValueSet"
Description: "ValueSet of the DSUBm List Types allowed"
* ^experimental = false
* DSUBmlistTypes#folder
* DSUBmlistTypes#submissionset

ValueSet: DSUBmprovideFolderActions
Title: "DSUBm Folder List Types ValueSet"
Description: "A ValueSet of the allowed actions in a ITI-65 Provide Document Bundle for the Folder List type Resources. Where Folders are allowed to be Updated in addition to Created."
* ^experimental = false
* http://hl7.org/fhir/http-verb#POST
* http://hl7.org/fhir/http-verb#PUT

ValueSet: DSUBmprovidePatientActions
Title: "DSUBm Patient Types ValueSet"
Description: "A ValueSet of the allowed actions in a ITI-65 Provide Document Bundle for the Patient type Resource. Where Patient would typically be indicated as a GET (read), but might be created or updated depending on policy."
* ^experimental = false
* http://hl7.org/fhir/http-verb#GET
* http://hl7.org/fhir/http-verb#POST
* http://hl7.org/fhir/http-verb#PUT