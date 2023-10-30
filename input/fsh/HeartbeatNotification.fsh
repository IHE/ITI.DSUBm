
Profile:     HeartbeatNotification
Parent:      Bundle
Id:          DSUBm-HeartbeatNotification
Title:       "R4B Topic-Based Subscription Heartbeat Notification Bundle"
Description: "Profile on the R4B Bundle resource to enable R5-style topic-based subscription Heartbeat Notification in FHIR R4B."
* type = #history
* entry 1..1 
* entry.resource 1..1 MS
* entry.resource only SubscriptionStatus_Heartbeat
* obeys backport-notification-bundle-1
* entry.request.method = #GET 
* entry.request.url ^short = "shall be filled out to match a request to the $status operation for the Subscription relates to the notification"

