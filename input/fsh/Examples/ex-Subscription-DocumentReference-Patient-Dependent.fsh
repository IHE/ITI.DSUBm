Instance:    PatientDependent-Document-Subscription 
InstanceOf:  DSUBm_DocumentReference_PatientDependent_Subscription
Usage:       #example
Title:       "Patient Dependent DocumentReference Subscription"
Description: "R4 Example of an active topic-based 'DocumentReference' subscription with filters criteria and full-resource as chosen payload"
* id       = "PatientDependent-Document-Subscription"
* status   = #active 
* end      = "2024-12-31T12:00:00Z"
* reason   = "R4 Example Topic-Based Subscription for DocumentReference"
* criteria.extension[filterCriteria].valueString       = "DocumentReference?patient=Patient/PatientExample4&amp;type=57832-8"
* channel.type                                         = #rest-hook 
* channel.endpoint                                     = $webHookEndpoint
* channel.payload                                      = #application/fhir+json
* channel.payload.extension[content].valueCode         = #full-resource