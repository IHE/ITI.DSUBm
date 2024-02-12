Instance: ex-SubscriptionStatus-NotificationEvent
InstanceOf: SubscriptionStatus_NotificationEvent
Usage: #example
Title:       "Example of SubscriptionStatus to be used in a NotificationEvent"
Description: "R4 Example of a Parameter resource representing the status of an active Subscription that has produced 1 event."
* parameter[subscription].name = "subscription"
* parameter[subscription].valueReference.reference = "https://example.org/fhir/Subscription/ex-Subscription-DocumentReference-PatientDependent"
* parameter[topic].valueCanonical = "https://profiles.ihe.net/ITI/DSUBm/SubscriptionTopic/DSUBm-SubscriptionTopic-DocumentReference-PatientDependent"
* parameter[eventsSinceSubscriptionStart].name = "events-since-subscription-start"
* parameter[eventsSinceSubscriptionStart].valueString = "1" 
* parameter[notificationEvent].part[eventNumber].name = "event-number"
* parameter[notificationEvent].part[eventNumber].valueString = "1" 
* parameter[notificationEvent].part[eventTimestamp].name = "timestamp"
* parameter[notificationEvent].part[eventTimestamp].valueInstant = "2023-01-01T12:00:00.1882432-05:00"
//* parameter[notificationEvent].valueInteger = 1 
* parameter[status].valueCode = #active
* parameter[type].valueCode = #event-notification 

Instance: ex-SubscriptionStatus-Handshake
InstanceOf: SubscriptionStatus_Handshake
Usage: #example
Title:       "Example of SubscriptionStatus to be used in a Handshake Event"
Description: "R4 Example of a Parameter resource representing the status of a Subscription that has been requested."
* parameter[subscription].name = "subscription"
* parameter[subscription].valueReference.reference = "https://example.org/fhir/Subscription/ex-Subscription-DocumentReference-PatientDependent"
* parameter[topic].valueCanonical = "https://profiles.ihe.net/ITI/DSUBm/SubscriptionTopic/DSUBm-SubscriptionTopic-DocumentReference-PatientDependent"
* parameter[eventsSinceSubscriptionStart].name = "events-since-subscription-start"
* parameter[eventsSinceSubscriptionStart].valueString = "0" 
* parameter[notificationEvent].part[eventNumber].name = "event-number"
* parameter[notificationEvent].part[eventNumber].valueString = "0" 
* parameter[status].valueCode = #requested
* parameter[type].valueCode = #handshake

Instance: ex-SubscriptionStatus-Heartbeat
InstanceOf: SubscriptionStatus_Heartbeat
Usage: #example
Title:       "Example of SubscriptionStatus to be used in a Heartbeat Event"
Description: "R4 Example of a Parameter resource representing the status of an active Subscription that using the heartbeat to check the endpoint"
* parameter[subscription].name = "subscription"
* parameter[subscription].valueReference.reference = "https://example.org/fhir/Subscription/ex-Subscription-DocumentReference-PatientDependent"
* parameter[topic].valueCanonical = "https://profiles.ihe.net/ITI/DSUBm/SubscriptionTopic/DSUBm-SubscriptionTopic-DocumentReference-PatientDependent"
* parameter[eventsSinceSubscriptionStart].name = "events-since-subscription-start"
* parameter[eventsSinceSubscriptionStart].valueString = "0" 
* parameter[notificationEvent].part[eventNumber].name = "event-number"
* parameter[notificationEvent].part[eventNumber].valueString = "0" 
* parameter[status].valueCode = #active
* parameter[type].valueCode = #heartbeat


Instance: ex-SubscriptionStatus-Deactivation
InstanceOf: SubscriptionStatus_Deactivation
Usage: #example
Title:       "Example of SubscriptionStatus to be used in a Deactivation Event"
Description: "R4 Example of a Parameter resource representing the status of an deactivated Subscription."
* parameter[subscription].name = "subscription"
* parameter[subscription].valueReference.reference = "https://example.org/fhir/Subscription/ex-Subscription-DocumentReference-PatientDependent"
* parameter[topic].valueCanonical = "https://profiles.ihe.net/ITI/DSUBm/SubscriptionTopic/DSUBm-SubscriptionTopic-DocumentReference-PatientDependent"
* parameter[eventsSinceSubscriptionStart].name = "events-since-subscription-start"
* parameter[eventsSinceSubscriptionStart].valueString = "3" 
* parameter[notificationEvent].part[eventNumber].name = "event-number"
* parameter[notificationEvent].part[eventNumber].valueString = "3" 
* parameter[status].valueCode = #off
* parameter[type].valueCode = #event-notification


Instance: ex-SubscriptionStatus-StatusOperation
InstanceOf: SubscriptionStatus_StatusOperation
Usage: #example
Title:       "Example of SubscriptionStatus to be used in a $status response"
Description: "R4 Example of a Parameter resource representing a Subscription returned with a status operation. The Subscription is in error."
* parameter[subscription].name = "subscription"
* parameter[subscription].valueReference.reference = "https://example.org/fhir/Subscription/ex-Subscription-DocumentReference-PatientDependent"
* parameter[topic].valueCanonical = "https://profiles.ihe.net/ITI/DSUBm/SubscriptionTopic/DSUBm-SubscriptionTopic-DocumentReference-PatientDependent"
* parameter[eventsSinceSubscriptionStart].name = "events-since-subscription-start"
* parameter[eventsSinceSubscriptionStart].valueString = "3" 
* parameter[status].valueCode = #error
* parameter[type].valueCode = #query-status


Instance: ex-SubscriptionStatus-EventsOperation
InstanceOf: SubscriptionStatus_EventsOperation
Usage: #example
Title:       "Example of SubscriptionStatus to be used in a $events response"
Description: "R4 Example of a Parameter resource representing a Subscription returned with a events operation. The Subscription has produced 3 events before going in error."
* parameter[subscription].name = "subscription"
* parameter[subscription].valueReference.reference = "https://example.org/fhir/Subscription/ex-Subscription-DocumentReference-PatientDependent"
* parameter[topic].valueCanonical = "https://profiles.ihe.net/ITI/DSUBm/SubscriptionTopic/DSUBm-SubscriptionTopic-DocumentReference-PatientDependent"
* parameter[eventsSinceSubscriptionStart].name = "events-since-subscription-start"
* parameter[eventsSinceSubscriptionStart].valueString = "3" 
* parameter[notificationEvent].part[eventNumber].name = "event-number"
* parameter[notificationEvent].part[eventNumber].valueString = "3" 
* parameter[status].valueCode = #error
* parameter[type].valueCode = #query-event
