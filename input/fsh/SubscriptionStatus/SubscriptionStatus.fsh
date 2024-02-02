Profile:        SubscriptionStatus_NotificationEvent
Parent:         backport-subscription-status-r4
Id:             IHE.DSUBm.SubscriptionStatus-Event
Title:          "SubscriptionStatus for the notification event"
Description:    "Profile on the SubscriptionStatus resource for the event notification"
* parameter[type].valueCode = #event-notification 
* parameter[eventsSinceSubscriptionStart] 1..1
* parameter[eventsSinceSubscriptionStart] ^short = "Servers SHALL include this value when sending event notifications in order to allow clients to detect missing events. "
* parameter[eventsSinceSubscriptionStart].value[x] 1..1
* parameter[notificationEvent] 1..1
* parameter[notificationEvent] ^short = "Servers SHALL include this value when sending event notifications in order to allow clients to detect missing events. This value is inclusive of this notification (e.g., the first event notification sent would include one (1) in this element)."
* parameter[notificationEvent].value[x] 1..1


Profile:        SubscriptionStatus_Handshake
Parent:         backport-subscription-status-r4
Id:             IHE.DSUBm.SubscriptionStatus-Handshake
Title:          "SubscriptionStatus for the handshake event"
Description:    "Profile on the SubscriptionStatus resource to be used in the handshake notification"

* parameter[status].valueCode = #requested
* parameter[type].valueCode = #handshake

Profile:        SubscriptionStatus_Heartbeat
Parent:         backport-subscription-status-r4
Id:             IHE.DSUBm.SubscriptionStatus-Heartbeat
Title:          "SubscriptionStatus for the handshake event"
Description:    "Profile on the SubscriptionStatus resource for the handshake notification"

* parameter[type].valueCode = #heartbeat

Profile:        SubscriptionStatus_Deactivation
Parent:         backport-subscription-status-r4
Id:             IHE.DSUBm.SubscriptionStatus-Deactivation
Title:          "SubscriptionStatus for the Subscription Deactivation Notification event"
Description:    "Profile on the SubscriptionStatus resource the Subscription Deactivation Notification"

* parameter[status].valueCode = #off
* parameter[type].valueCode = #event-notification 


Profile:        SubscriptionStatus_EventsOperation
Parent:         backport-subscription-status-r4
Id:             IHE.DSUBm.SubscriptionStatus-EventsOperation
Title:          "SubscriptionStatus for the $events operation"
Description:    "Profile on the SubscriptionStatus resource for the $events operation"

* parameter[status].value[x] ^short = "Recommended. Should be valued with the current status of the relevant subscription"
* parameter[type].valueCode = #query-event 
* parameter[eventsSinceSubscriptionStart] 0..1
* parameter[eventsSinceSubscriptionStart].value[x] ^short = "Recommended. This value is allows clients to know if they are missing notifications. Note: this value SHALL NOT be incremented by sending a query-event bundle."

* parameter[notificationEvent] 1..1
* parameter[notificationEvent].part[eventNumber] 1..1
* parameter[notificationEvent].part[eventTimestamp] 0..1
* parameter[notificationEvent].part[eventTimestamp].value[x] ^short = "Recommended so that clients can discover when an event actually occurred, timestamp is recommended."



Profile:        SubscriptionStatus_StatusOperation
Parent:         backport-subscription-status-r4
Id:             IHE.DSUBm.SubscriptionStatus-StatusOperation
Title:          "SubscriptionStatus for the status operation"
Description:    "Profile on the SubscriptionStatus resource for the $status operation"

* parameter[status] 1..1
* parameter[status] ^short = "Current status of the relevant subscription"
* parameter[type].valueCode = #query-status
* parameter[eventsSinceSubscriptionStart] 1..1
* parameter[eventsSinceSubscriptionStart].value[x] ^short = "This value is required because clients may use it to know if there are missing notifications. Note: this value SHALL NOT be incremented by sending a query-status notification."
* parameter[eventsSinceSubscriptionStart].value[x] 0..1
* parameter[notificationEvent] 0..0