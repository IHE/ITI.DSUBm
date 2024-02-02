/*
Instance: DocumentReference-PatientDependent-Subscription 
InstanceOf: DSUBm_DocumentReference_PatientDependent_Subscription
Usage: #example
Title:       "DocumentReference PatientDependent Subscription"
Description: "R4 Example of a Subscription describing a PatientDependent 'DocumentReference' resource."

* status = #active
* end = "2023-12-31T12:00:00+00:00"
* reason = "R4/B Example Topic-Based Subscription for DocumentReference"
// vedi DocumentReference-PatientDependent-SubscriptionTopic

* criteria.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-filter-criteria"
* criteria.extension.valueString = "DocumentReference?patient=Patient/12345"
* channel.type = #rest-hook
* channel.endpoint = "https://recipient.example.com/fhir/r4b/DocumentReference"
* channel.payload = #application/fhir+json
* channel.payload.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-payload-content"
* channel.payload.extension.valueCode = #full-resource
*/