/*
Instance: ResourcePublish-ITI-111 
InstanceOf: ResourcePublishBundleMinimal
Title:      "Request message for Resource Publish with MHD ComprehensiveDocumentReference"
Description: "Bundle example that contains: 
- SubmissionSet - identifies the documentReference(s)
- DocumentReference - First DocumentReference
- DocumentReference - Second DocumentReference
"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* type = #transaction
* timestamp = 2004-10-25T23:50:50-05:00
* entry[SubmissionSet].fullUrl = "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00444400001"
* entry[SubmissionSet].resource = aaaaaaaa-bbbb-cccc-dddd-e00444400001
* entry[SubmissionSet].request.url = "List"
* entry[SubmissionSet].request.method = #POST

* entry[DocumentRefs][+].fullUrl = "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00444400002"
* entry[DocumentRefs][=].resource = aaaaaaaa-bbbb-cccc-dddd-e00444400002
* entry[DocumentRefs][=].request.url = "DocumentReference"
* entry[DocumentRefs][=].request.method = #POST

* entry[DocumentRefs][+].fullUrl = "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00444400005"
* entry[DocumentRefs][=].resource = aaaaaaaa-bbbb-cccc-dddd-e00444400005
* entry[DocumentRefs][=].request.url = "DocumentReference"
* entry[DocumentRefs][=].request.method = #POST

Instance:   aaaaaaaa-bbbb-cccc-dddd-e00444400001
InstanceOf: IHE.MHD.Comprehensive.SubmissionSet
Title:      "SubmissionSet for Comprhensive metadata in a bundle"
Description: "Example of a comprehensive submissionSet in List resource with an intended recipient used in a bundle."
Usage: #inline
* text.status = #extensions
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">SubmissionSet with Patient</div>"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier[uniqueId].system = "urn:ietf:rfc:3986"
* identifier[uniqueId].value = "urn:oid:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41281.46348"
* identifier[uniqueId].use = #usual
* status = #current
* mode = #working
* code = MHDlistTypes#submissionset
* date = 2004-10-25T23:50:50-05:00
* entry[+].item = Reference(urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00444400002)
* entry[+].item = Reference(urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00444400005)
* extension[sourceId].valueIdentifier.value = "urn:oid:1.2.3.4"
* subject = Reference(Patient/ex-patient)
* extension[designationType].valueCodeableConcept = http://snomed.info/sct#225728007


Instance:   aaaaaaaa-bbbb-cccc-dddd-e00444400002
InstanceOf: IHE.MHD.Comprehensive.DocumentReference
Title:      "DocumentReference for Comprehensive metadata"
Description: "Example of a comprehensive DocumentReference resource being used in a PUSH. This contains the Patient, thus equivilant of XDR/XDM use of sourcePatientInfo."
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* masterIdentifier.system = "urn:ietf:rfc:3986"
* masterIdentifier.value = "urn:oid:1.2.840.113556.1.8000.2554.53432.348.12973.17740.34205.4355.50220.62012"
* status = #current
* contained[+] = aaaaaaaa-bbbb-cccc-dddd-e00444400004
* context.sourcePatientInfo = Reference(aaaaaaaa-bbbb-cccc-dddd-e00444400004)
* subject = Reference(Patient/ex-patient)
* content.format = http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode#urn:ihe:iti:xds-sd:text:2008
* content.attachment.url = "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00444400003"
* content.attachment.contentType = #text/plain
* content.attachment.hash = "MGE0ZDU1YThkNzc4ZTUwMjJmYWI3MDE5NzdjNWQ4NDBiYmM0ODZkMA=="
* content.attachment.size = 11
* type = http://loinc.org#60591-5
* category = http://loinc.org#11369-6
* securityLabel = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#R
* context.facilityType = http://snomed.info/sct#82242000
* context.practiceSetting =  http://snomed.info/sct#408467006
* content.attachment.language = urn:ietf:bcp:47#en
* content.attachment.creation = 2020-02-01T23:50:50-05:00
* content.attachment.title = "Hello World"
* date = 2020-02-01T23:50:50-05:00

Instance:   aaaaaaaa-bbbb-cccc-dddd-e00444400005
InstanceOf: IHE.MHD.Comprehensive.DocumentReference
Title:      "DocumentReference for Comprehensive metadata"
Description: "Example of a comprehensive DocumentReference resource being used in a PUSH. This contains the Patient, thus equivilant of XDR/XDM use of sourcePatientInfo."
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* masterIdentifier.system = "urn:ietf:rfc:3986"
* masterIdentifier.value = "urn:oid:1.2.840.113556.1.8000.2554.53432.348.12973.17740.34205.4355.50220.62012"
* status = #current
* contained[+] = aaaaaaaa-bbbb-cccc-dddd-e00444400004
* context.sourcePatientInfo = Reference(aaaaaaaa-bbbb-cccc-dddd-e00444400004)
* subject = Reference(Patient/ex-patient)
* content.format = http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode#urn:ihe:iti:xds-sd:text:2008
* content.attachment.url = "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00444400006"
* content.attachment.contentType = #text/plain
* content.attachment.hash = "Y2QzNmIzNzA3NThhMjU5YjM0ODQ1MDg0YTZjYzM4NDczY2I5NWUyNw=="
* content.attachment.size = 445
* type = http://loinc.org#60591-5
* category = http://loinc.org#11369-6
* securityLabel = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#R
* context.facilityType = http://snomed.info/sct#82242000
* context.practiceSetting =  http://snomed.info/sct#408467006
* content.attachment.language = urn:ietf:bcp:47#en
* content.attachment.creation = 2020-02-01T23:50:50-05:00
* content.attachment.title = "Laurem ipsum"
* date = 2020-02-01T23:50:50-05:00

*/