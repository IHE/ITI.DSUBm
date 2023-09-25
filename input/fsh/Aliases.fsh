Alias: SCT = http://snomed.info/sct
Alias: UCUM = http://unitsofmeasure.org
Alias: $LOINC = http://loinc.org

Alias: $DocumentReferenceTopic = http://hl7.org/SubscriptionTopic/DocumentReference
Alias: $DocumentReferenceSub = https://example.org/fhir/Subscription/DocumentReference
Alias: $DocumentReferenceSubStatus = https://example.org/fhir/Subscription/DocumentReference

/*from MHD 
Alias: $DocumentReference = https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.DocumentReference
Alias: $SubmissionSet = https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.SubmissionSet
Alias: $Folder = https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.Folder
*/

Alias: $webHookEndpoint = https://example.org/Endpoints/d7dcc004-808d-452b-8030-3a3a13cd871d
Alias: $Payload = urn:ietf:bcp:13
Alias: $DocumentReference = https://example.org/fhir/DocumentReference/aaaaaaaa-bbbb-cccc-dddd-e00444400002
Alias: $v3-ActReason = http://terminology.hl7.org/CodeSystem/v3-ActReason

Alias: $v3-Confidentiality = http://terminology.hl7.org/CodeSystem/v3-Confidentiality
Alias: $formatcode = http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode
Alias: $sct = http://snomed.info/sct
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $v2-0131 = http://terminology.hl7.org/CodeSystem/v2-0131

/*
Instance: DocumentReference1
InstanceOf: DocumentReference
Description: "Example of DocumentReference resource with minimal metadata"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2023-09-01T07:56:06.2583244+00:00"
//* meta.profile = "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.DocumentReference"
* meta.security = $v3-ActReason#HTEST
* contained = aaaaaaaa-bbbb-cccc-dddd-e00444400004
* masterIdentifier.system = "urn:ietf:rfc:3986"
* masterIdentifier.value = "urn:oid:1.2.840.113556.1.8000.2554.53432.348.12973.17740.34205.4355.50220.62012"
* status = #current
* type = http://loinc.org#60591-5
* category = http://loinc.org#11369-6
* subject = Reference(PatientExample)
* date = "2020-02-01T23:50:50-05:00"
* securityLabel = $v3-Confidentiality#R
* content.attachment.contentType = #text/plain
* content.attachment.language = #en
* content.attachment.url = "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00444400006"
* content.attachment.size = 445
* content.attachment.hash = "Y2QzNmIzNzA3NThhMjU5YjM0ODQ1MDg0YTZjYzM4NDczY2I5NWUyNw=="
* content.attachment.title = "Laurem ipsum"
* content.attachment.creation = "2020-02-01T23:50:50-05:00"
* content.format = $formatcode#urn:ihe:iti:xds-sd:text:2008
* context.facilityType = $sct#82242000
* context.practiceSetting = $sct#408467006
* context.sourcePatientInfo = Reference(aaaaaaaa-bbbb-cccc-dddd-e00444400004)
*/





