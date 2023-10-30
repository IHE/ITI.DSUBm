Profile:        SubscriptionStatus_NotificationEvent
Parent:         SubscriptionStatus
Id:             IHE.DSUBm.SubscriptionStatus-Event
Title:          "SubscriptionStatus for the notification event"
Description:    "Profile on the SubscriptionStatus resource for the event notification"
* type = #event-notification
* eventsSinceSubscriptionStart 1..1
* eventsSinceSubscriptionStart ^short = "Servers SHALL include this value when sending event notifications in order to allow clients to detect missing events. 
This value is inclusive of this notification (e.g., the first event notification sent would include one (1) in this element)."
* notificationEvent 1..*
* notificationEvent.eventNumber 1..1

Profile:        SubscriptionStatus_Handshake
Parent:         SubscriptionStatus
Id:             IHE.DSUBm.SubscriptionStatus-Handshake
Title:          "SubscriptionStatus for the handshake event"
Description:    "Profile on the SubscriptionStatus resource to be used in the handshake notification"
* status = #requested
* type = #handshake

Profile:        SubscriptionStatus_Heartbeat
Parent:         SubscriptionStatus
Id:             IHE.DSUBm.SubscriptionStatus-Heartbeat
Title:          "SubscriptionStatus for the handshake event"
Description:    "Profile on the SubscriptionStatus resource for the handshake notification"
* type = #heartbeat

Profile:        SubscriptionStatus_Deactivation
Parent:         SubscriptionStatus
Id:             IHE.DSUBm.SubscriptionStatus-Deactivation
Title:          "SubscriptionStatus for the Subscription Deactivation Notification event"
Description:    "Profile on the SubscriptionStatus resource the Subscription Deactivation Notification"
* status = #event-notification 
* type = #off

Profile:        SubscriptionStatus_EventsOperation
Parent:         SubscriptionStatus
Id:             IHE.DSUBm.SubscriptionStatus-EventsOperation
Title:          "SubscriptionStatus for the $events operation"
Description:    "Profile on the SubscriptionStatus resource for the $events operation"
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
Parent:         SubscriptionStatus
Id:             IHE.DSUBm.SubscriptionStatus-StatusOperation
Title:          "SubscriptionStatus for the status operation"
Description:    "Profile on the SubscriptionStatus resource for the $status operation"
* status 1..1 
* status ^short = "Current status of the relevant subscription"
* type = #query-status
* eventsSinceSubscriptionStart 1..1
* eventsSinceSubscriptionStart ^short = "This value is required because clients may use it to know if there are missing notifications.
Note: this value SHALL NOT be incremented by sending a query-status notification."
* notificationEvent 0..0
