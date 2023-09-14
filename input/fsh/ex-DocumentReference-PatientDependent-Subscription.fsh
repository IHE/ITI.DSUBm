Instance:    DocumentRefence_PatientDependent_Subscription 
InstanceOf:  DSUBm_Subscription_DocumentReference_PatientDependent
Usage: #example
Title:       "DocumentReference PatientDependent Subscription"
Description: "R4/B Example of a Subscription describing a PatientDependent 'DocumentReference' resource."
* meta.profile = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-Subscription"
* status = #active
* end = "2023-12-31T12:00:00+00:00"
* reason = "R4/B Example Topic-Based Subscription for DocumentReference"
// vedi DocumentReference-PatientDependent-SubscriptionTopic
* criteria = "http://example.org/FHIR/SubscriptionTopic/DocumentReference-SubscriptionTopic2"
* criteria.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-filter-criteria"
* criteria.extension.valueString = "DocumentReference?patient=Patient/example"
* channel.type = #rest-hook
* channel.endpoint = "https://subscriptions.argo.run/fhir/r4b/$subscription-hook"
* channel.payload = #application/fhir+json
* channel.payload.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-payload-content"
* channel.payload.extension.valueCode = #full-resource