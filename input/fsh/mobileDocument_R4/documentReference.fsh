Profile:        PatchParametersR4
Parent:         Parameters
Id:             IHE.DSUBm.Patch.ParametersR4
Title:          "DSUBm DocumentReference Patch Parameters"
Description:    "A profile on the Parameters resource to update DocumentReference" 
* parameter.name = "operation"

// equivalent to MHD Minimal DocumentReference
Profile:        DocumentReferenceR4
Parent:         DocumentReference
Id:             IHE.DSUBm.Minimal.DocumentReferenceR4
Title:          "DSUBm DocumentReference Minimal"
Description:    "A profile on the DocumentReference resource for DSUBm with minimal metadata constraints. "
* modifierExtension 0..0
* masterIdentifier only UniqueIdIdentifierR4
* masterIdentifier 1..1
* identifier 0..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #open
* identifier contains entryUUID 0..*
* identifier[entryUUID] only EntryUUIDIdentifierR4
* status 1..1
* status from DocumentReferenceStatsR4 (required)
* docStatus 0..0
* type 0..1 MS
* category 0..1 MS
* subject 0..1 MS
* subject only Reference(Patient)
* date 0..1 MS
* author 0..* MS
* authenticator 0..1
//* custodian 0..0
* description 0..1
* securityLabel 0..* MS
* content 1..1
* content ^definition = "The document and format referenced."
* content.attachment.contentType 1..1
* content.attachment.language 0..1 MS
* content.attachment.data 0..0
* content.attachment.url 1..1
* content.attachment.size 0..1
* content.attachment.hash 0..1
* content.attachment.title 0..1
* content.attachment.creation 0..1 MS
* content.format 0..1 MS
* content.format from http://ihe.net/fhir/ihe.formatcode.fhir/ValueSet/formatcode (preferred)
//* context.encounter 0..0
* context.event 0..*
* context.period 0..1 MS
* context.facilityType 0..1 MS
* context.practiceSetting 0..1 MS
* context.sourcePatientInfo 0..1 MS
* context.related 0..*
* relatesTo 0..* MS
* relatesTo obeys iti-mhd-replR4


Invariant:   iti-mhd-replR4
Description: "a DocumetReference replacements needs to relate to a superseded DocumentReference"
Expression:  "code='replaces' implies target.exists()"
Severity:    #error

/* // equivalent to DSUBm DocumentReference Comprehensive UnContained Option
Profile:        UnContainedComprehensiveDocumentReferenceR4
Parent:         IHE.DSUBm.Minimal.DocumentReferenceR4
Id:             IHE.DSUBm.UnContained.Comprehensive.DocumentReferenceR4
Title:          "DSUBm DocumentReference Comprehensive UnContained References Option"
Description:    "A profile on the DocumentReference resource for DSUBm with Comprehensive Metadata Option but without a requirement for contained author, authenticator, or sourcePatientInfo. "
* type 1..1
* category 1..1
* subject 1..1
* securityLabel 1..*
* content.attachment.language 1..1
* content.attachment.creation 1..1
* content.format 1..1
* context 1..1
* context.facilityType 1..1
* context.practiceSetting 1..1
* context.sourcePatientInfo 1..1 

// equivalent to DSUBm Comprehensive DocumentReference - contained
Profile: ComprehensiveDocumentReferenceR4
Parent: IHE.DSUBm.UnContained.Comprehensive.DocumentReferenceR4
Id: IHE.DSUBm.Comprehensive.DocumentReferenceR4
Title: "DSUBm DocumentReference Comprehensive"
Description:    "A profile on the DocumentReference resource for DSUBm Comprehensive Option with Contained (not UnContained), compatible with XDS-on-FHIR and XCA use.
"
* author ^type.aggregation = #contained
* authenticator ^type.aggregation = #contained
* context.sourcePatientInfo ^type.aggregation = #contained
*/
// mappings to XDS 
Mapping: DocumentEntry-MappingR4
Source:	DocumentReferenceR4
Target: "XDS"
Title: "XDS and DSUBm Mapping"
* -> "XDS DocumentEntry" "Used in the context of the IHE DSUBm ImplementationGuide"
* category -> "DocumentEntry.classCode"
* author -> "DocumentEntry.author"
* status -> "DocumentEntry.availabilityStatus"
* description -> "DocumentEntry.comments"
* securityLabel -> "DocumentEntry.confidentialityCode"
* content.attachment.creation -> "DocumentEntry.creationTime"
* identifier -> "DocumentEntry.entryUUID"
* context.event -> "DocumentEntry.eventCodeList"
* content.format -> "DocumentEntry.formatCode"
* content.attachment.hash -> "DocumentEntry.hash"
* context.facilityType -> "DocumentEntry.healthcareFacilityTypeCode"
// DocumentEntry.homeCommunityId -- does not actually exist as metadata on DocumentEntry, and does not have a place in DocumentReference. might be encoded in the content.attachment.url
* content.attachment.language -> "DocumentEntry.languageCode"
* authenticator -> "DocumentEntry.legalAuthenticator"
* custodian -> "not mapped"
* content.attachment.contentType -> "DocumentEntry.mimeType"
* subject -> "DocumentEntry.patientId"
* context.practiceSetting -> "DocumentEntry.practiceSettingCode"
* content.attachment.url -> "DocumentEntry.repositoryUniqueId or DocuemntEntry.URI"
* context.period.start -> "DocumetEntry.serviceStartTime"
* context.period.end -> "DocumentEntry.serviceStopTime"
* content.attachment.size -> "DocumentEntry.size"
* context.sourcePatientInfo.identifier -> "DocumentEntry.sourcePatientId"
* context.sourcePatientInfo.reference -> "DocumentEntry.sourcePatientInfo"
* content.attachment.title -> "DocumentEntry.title"
* type -> "DocumentEntry.typeCode"
* masterIdentifier -> "DocumentEntry.uniqueId"
* context.encounter -> "DocumentEntry.referenceIdList with CXi encoding for urn:ihe:iti:xds:2015:encounterId"
* context.related -> "DocumentEntry.referenceIdList using CXi encoding for type when possible"
* meta.profile -> "DocumentEntry.limitedMetadata"
// DocumentEntry.objectType -- is not represented
* relatesTo -> "DocumentEntry Associations"
* relatesTo.code -> "DocumentEntry Associations.type"
* relatesTo.target -> "DocumentEntry Associations.reference"


