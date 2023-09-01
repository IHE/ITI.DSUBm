Instance:    DocumentReference-PatientDependent-Notify-FullResource
InstanceOf: Bundle
Title:       "DocumentReference Notify: Full Resource"
Description: "R4/B Example of a Notify ITI-112 message after the creation of a 'DocumentReference' resource."
Usage:       #Example
* meta.versionId = "1"
* meta.lastUpdated = "2023-09-01T07:56:07.3289157+00:00"
* type = #history
* timestamp = "2023-09-01T07:56:07.0679421+00:00"
* entry[0].fullUrl = "urn:uuid:8599d489-e5b6-4fd9-81f2-a15a55982f87"
* entry[=].resource = 8599d489-e5b6-4fd9-81f2-a15a55982f87
* entry[+].fullUrl = "https://subscriptions.argo.run/fhir/r4b/DocumentReference/DocumentReference2"
* entry[=].resource = DocumentReference2

Instance: 8599d489-e5b6-4fd9-81f2-a15a55982f87
InstanceOf: SubscriptionStatus
Usage: #inline
* status = #active
* type = #event-notification
* eventsSinceSubscriptionStart = "3"
* notificationEvent.eventNumber = "3"
* notificationEvent.timestamp = "2023-09-01T07:56:06.2591115+00:00"
* notificationEvent.focus = Reference(https://subscriptions.argo.run/fhir/r4b/DocumentReference/DocumentReference2)
* subscription = Reference(https://subscriptions.argo.run/fhir/r4b/Subscription/DocumentReference-SubscriptionPatient3)
* topic = "http://example.org/FHIR/SubscriptionTopic/DocumentReference-SubscriptionTopic2"

Instance: DocumentReference2
InstanceOf: DocumentReference
Usage: #inline
* meta.versionId = "1"
* meta.lastUpdated = "2023-09-01T07:56:06.2583244+00:00"
* meta.profile = "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.DocumentReference"
* meta.security = $v3-ActReason#HTEST
* contained.resourceType = "Patient"
* contained.id = "aaaaaaaa-bbbb-cccc-dddd-e00444400004"
* contained.identifier.system = "http://example.org/patients"
* contained.identifier.value = "mrn-1234"
* contained.name.family = "Schmidt"
* contained.name.given = "Dee"
* masterIdentifier.system = "urn:ietf:rfc:3986"
* masterIdentifier.value = "urn:oid:1.2.840.113556.1.8000.2554.53432.348.12973.17740.34205.4355.50220.62012"
* status = #current
* type = $loinc#60591-5
* category = $loinc#11369-6
* subject = Reference(Patient/PatientExample)
* date = "2020-02-01T23:50:50-05:00"
* securityLabel = $v3-Confidentiality#R
* content.attachment.contentType = #text/plain
* content.attachment.language = #en
* content.attachment.url = "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00444400006"
* content.attachment.size = 445
* content.attachment.hash = "Y2QzNmIzNzA3NThhMjU5YjM0ODQ1MDg0YTZjYzM4NDczY2I5NWUyNw=="
* content.attachment.title = "Laurem ipsum"
* content.attachment.creation = "2020-02-01T23:50:50-05:00"
* content.format = $formatcode#urn:ihe:iti:xds-sd:text:2008
* context.facilityType = $sct#82242000
* context.practiceSetting = $sct#408467006
* context.sourcePatientInfo = Reference(urn:uuid:DocumentReference2)
/*
* id        = "BackportNotificationStatusShellR4B"
* type      = #history

* timestamp = "2023-08-31T11:44:13.1882432-05:00"
* entry[0].fullUrl = "urn:uuid:ce7b3692-cf80-4d66-8822-4bb86fd1767e"
* entry[0].resource = BackportNotificationStatusShellR4B
* entry[0].resource.id                            = "ce7b3692-cf80-4d66-8822-4bb86fd1767e"
* entry[0].resource.subscription.reference        = "https://example.org/fhir/Subscription/DocumentReference"
* entry[0].resource.topic                         = "http://hl7.org/SubscriptionTopic/DocumentReference"
* entry[0].resource.status                        = #active
* entry[0].resource.type                          = #event-notification
* entry[0].resource.eventsSinceSubscriptionStart  = "1"
* entry[0].request.method = #GET
* entry[0].request.url = "https://example.org/fhir/Subscription/PatientDependent-Document-Subscription"
* entry[0].response.status = "200"

* entry[0].resource.notificationEvent[0].eventNumber  = "1"
* entry[0].resource.notificationEvent[0].timestamp    = "2023-08-31T11:44:13.1882432-05:00"
* entry[0].resource.notificationEvent[0].focus.reference = $DocumentReference

* entry[1].fullUrl  = $DocumentReference
* entry[1].resource = DocumentReference1
* entry[1].request.method = #POST
* entry[1].request.url    = "DocumentReference"
* entry[1].response.status = "201"

RuleSet: AddSubscriptionStatus(id, status, type, sinceStart)
* entry[0].fullUrl = "urn:uuid:{id}"
* entry[0].resource = BackportNotificationStatusShellR4B
* entry[0].resource.id                            = "{id}"
* entry[0].resource.subscription.reference        = $DocumentReferenceSub
* entry[0].resource.topic                         = $DocumentReferenceTopic
* entry[0].resource.status                        = {status}
* entry[0].resource.type                          = {type}
* entry[0].resource.eventsSinceSubscriptionStart  = "{sinceStart}"
* entry[0].request.method = #GET
* entry[0].request.url = https://example.org/fhir/Subscription/PatientDependent-Document-Subscription
* entry[0].response.status = "200"

RuleSet: AddSubscriptionStatusError(vs, code)
* entry[0].resource.error[+] = {vs}{code}

RuleSet: AddSubscriptionStatusFirstEvent(eventNumber)
* entry[0].resource.notificationEvent[+].eventNumber  = "{eventNumber}"
* entry[0].resource.notificationEvent[=].timestamp    = "2020-05-29T11:44:13.1882432-05:00"

RuleSet: AddSubscriptionStatusEventFocus(focus)
* entry[0].resource.notificationEvent[=].focus.reference = {focus}

RuleSet: AddSubscriptionStatusEventContext(additionalContext)
* entry[0].resource.notificationEvent[=].additionalContext[+].reference = {additionalContext}
*/