Instance:    ex-EventNotification 
InstanceOf:  ResourceNotify_EventNotification
Usage:       #example
Title:       "Event Notification Bundle"
Description: "R4 Example of an Bundle used to notify a notification event genreated from the creation of a DocumenReference"
* type = #history
* entry[SubscriptionStatus].resource = ex-SubscriptionStatus-NotificationEvent 

* entry[SubmissionSet].resource = ex-minimalSubmissionSet
* entry[SubmissionSet].request.url = "List" 
* entry[SubmissionSet].request.method = #POST

* entry[DocumentRefs].resource = ex-DocumentReferenceMinimal
* entry[DocumentRefs].request.url = "DocumentReference" 
* entry[DocumentRefs].request.method = #POST 

* entry[Patient].resource = ex-patient
* entry[Patient].request.url = "Patient" 
* entry[Patient].request.method = #POST


Instance:    ex-HandshakeNotification 
InstanceOf:  HandshakeNotification
Usage:       #example
Title:       "Event HandshakeNotification Bundle"
Description: "R4 Example of an Bundle used to perform the handshake verification"
* type = #history
* entry.resource = ex-SubscriptionStatus-Handshake
* entry.request.url = "https://example.org/fhir/Subscription/ex-Subscription-DocumentReference-PatientDependent$status" 
* entry.request.method = #GET
