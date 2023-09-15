Instance:   ex-patient
InstanceOf: Patient
Title: "Example Patient"
Description: "The patient from which all the example relate"
// history - http://playgroundjungle.com/2018/02/origins-of-john-jacob-jingleheimer-schmidt.html
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* name[0].use = #usual
* name[0].family = "Smith"
* name[0].given = "Jack"
* name[1].use = #old
* name[1].family = "Schnidt"
* name[1].given[0] = "John"
* name[1].given[1] = "Jacob"
* name[1].given[2] = "Jingle"
* name[1].given[3] = "Heimer"
* name[1].period.end = "1960"
* name[2].use = #official
* name[2].family = "Smith"
* name[2].given[0] = "John"
* name[2].given[1] = "Jacob"
* name[2].given[2] = "Jingleheimer"
* name[2].period.start = "1960-01-01"
* gender = #other
* birthDate = "1923-07-25"
* address.state = "WI"
* address.country = "USA"

Instance: aaaaaaaa-bbbb-cccc-dddd-e00444400004
InstanceOf: Patient
Usage: #inline
* identifier.system = "http://example.org/patients"
* identifier.value = "mrn-1234"
* name.family = "Schmidt"
* name.given = "Dee"


Instance: PatientExample
InstanceOf: Patient
Description: "R4B Example of Patient resource"
Usage: #example
* meta.security = $v3-ActReason#HTEST
* name[0].use = #usual
* name[=].family = "Schmidt"
* name[=].given = "John"
* name[+].use = #old
* name[=].family = "Schnidt"
* name[=].given[0] = "John"
* name[=].given[+] = "Jacob"
* name[=].given[+] = "Jingle"
* name[=].given[+] = "Heimer"
* name[=].period.end = "1960"
* name[+].use = #official
* name[=].family = "Schmidt"
* name[=].given[0] = "John"
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
* managingOrganization = Reference(Organization/ex-organization)

Instance: ex-organization
InstanceOf: Organization
Description: "R4B Example of Organization resource"
Usage: #example
* meta.security = $v3-ActReason#HTEST
* name = "nowhere"
