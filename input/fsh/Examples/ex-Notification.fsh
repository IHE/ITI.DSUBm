Instance:    ex-EventNotification 
InstanceOf:  ResourceNotify_EventNotification
Usage:       #example
Title:       "Event Notification Bundle"
Description: "R4 Example of an Bundle used to notify a notification event genreated from the creation of a DocumenReference"
* type = #history
* entry[SubscriptionStatus].fullUrl = "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00111100007"
* entry[SubscriptionStatus].resource = ex-SubscriptionStatus-NotificationEvent 
* entry[SubscriptionStatus].request.url = "https://example.org/fhir/Subscription/ex-Subscription-DocumentReference-PatientDependent$status" 
* entry[SubscriptionStatus].request.method = #GET
* entry[SubscriptionStatus].response.status = "200"

* entry[SubmissionSet].fullUrl = "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00111100001"
* entry[SubmissionSet].resource = ex-minimalSubmissionSet
* entry[SubmissionSet].request.url = "List" 
* entry[SubmissionSet].request.method = #POST
* entry[SubmissionSet].response.status = "201"

* entry[DocumentRefs].fullUrl = "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00111100002"
* entry[DocumentRefs].resource = ex-DocumentReferenceMinimal
* entry[DocumentRefs].request.url = "DocumentReference" 
* entry[DocumentRefs].request.method = #POST 
* entry[DocumentRefs].response.status = "201"

* entry[Patient].fullUrl = "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00111100004"
* entry[Patient].resource = ex-patient
* entry[Patient].request.url = "Patient" 
* entry[Patient].request.method = #POST
* entry[Patient].response.status = "200"


Instance:    ex-HandshakeNotification 
InstanceOf:  HandshakeNotification
Usage:       #example
Title:       "Event HandshakeNotification Bundle"
Description: "R4 Example of an Bundle used to perform the handshake verification"
* type = #history
* entry.fullUrl = "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00111100007"
* entry.resource = ex-SubscriptionStatus-Handshake
* entry.request.url = "https://example.org/fhir/Subscription/ex-Subscription-DocumentReference-PatientDependent$status" 
* entry.request.method = #GET
* entry.response.status = "200"

Instance:    ex-HeartbeatNotification 
InstanceOf:  HeartbeatNotification
Usage:       #example
Title:       "Event HeartbeatNotification Bundle"
Description: "R4 Example of an Bundle used to perform the HeartbeatNotification"
* type = #history
* entry.fullUrl = "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00111100007"
* entry.resource = ex-SubscriptionStatus-Heartbeat
* entry.request.url = "https://example.org/fhir/Subscription/ex-Subscription-DocumentReference-PatientDependent$status" 
* entry.request.method = #GET
* entry.response.status = "200"

Instance:    ex-Deactivation 
InstanceOf:  SubscriptionDeactivationNotification
Usage:       #example
Title:       "Deactivation Event Bundle"
Description: "R4 Example of an Bundle used to perform the Subscription Deactivation Notification"
* type = #history
* entry.fullUrl = "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00111100007"
* entry.resource = ex-SubscriptionStatus-Deactivation
* entry.request.url = "https://example.org/fhir/Subscription/ex-Subscription-DocumentReference-PatientDependent$status" 
* entry.request.method = #GET
* entry.response.status = "200"



Instance:    ex-operationStatus 
InstanceOf:  ResourceNotify_Status
Usage:       #example
Title:       "Status Event Bundle"
Description: "R4 Example of an Bundle used as response of a $status operation"
* type = #searchset
* entry.fullUrl = "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00111100007"
* entry.resource = ex-SubscriptionStatus-StatusOperation
* entry.search.mode = #match
* link.relation = "self"
* link.url = "https://example.org/fhir/Subscription/$status?status=error"


Instance:    ex-operationEvents 
InstanceOf:  ResourceNotify_Events
Usage:       #example
Title:       "Events Bundle"
Description: "R4 Example of an Bundle used as response of a $events operation"
* type = #history
* entry[SubscriptionStatus].fullUrl = "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00111100007"
* entry[SubscriptionStatus].resource = ex-SubscriptionStatus-EventsOperation 
* entry[SubscriptionStatus].request.url = "https://example.org/fhir/Subscription/ex-Subscription-DocumentReference-PatientDependent$status" 
* entry[SubscriptionStatus].request.method = #GET
* entry[SubscriptionStatus].response.status = "200"

* entry[SubmissionSet].fullUrl = "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00111100001"
* entry[SubmissionSet].resource = ex-minimalSubmissionSet
* entry[SubmissionSet].request.url = "List" 
* entry[SubmissionSet].request.method = #POST
* entry[SubmissionSet].response.status = "200"

* entry[DocumentRefs].fullUrl = "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00111100002"
* entry[DocumentRefs].resource = ex-DocumentReferenceMinimal
* entry[DocumentRefs].request.url = "DocumentReference" 
* entry[DocumentRefs].request.method = #POST 
* entry[DocumentRefs].response.status = "200"

* entry[Patient].fullUrl = "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00111100004"
* entry[Patient].resource = ex-patient
* entry[Patient].request.url = "Patient" 
* entry[Patient].request.method = #POST
* entry[Patient].response.status = "200"
