
Instance:    BackportNotificationStatusShellR4B
InstanceOf:  SubscriptionStatus
Usage:       #inline
* type                    = #query-status
* subscription.reference  = $admissionSub

RuleSet: AddSubscriptionStatus(id, status, type, sinceStart)
* entry[0].fullUrl = "urn:uuid:{id}"
* entry[0].resource = BackportNotificationStatusShellR4B
* entry[0].resource.id                            = "{id}"
* entry[0].resource.subscription.reference        = $admissionSub
* entry[0].resource.topic                         = $admissionTopic
* entry[0].resource.status                        = {status}
* entry[0].resource.type                          = {type}
* entry[0].resource.eventsSinceSubscriptionStart  = "{sinceStart}"
* entry[0].request.method = #GET
* entry[0].request.url = $admissionSubStatus
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



Instance:    BackportNotificationStatusExample
InstanceOf:  SubscriptionStatus
Title:       "R4B Notification: Status"
Description: "R4B Example of a topic-based subscription notification with status content."
* id       = "r4b-notification-status"
* subscription.reference       = $admissionSub
* topic                        = $admissionTopic
* status                       = #active
* type                         = #event-notification
* eventsSinceSubscriptionStart = "2"
* notificationEvent[+].eventNumber = "2"
* notificationEvent[=].timestamp   = "2020-05-29T11:44:13.1882432-05:00"


Instance:    BackportNotificationExampleHandshake
InstanceOf:  BackportSubscriptionNotification
Usage:       #example
Title:       "R4B Notification: Handshake"
Description: "R4B Example of a topic-based subscription `handshake` notification."
* id        = "r4b-notification-handshake"
* timestamp = "2020-05-29T11:44:13.1882432-05:00"
* insert AddSubscriptionStatus(9d98f2be-4067-4b90-b0ec-6d3308d75c8e, #requested, #handshake, 0)


Instance:    BackportNotificationExampleHeartbeat
InstanceOf:  BackportSubscriptionNotification
Usage:       #example
Title:       "R4B Notification: Heartbeat"
Description: "R4B Example of a topic-based subscription `heartbeat` notification."
* id        = "r4b-notification-heartbeat"
* timestamp = "2020-05-29T11:44:13.1882432-05:00"
* insert AddSubscriptionStatus(8971bd8c-4bd2-4612-9bae-c24cf4fd9e1f, #active, #heartbeat, 2)


Instance:    BackportNotificationExampleEmpty
InstanceOf:  BackportSubscriptionNotification
Usage:       #example
Title:       "R4B Notification: Empty"
Description: "R4B Example of a topic-based subscription event notification with `empty` content."
* id        = "r4b-notification-empty"
* timestamp = "2020-05-29T11:44:13.1882432-05:00"
* insert AddSubscriptionStatus(fbc7cb79-0502-4797-993c-399766271260, #active, #event-notification, 2)
* insert AddSubscriptionStatusFirstEvent(2)

Instance:    BackportNotificationExampleIdOnly
InstanceOf:  BackportSubscriptionNotification
Usage:       #example
Title:       "R4B Notification: Id Only"
Description: "R4B Example of a topic-based subscription event notification with `id-only` content."
* id        = "r4b-notification-id-only"
* timestamp = "2020-05-29T11:44:13.1882432-05:00"
* insert AddSubscriptionStatus(3dd3c88d-1f7c-40ce-bf41-6b0d8186c311, #active, #event-notification, 2)
* insert AddSubscriptionStatusFirstEvent(2)
* insert AddSubscriptionStatusEventFocus($notificationEncounter1)
// * entry[1].fullUrl = $notificationEncounter1
// * entry[1].request.method = #POST
// * entry[1].request.url    = "Encounter"
// * entry[1].response.status = "201"


Instance:    BackportNotificationExampleFullResource
InstanceOf:  BackportSubscriptionNotification
Usage:       #example
Title:       "R4B Notification: Full Resource"
Description: "R4B Example of a topic-based subscription event notification with `full-resource` content."
* id        = "r4b-notification-full-resource"
* timestamp = "2020-05-29T11:44:13.1882432-05:00"
* insert AddSubscriptionStatus(120e93df-a9ab-4b01-b0e2-6660338e5927, #active, #event-notification, 2)
* insert AddSubscriptionStatusFirstEvent(2)
* insert AddSubscriptionStatusEventFocus($notificationEncounter1)
* entry[1].fullUrl  = $notificationEncounter1
* entry[1].resource = BackportNotificationEncounter
* entry[1].request.method = #POST
* entry[1].request.url    = "Encounter"
* entry[1].response.status = "201"


Instance:    BackportNotificationExampleMultiResource
InstanceOf:  BackportSubscriptionNotification
Usage:       #example
Title:       "R4B Notification: Multiple Resources"
Description: "R4B Example of a topic-based subscription event notification with `full-resource` content and a related resource."
* id        = "r4b-notification-multi-resource"
* timestamp = "2020-05-29T11:44:13.1882432-05:00"
* insert AddSubscriptionStatus(f05e460f-4d56-4fa0-8e60-502404e68be5, #active, #event-notification, 2)
* insert AddSubscriptionStatusFirstEvent(2)
* insert AddSubscriptionStatusEventFocus($notificationEncounter1)
* insert AddSubscriptionStatusEventContext($notificationPatient)
* entry[1].fullUrl  = $notificationEncounter1
* entry[1].resource = BackportNotificationEncounter
* entry[1].request.method = #POST
* entry[1].request.url    = "Encounter"
* entry[1].response.status = "201"
* entry[2].fullUrl  = $notificationPatient
* entry[2].resource = BackportNotificationPatient
* entry[2].request.method = #GET
* entry[2].request.url    = "Patient/1599eb66-431a-447c-a3de-6897fe9ae9a1"
* entry[2].response.status = "200"


Instance:    BackportNotificationExampleError
InstanceOf:  BackportSubscriptionNotification
Usage:       #example
Title:       "R4B Notification: Error"
Description: "R4B Example of a topic-based subscription query-status response with an error state."
* id         = "r4b-notification-error"
* timestamp = "2020-05-29T11:44:13.1882432-05:00"
* insert AddSubscriptionStatus(190faedc-eb83-4073-b189-55e6a49a11dd, #error, #query-status, 3)
* insert AddSubscriptionStatusError(http://terminology.hl7.org/CodeSystem/subscription-error, #no-response)