Instance:   AssociationTypeVsRelatesToR4
InstanceOf: ConceptMap
Title:      "AssociationType vs RelatesTo"
Description: "map between XDS Association Types and DSUBm FHIR DocumentReference relatesTo code."
Usage: #definition
* url = "https://profiles.ihe.net/ITI/DSUBm/ConceptMap/AssociationTypeVsRelatesToR4"
* name =  "AssociationTypeVsRelatesTo"
* title = "AssociationType vs RelatesTo"
* description = "map between XDS Association Types and DSUBm FHIR DocumentReference relatesTo code."
* experimental = false
* status = #active
* date = 2021-05-15
* publisher = "IHE"
* description = "map between XDS Association Types and DSUBm FHIR DocumentReference relatesTo code"
* purpose = "show the mapping between Association Types and relatesTo code"
* group.source = "urn:ihe:iti:2007:AssociationType"
* group.target = "http://hl7.org/fhir/document-relationship-type"
* group.element[+].code = #RPLC
* group.element[=].target.equivalence = #equal
* group.element[=].target.code = #replaces
* group.element[+].code = #XFRM
* group.element[=].target.equivalence = #equal
* group.element[=].target.code = #transforms
* group.element[+].code = #APND
* group.element[=].target.equivalence = #equal
* group.element[=].target.code = #appends
* group.element[+].code = #XFRM_RPLC
* group.element[=].target.equivalence = #narrower
* group.element[=].target.code = #replaces
* group.element[=].target.comment = "An XDS Transform Replacement is both a document that replaces and transforms. The mapping here indicates Replace as that is the most specific change."
* group.element[+].code = #signs
* group.element[=].target.equivalence = #equal
* group.element[=].target.code = #signs
* group.element[+].code = #IsSnapshotOf
* group.element[=].target.equivalence = #inexact
* group.element[=].target.code = #transforms
* group.element[=].target.comment = "An XDS IsSnapshotOf is a new instance of what is defined in the parent DocumentEntry (DocumentReference), thus it is a transform in a manner, but is not exactly a transform of the parent document."


ValueSet: DocumentReferenceStatsR4
Title: "DSUBm DocumentReference status codes"
Description: "ValueSet that does not include entered-in-error as that does not map"
* ^experimental = false
* http://hl7.org/fhir/document-reference-status#current
* http://hl7.org/fhir/document-reference-status#superseded


Instance:   FhirStatusVsStatusCodeR4
InstanceOf: ConceptMap
Title:      "FHIR status vs ebRIM Status Type Code"
Description: "map between XDS ebRIM Status Type Codes and DSUBm FHIR DocumentReference.status code."
Usage: #definition
* url = "https://profiles.ihe.net/ITI/DSUBm/ConceptMap/FhirStatusVsStatusCodeR4"
* name =  "FhirStatusVsStatusCode"
* status = #active
* date = 2022-05-05
* publisher = "IHE"
* title = "FHIR status vs ebRIM Status Type Code"
* description = "map between XDS ebRIM Status Type Codes and DSUBm FHIR DocumentReference.status code. Table 2:3.67.4.1.3.1-2. Note that the codes given are used without a system in both FHIR and ebRIM."
* purpose = "show the mapping between ebRIM Status Type Codes and FHIR .status code"
* experimental = false
* group.source = "urn:ietf:rfc:3986"
* group.target = "http://hl7.org/fhir/document-reference-status"
* group.element[+].code = #urn:oasis:names:tc:ebxml-regrep:StatusType:Approved
* group.element[=].target.equivalence = #equal
* group.element[=].target.code = #current
* group.element[+].code = #urn:oasis:names:tc:ebxml-regrep:StatusType:Deprecated
* group.element[=].target.equivalence = #equal
* group.element[=].target.code = #superseded