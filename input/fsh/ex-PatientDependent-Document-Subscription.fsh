Instance:    PatientDependent-Document-Subscription 
InstanceOf:  DSUBm_Subscription
Usage:       #example
Title:       "Patient Dependent Document Subscription"
Description: "R4/B Example of a topic-based 'DocumentReference' subscription."
* id       = "PatientDependent-Document-Subscription"
* status   = #requested
* end      = "2023-12-31T12:00:00Z"
* reason   = "R4/B Example Topic-Based Subscription for DocumentReference"
* criteria = "http://example.org/FHIR/R4B/SubscriptionTopic/DocumentReference"
* criteria.extension[filterCriteria].valueString       = "DocumentReference?subject.reference=Patient/1234&type.code=57832-8"
* channel.type.value                                   = #rest-hook 
* channel.endpoint                                     = $webHookEndpoint
* channel.payload                                      = #application/fhir+json
* channel.payload.extension[content].valueCode         = #id-only