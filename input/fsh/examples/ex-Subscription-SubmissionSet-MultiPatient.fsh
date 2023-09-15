Instance: SubmissionSet-MultiPatient-Subscription 
InstanceOf: DSUBm-SubmissionSet-MultiPatient-Subscription
Usage: #example
Title:       "SubmissionSet MultiPatient Subscription"
Description: "R4/B Example of a Subscription describing a MultiPatient 'SubmissionSet' resource."

* status = #active
* end = "2023-12-31T12:00:00+00:00"
* reason = "R4/B Example Topic-Based Subscription for SubmissionSet withiut an explicit patient"
//* criteria = "http://example.org/FHIR/SubscriptionTopic/SubmissionSet-SubscriptionTopic2"
* criteria.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-filter-criteria"
* criteria.extension.valueString = "SubmissionSet?sourceId:1234"
* channel.type = #rest-hook
* channel.endpoint = "https://subscriptions.argo.run/fhir/r4b/$subscription-hook"
* channel.payload = #application/fhir+json
* channel.payload.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-payload-content"
* channel.payload.extension.valueCode = #full-resource

