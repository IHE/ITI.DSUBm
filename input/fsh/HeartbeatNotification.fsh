Profile:        SubscriptionStatus_Heartbeat
Parent:         SubscriptionStatus
Id:             IHE.DSUBm.Heartbeat
Title:          "SubscriptionStatus for the handshake event"
Description:    "Profile on the R4B SubscriptionStatus resource to be used in the handshake notification"

* type = #heartbeat

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


