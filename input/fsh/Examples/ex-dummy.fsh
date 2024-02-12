
Instance:   ex-patient
InstanceOf: Patient
Title:      "Dummy Patient example"
Description: "Dummy patient example for completeness sake. No actual use of this resource other than an example target"
Usage: #example
// history - http://playgroundjungle.com/2018/02/origins-of-john-jacob-jingleheimer-schmidt.html
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* name[+].use = #usual
* name[=].family = "Schmidt"
* name[=].given = "John"
* name[+].use = #old
* name[=].family = "Schnidt"
* name[=].given[+] = "John"
* name[=].given[+] = "Jacob"
* name[=].given[+] = "Jingle"
* name[=].given[+] = "Heimer"
* name[=].period.end = "1960"
* name[+].use = #official
* name[=].family = "Schmidt"
* name[=].given[+] = "John"
* name[=].given[+] = "Jacob"
* name[=].given[+] = "Jingleheimer"
* name[=].period.start = "1960-01-01"
* name[+].use = #nickname
* name[=].family = "Schmidt"
* name[=].given = "Jack"
* gender = #other
* birthDate = "1923-07-25"
* address.state = "WI"
* address.country = "USA"

Instance:   ex-device
InstanceOf: Device
Title:      "Dummy Device example"
Description: "Dummy Device example for completeness sake. No actual use of this resource other than an example target"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST

Instance:   ex-DocumentReferenceMinimal
InstanceOf: IHE.MHD.Minimal.DocumentReference
Title:      "DocumentReference for Minimal metadata"
Description: "Example of a minimal DocumentReference resource. This is very unlikely to be acceptable anywhere, but it is the minimum required."
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* masterIdentifier.system = "urn:ietf:rfc:3986"
* masterIdentifier.value = "urn:oid:1.2.840.113556.1.8000.2554.53432.348.12973.17740.34205.4355.50220.62012"
* identifier[entryUUID].system = "urn:ietf:rfc:3986"
* identifier[entryUUID].value = "urn:uuid:7d5bb8ac-68ee-4926-85e7-b8aac8e1f09d"
* identifier[entryUUID].use = #official
* status = #current
* content.attachment.contentType = #text/plain
* content.attachment.url = "http://example.com/nowhere.txt"

Instance:   ex-minimalSubmissionSet
InstanceOf: IHE.MHD.Minimal.SubmissionSet
Title:      "SubmissionSet for Minimal metadata"
Description: "Example of a minimal submissionSet in List resource."
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier[entryUUID].system = "urn:ietf:rfc:3986"
* identifier[entryUUID].value = "urn:uuid:40b3366f-7e4b-4d02-bbac-901aaa8d7183"
* identifier[entryUUID].use = #official
* identifier[uniqueId].system = "urn:ietf:rfc:3986"
* identifier[uniqueId].value = "urn:oid:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41281.46354"
* identifier[uniqueId].use = #usual
* status = #current
* mode = #working
* code = MHDlistTypes#submissionset
* date = 2004-12-25T23:50:50-05:00
* entry[0].item = Reference(DocumentReference/ex-documentreference)
* extension[sourceId].valueIdentifier.value = "urn:oid:1.2.3.4"

Instance:   ex-minimalFolder
InstanceOf: IHE.MHD.Minimal.Folder
Title: "Example Minimal Folder"
Description:      "Folder in List resource conforming only to Minimal metadata"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier[entryUUID].system = "urn:ietf:rfc:3986"
* identifier[entryUUID].value = "urn:uuid:5e2d58a3-2286-4a0e-8637-86f51be2d184"
* identifier[entryUUID].use = #official
* identifier[uniqueId].system = "urn:ietf:rfc:3986"
* identifier[uniqueId].value = "urn:oid:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41281.46391"
* identifier[uniqueId].use = #usual
* status = #current
* mode = #working
* code = MHDlistTypes#folder
* entry[0].item = Reference(DocumentReference/ex-documentreference)


Instance:   aaaaaaaa-bbbb-cccc-dddd-e00111100004
InstanceOf: Patient
Title:      "Dummy Patient example"
Description: "Dummy patient for push scenario, carried in the Bundle."
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* name[+].family = "Schmidt"
* name[=].given = "Dee"

Instance: in-practitioner
InstanceOf: Practitioner
Title: "Intended Practitioner Recipient example"
Description: "a Practitioner identified only as an email address, carried as a contained resoruce."
Usage: #inline
* telecom.system = #email
* telecom.value = "JohnMoehrke@gmail.com"

Instance: in-practitioner2
InstanceOf: Practitioner
Title: "Intended Practitioner Recipient example"
Description: "a Practitioner identified only as an email address, carried as a contained resoruce."
Usage: #inline
* telecom.system = #email
* telecom.value = "NOT_JohnMoehrke@gmail.com"



Instance:   aaaaaaaa-bbbb-cccc-dddd-e00111100001
InstanceOf: IHE.MHD.Minimal.SubmissionSet
Title:      "SubmissionSet for Minimal metadata in a bundle"
Description: "Example of a minimal submissionSet in List resource with an intended recipient used in a bundle."
Usage: #inline
* text.status = #extensions
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">SubmissionSet with Patient</div>"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier[uniqueId].system = "urn:ietf:rfc:3986"
* identifier[uniqueId].value = "urn:oid:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41281.46343"
* identifier[uniqueId].use = #usual
* status = #current
* mode = #working
* code = MHDlistTypes#submissionset
* date = 2004-10-25T23:50:50-05:00
* subject = Reference(urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00111100004)
* entry[+].item = Reference(urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00111100002)
* extension[sourceId].valueIdentifier.value = "urn:oid:1.2.3.4"
* contained[0] = in-practitioner
* extension[intendedRecipient].valueReference = Reference(in-practitioner)


Instance:   aaaaaaaa-bbbb-cccc-dddd-e00111100002
InstanceOf: IHE.MHD.Minimal.DocumentReference
Title:      "DocumentReference for Minimal metadata"
Description: "Example of a minimal DocumentReference resource. This points at a Binary also in the bundle."
Usage: #inline
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* masterIdentifier.system = "urn:ietf:rfc:3986"
* masterIdentifier.value = "urn:oid:1.2.840.113556.1.8000.2554.53432.348.12973.17740.34205.4355.50220.62012"
* status = #current
* subject = Reference(urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00111100004)
* content.format = http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode#urn:ihe:iti:xds-sd:text:2008
* content.attachment.url = "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00111100003"
* content.attachment.contentType = #text/plain
* content.attachment.hash = "MGE0ZDU1YThkNzc4ZTUwMjJmYWI3MDE5NzdjNWQ4NDBiYmM0ODZkMA=="
* content.attachment.size = 11


