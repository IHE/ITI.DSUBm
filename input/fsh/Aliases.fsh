Alias: SCT = http://snomed.info/sct
Alias: UCUM = http://unitsofmeasure.org
Alias: LOINC = http://loinc.org

Alias: $DocumentReferenceTopic = http://hl7.org/SubscriptionTopic/DocumentReference
Alias: $DocumentReferenceSub = https://example.org/fhir/Subscription/DocumentReference
Alias: $DocumentReferenceSubStatus = https://example.org/fhir/Subscription/DocumentReference


/*from MHD 
Alias: $DocumentReference = https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.DocumentReference
Alias: $SubmissionSet = https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.SubmissionSet
Alias: $Folder = https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.Folder
*/
Alias: $webHookEndpoint = https://example.org/Endpoints/d7dcc004-808d-452b-8030-3a3a13cd871d
Alias: $Payload = http://hl7.org/fhir/ValueSet/mimetypes

Alias: $DocumentReference = https://example.org/fhir/DocumentReference/aaaaaaaa-bbbb-cccc-dddd-e00444400002

Alias: $v3-ActReason = http://terminology.hl7.org/CodeSystem/v3-ActReason
Alias: $loinc = http://loinc.org
Alias: $v3-Confidentiality = http://terminology.hl7.org/CodeSystem/v3-Confidentiality
Alias: $formatcode = http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode
Alias: $sct = http://snomed.info/sct

Instance: DocumentReference1
InstanceOf: DocumentReference
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2023-09-01T07:56:06.2583244+00:00"
* meta.profile = "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.DocumentReference"
* meta.security = $v3-ActReason#HTEST
* contained = aaaaaaaa-bbbb-cccc-dddd-e00444400004
* masterIdentifier.system = "urn:ietf:rfc:3986"
* masterIdentifier.value = "urn:oid:1.2.840.113556.1.8000.2554.53432.348.12973.17740.34205.4355.50220.62012"
* status = #current
* type = $loinc#60591-5
* category = $loinc#11369-6
* subject = Reference(Patient/example)
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

Instance: aaaaaaaa-bbbb-cccc-dddd-e00444400004
InstanceOf: Patient
Usage: #inline
* identifier.system = "http://example.org/patients"
* identifier.value = "mrn-1234"
* name.family = "Schmidt"
* name.given = "Dee"

Alias: $v3-ActReason = http://terminology.hl7.org/CodeSystem/v3-ActReason
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $v2-0131 = http://terminology.hl7.org/CodeSystem/v2-0131

Instance: PatientExample
InstanceOf: Patient
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2023-08-31T15:59:13.5960932+00:00"
* meta.tag = $v3-ActReason#HTEST "test health data"
* identifier.use = #usual
* identifier.type = $v2-0203#MR
* identifier.system = "urn:oid:1.2.36.146.595.217.0.1"
* identifier.value = "12345"
* identifier.period.start = "2001-05-06"
* identifier.assigner.display = "Acme Healthcare"
* active = true
* name[0].use = #official
* name[=].family = "Chalmers"
* name[=].given[0] = "Peter"
* name[=].given[+] = "James"
* name[+].use = #usual
* name[=].given = "Jim"
* name[+].use = #maiden
* name[=].family = "Windsor"
* name[=].given[0] = "Peter"
* name[=].given[+] = "James"
* name[=].period.end = "2002"
* telecom[0].use = #home
* telecom[+].system = #phone
* telecom[=].value = "(03) 5555 6473"
* telecom[=].use = #work
* telecom[=].rank = 1
* telecom[+].system = #phone
* telecom[=].value = "(03) 3410 5613"
* telecom[=].use = #mobile
* telecom[=].rank = 2
* telecom[+].system = #phone
* telecom[=].value = "(03) 5555 8834"
* telecom[=].use = #old
* telecom[=].period.end = "2014"
* gender = #male
* birthDate = "1974-12-25"
* birthDate.extension.url = "http://hl7.org/fhir/StructureDefinition/patient-birthTime"
* birthDate.extension.valueDateTime = "1974-12-25T14:35:45-05:00"
* deceasedBoolean = false
* address.use = #home
* address.type = #both
* address.text = "534 Erewhon St PeasantVille, Rainbow, Vic  3999"
* address.line = "534 Erewhon St"
* address.city = "PleasantVille"
* address.district = "Rainbow"
* address.state = "Vic"
* address.postalCode = "3999"
* address.period.start = "1974-12-25"
* contact.relationship = $v2-0131#N
* contact.name.family = "du Marché"
* contact.name.family.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-own-prefix"
* contact.name.family.extension.valueString = "VV"
* contact.name.given = "Bénédicte"
* contact.telecom.system = #phone
* contact.telecom.value = "+33 (237) 998327"
* contact.address.use = #home
* contact.address.type = #both
* contact.address.line = "534 Erewhon St"
* contact.address.city = "PleasantVille"
* contact.address.district = "Rainbow"
* contact.address.state = "Vic"
* contact.address.postalCode = "3999"
* contact.address.period.start = "1974-12-25"
* contact.gender = #female
* contact.period.start = "2012"
* managingOrganization = Reference(Organization/1)