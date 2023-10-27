Profile:        SubscriptionStatus_NotificationEvent
Parent:         SubscriptionStatus
Id:             IHE.DSUBm.Event
Title:          "SubscriptionStatus for the notification event"
Description:    "Profile on the R4B SubscriptionStatus resource to be used in the event notification"

* type = #event-notification
* eventsSinceSubscriptionStart 1..1
* eventsSinceSubscriptionStart ^short = "Servers SHALL include this value when sending event notifications in order to allow clients to detect missing events. 
This value is inclusive of this notification (e.g., the first event notification sent would include one (1) in this element)."
* notificationEvent 1..*
* notificationEvent.eventNumber 1..1

Profile:        ResourceNotify_EventNotification
Parent:         ResourceNotify
Id:             IHE.DSUBm.ResourceNotify.EventNotification
Title:          "Resource Notify Bundle R4B for Event Notification"
Description:    "Profile on the R4B Bundle resource for transaction ITI-112 Resource Notify for Event Notification ."

* entry[subscriptionStatus].resource only SubscriptionStatus_NotificationEvent