Instance:    ex-EventNotification 
InstanceOf:  ResourceNotify_EventNotification
Usage:       #example
Title:       "Event Notification Bundle"
Description: "R4 Example of an Bundle used to notify a notification event genreated from the creation of a DocumenReference"
* type = #history
* entry[SubscriptionStatus].resource = ex-SubscriptionStatus-NotificationEvent 

* entry[SubmissionSet].fullUrl = "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00111100001"
* entry[SubmissionSet].resource = ex-minimalSubmissionSet
* entry[SubmissionSet].request.url = "List" 
* entry[SubmissionSet].request.method = #POST

* entry[DocumentRefs].fullUrl = "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00111100002"
* entry[DocumentRefs].resource = ex-DocumentReferenceMinimal
* entry[DocumentRefs].request.url = "DocumentReference" 
* entry[DocumentRefs].request.method = #POST 


* entry[Patient].fullUrl = "aaaaaaaa-bbbb-cccc-dddd-e00111100004"
* entry[Patient].resource = ex-patient
* entry[Patient].request.url = "Patient" 
* entry[Patient].request.method = #POST

/*
Instance:    ex-HandshakeNotification 
InstanceOf:  HandshakeNotification
Usage:       #example
Title:       "Event HandshakeNotification Bundle"
Description: "R4 Example of an Bundle used to perform the handshake verification"
* type = #history
* entry.resource = ex-SubscriptionStatus-Handshake
* entry.request.url = "https://example.org/fhir/Subscription/ex-Subscription-DocumentReference-PatientDependent$status" 
* entry.request.method = #GET


Instance:    ex-HeartbeatNotification 
InstanceOf:  HeartbeatNotification
Usage:       #example
Title:       "Event HeartbeatNotification Bundle"
Description: "R4 Example of an Bundle used to perform the HeartbeatNotification"
* type = #history
* entry.resource = ex-SubscriptionStatus-Heartbeat
* entry.request.url = "https://example.org/fhir/Subscription/ex-Subscription-DocumentReference-PatientDependent$status" 
* entry.request.method = #GET

Instance:    ex-Deactivation 
InstanceOf:  SubscriptionDeactivationNotification
Usage:       #example
Title:       "Event Deactivation"
Description: "R4 Example of an Bundle used to perform the Subscription Deactivation Notification"
* type = #history
* entry.resource = ex-SubscriptionStatus-Deactivation
* entry.request.url = "https://example.org/fhir/Subscription/ex-Subscription-DocumentReference-PatientDependent$status" 
* entry.request.method = #GET
*/