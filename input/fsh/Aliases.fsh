Alias: SCT = http://snomed.info/sct
Alias: UCUM = http://unitsofmeasure.org
Alias: $LOINC = http://loinc.org
Alias: $Payload = urn:ietf:bcp:13

/* in R4 see also
Alias: $fhir-types = http://hl7.org/fhir/resource-types
Alias: $fhir-types = http://hl7.org/fhir/ValueSet/all-types
*/
Alias: $webHookEndpoint = https://example.org/Endpoints/endpoint1

Alias: $base = https://profiles.ihe.net/ITI/DSUBm

Alias: $query-types = http://example.org/query-types


CodeSystem:  DSUBmFhirType
Title: "DSUBm Fhir Type"
Description:  "To use in the Basic.code to indicate that the Basic resources is used as a SubscriptionTopic."
* ^caseSensitive = true
* ^experimental = false
* #SubscriptionTopic "SubscriptionTopic resource"


ValueSet: DSUBmFhirTypeVS
Title: "DSUBm List Types ValueSet"
Description: "ValueSet of the DSUBm List Types allowed"
* ^experimental = false
* DSUBmFhirType#SubscriptionTopic

