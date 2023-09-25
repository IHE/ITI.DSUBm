// equivalent to MHD Minimal SubmissionSet
Profile:        SubmissionSetR4b
Parent:         DSUBmListR4b
Id:             IHE.DSUBm.Minimal.SubmissionSetR4b
Title:          "DSUBm SubmissionSet Minimal"
Description:    "A profile on the List resource for DSUBm SubmissionSet."
* extension[designationType] 0..1 MS
* extension contains SourceId named sourceId 1..1
* extension contains IntendedRecipient named intendedRecipient 0..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #open
* identifier contains uniqueId 0..1
* identifier[uniqueId] only SubmissionSetUniqueIdIdentifierR4b
* identifier contains entryUUID 0..*
* identifier[entryUUID] only EntryUUIDIdentifierR4b
* status = #current
* mode = #working
* title 0..1
* code = DSUBmlistTypesR4b#submissionset
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


Extension: SourceId
Id: ihe-sourceId
Title: "Publisher organization identity of the SubmissionSet"
Description: "The globally unique, immutable, identifier of the entity that contributed the SubmissionSet. When a broker is involved in sending SubmissionSets from a collection of client systems, it shall use a different sourceId for submissions from each separate system to allow for tracking. The format of the identifier is an OID."
* ^context[+].type = #element
* ^context[=].expression = "List"
* value[x] only Identifier
* valueIdentifier 1..1

Extension: AuthorOrg
Id: ihe-authorOrg
Title: "Author organization of the SubmissionSet"
Description: "When the author of the SubmissionSet is an Organization, this extension shall be used."
* ^context[+].type = #element
* ^context[=].expression = "List.source"
* value[x] only Reference(Organization)
* valueReference 1..1

Instance: List-SourceId
InstanceOf: SearchParameter
Title: "search on the IHE defined extension for SourceId"
Usage: #definition
* url = "https://profiles.ihe.net/ITI/DSUBm/SearchParameter/List-SourceId"
* description = "This SearchParameter enables finding Lists by the SourceId of a submissionSet."
* name = "SourceId"
* status = #active
* code = #sourceId
* base = #List
* expression = "(extension('https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/SourceId').value as Token)"
* type = #token


Extension: IntendedRecipient
Id: ihe-intendedRecipient
Title: "Intended recipient of the SubmissionSet"
Description: "holds the identity of the organization or person the SubmissionSet is intended. For XDR and eMail (e.g. Direct) this tends to be a Practitioner or Patient with a telecom holding an email, but this is not strictly required."
* ^context[+].type = #element
* ^context[=].expression = "List"
* value[x] only Reference(Practitioner or Organization or Patient or RelatedPerson or Group or Device or Location)
* valueReference 1..1

/*
// equivalent to DSUBm SubmissionSet Comprehensive UnContained
Profile:        SubmissionSetComprehensiveUnContainedR4b
Parent:         IHE.DSUBm.Minimal.SubmissionSetR4b
Id:             IHE.DSUBm.UnContained.Comprehensive.SubmissionSetR4b
Title:          "DSUBm SubmissionSet Comprehensive UnContained"
Description:    "A profile on the List resource for DSUBm UnContained Comprehensive SubmissionSet.
- DSUBm is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model, 
- the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and 
- the use defined here is FHIR List for use as a SubmissionSet implementation of the 
- ebRIM implementation at [3:4.2.3.3 SubmissionSet Attributes](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.3).
- with use-cases and constraints found in [3:4.3.1 Submission Metadata Attribute Optionality](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3.1) for 
  - DSUBm Document Source that has implemented both Comprehensive Metadata Option and UnContained References Option"
* subject 1..1
* extension[designationType] 1..1


// equivalent to DSUBm Comprehensive SubmissionSet Contained
Profile:        SubmissionSetComprehensiveR4b
Parent:         IHE.DSUBm.UnContained.Comprehensive.SubmissionSetR4b
Id:             IHE.DSUBm.Comprehensive.SubmissionSetR4b
Title:          "DSUBm SubmissionSet Comprehensive"
Description:    "A profile on the List resource for DSUBm Comprehensive SubmissionSet.
- DSUBm is based on the [IHE Document Sharing](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) model, 
- the [3:4.1 Abstract Metadata Model](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.1.html#4.1), and 
- the use defined here is FHIR List for use as a SubmissionSet implementation of the 
- ebRIM implementation at [3:4.2.3.3 SubmissionSet Attributes](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.3).
- with use-cases and constraints found in [3:4.3.1 Submission Metadata Attribute Optionality](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.3.html#4.3.1) for 
  - DSUBm Comprehensive Option Document Source
  - aka the XDS Document Source requirements
  - aka the XDR Document Source requirements"
* source ^type.aggregation = #contained
*/

// mappings to XDS 
Mapping: SubmissionSet-MappingR4b
Source:	IHE.DSUBm.Minimal.SubmissionSetR4b
Target: "XDS"
Title: "XDS and DSUBm Mapping"
* -> "XDS SubmissionSet" "Used in the context of the IHE DSUBm ImplementationGuide"
* meta.profile -> "SubmissionSet.limitedMetadata"
* extension[sourceId] -> "SubmissionSet.sourceId"
* extension[intendedRecipient] -> "SubmissionSet.intendedRecipient"
* extension[designationType] -> "SubmissionSet.contentTypeCode"
* source.extension[authorOrg] -> "SubmissionSet.author when the author is an Organization"
* identifier -> "SubmissionSet.entryUUID and SubmissionSet.uniqueId"
* status -> "SubmissionSet.availabilityStatus"
* mode -> "shall be 'working'"
* title -> "SubmissionSet.title"
* code -> "shall be 'submissionset'"
* subject -> "SubmissionSet.patientId"
* encounter -> "n/a"
* date -> "SubmissionSet.submissionTime"
* source -> "SubmissionSet.author"
* orderedBy -> "n/a"
* note -> "SubmissionSet.comments"
* entry.flag -> "n/a"
* entry.deleted -> "n/a"
* entry.date -> "n/a"
* entry.item -> "references to DocumentReference(s) and Folder List(s)"
* emptyReason -> "n/a"