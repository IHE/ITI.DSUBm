
Profile:     HeartbeatNotification
Parent:      Bundle
Id:          DSUBm-HeartbeatNotification
Title:       "Heartbeat Notification Bundle"
Description: "Profile on the Bundle resource to enable R5-style topic-based subscription Heartbeat Notification."
* type = #history
* entry 1..1 
* entry.resource 1..1 MS
* entry.resource only SubscriptionStatus_Heartbeat
* obeys backport-notification-bundle-1
* entry.request.method = #GET 
* entry.request.url ^short = "shall be filled out to match a request to the $status operation for the Subscription relates to the notification"

