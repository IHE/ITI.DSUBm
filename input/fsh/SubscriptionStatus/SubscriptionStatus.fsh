/*
Profile:        SubscriptionStatus_NotificationEvent
Parent:         backport-subscription-status-r4
Id:             IHE.DSUBm.SubscriptionStatus-Event
Title:          "SubscriptionStatus for the notification event"
Description:    "Profile on the SubscriptionStatus resource for the event notification"

* parameter[type].value[x] = #event-notification 

Profile:        SubscriptionStatus_StatusOperation
Parent:         backport-subscription-status-r4
Id:             IHE.DSUBm.SubscriptionStatus-StatusOperation
Title:          "SubscriptionStatus for the status operation"
Description:    "Profile on the SubscriptionStatus resource for the $status operation"

* parameter[status] ^short = "Current status of the relevant subscription"
* parameter[type].valueCode = #query-status


/*

* parameter[eventsSinceSubscriptionStart] 1..1
* parameter[eventsSinceSubscriptionStart] ^short = "Servers SHALL include this value when sending event notifications in order to allow clients to detect missing events. "
* parameter[eventsSinceSubscriptionStart].value[x] 1..1
/* commented old version R4B
* type = #event-notification
* eventsSinceSubscriptionStart 1..1
* eventsSinceSubscriptionStart ^short = "Servers SHALL include this value when sending event notifications in order to allow clients to detect missing events. 
This value is inclusive of this notification (e.g., the first event notification sent would include one (1) in this element)."
* notificationEvent 1..*
* notificationEvent.eventNumber 1..1
 

Profile:        SubscriptionStatus_Handshake
Parent:         backport-subscription-status-r4
Id:             IHE.DSUBm.SubscriptionStatus-Handshake
Title:          "SubscriptionStatus for the handshake event"
Description:    "Profile on the SubscriptionStatus resource to be used in the handshake notification"

/* commented old version R4B 
* status = #requested
* type = #handshake

* parameter[status].value[x] = #requested
* parameter[type].value[x] = #handshake

Profile:        SubscriptionStatus_Heartbeat
Parent:         backport-subscription-status-r4
Id:             IHE.DSUBm.SubscriptionStatus-Heartbeat
Title:          "SubscriptionStatus for the handshake event"
Description:    "Profile on the SubscriptionStatus resource for the handshake notification"
/* commented old version R4B 
* type = #heartbeat

* parameter[type].value[x] = #heartbeat

Profile:        SubscriptionStatus_Deactivation
Parent:         backport-subscription-status-r4
Id:             IHE.DSUBm.SubscriptionStatus-Deactivation
Title:          "SubscriptionStatus for the Subscription Deactivation Notification event"
Description:    "Profile on the SubscriptionStatus resource the Subscription Deactivation Notification"
/* commented old version R4B 
* status = #event-notification 
* type = #off

* parameter[status].value[x] = #off
* parameter[type].value[x] = #event-notification 


Profile:        SubscriptionStatus_EventsOperation
Parent:         backport-subscription-status-r4
Id:             IHE.DSUBm.SubscriptionStatus-EventsOperation
Title:          "SubscriptionStatus for the $events operation"
Description:    "Profile on the SubscriptionStatus resource for the $events operation"

* parameter[status].value[x] ^short = "Recommended. Should be valued with the current status of the relevant subscription"
* parameter[type].value[x] = #query-event 
* parameter[eventsSinceSubscriptionStart] 0..1
* parameter[eventsSinceSubscriptionStart].value[x] ^short = "Recommended. This value is allows clients to know if they are missing notifications. Note: this value SHALL NOT be incremented by sending a query-event bundle."

/* commented old version R4B 
* status ^short = "Recommended. Should be valued with the current status of the relevant subscription"
* type = #query-event
* eventsSinceSubscriptionStart 0..1
* eventsSinceSubscriptionStart ^short = "Recommended. This value is allows clients to know if they are missing notifications.
Note: this value SHALL NOT be incremented by sending a query-event bundle."
* notificationEvent 1..1
* notificationEvent.eventNumber 1..1
* notificationEvent.timestamp 0..1 
* notificationEvent.timestamp ^short = "Recommended	So that clients can discover when an event actually occurred, timestamp is recommended."




Profile:        SubscriptionStatus_StatusOperation
Parent:         backport-subscription-status-r4
Id:             IHE.DSUBm.SubscriptionStatus-StatusOperation
Title:          "SubscriptionStatus for the status operation"
Description:    "Profile on the SubscriptionStatus resource for the $status operation"
/* commented old version R4B 
* status 1..1 
* status ^short = "Current status of the relevant subscription"
* type = #query-status
* eventsSinceSubscriptionStart 1..1
* eventsSinceSubscriptionStart ^short = "This value is required because clients may use it to know if there are missing notifications.
Note: this value SHALL NOT be incremented by sending a query-status notification."
* notificationEvent 0..0

* parameter[status] 1..1
* parameter[status] ^short = "Current status of the relevant subscription"
* parameter[type].valueCode = #query-status
*/

/*
* parameter[eventsSinceSubscriptionStart] 1..1
* parameter[eventsSinceSubscriptionStart].value[x] ^short = "This value is required because clients may use it to know if there are missing notifications. Note: this value SHALL NOT be incremented by sending a query-status notification."
* parameter[eventsSinceSubscriptionStart].value[x] 0..1
* parameter[notificationEvent] 0..0
*/