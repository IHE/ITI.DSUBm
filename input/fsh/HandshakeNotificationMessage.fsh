Profile:        SubscriptionStatus_Handshake
Parent:         SubscriptionStatus
Id:             IHE.DSUBm.Handshake
Title:          "SubscriptionStatus for the handshake event"
Description:    "Profile on the R4B SubscriptionStatus resource to be used in the handshake notification"

* status = #requested
* type = #handshake

Profile:     HandshakeNotification
Parent:      Bundle
Id:          DSUBm-HandshakeNotification
Title:       "R4B Topic-Based Subscription Handshake Notification Bundle"
Description: "Profile on the R4B Bundle resource to enable R5-style topic-based subscription Handshake Notification in FHIR R4B."

* type = #history
* entry 1..1 
* entry.resource 1..1 MS
* entry.resource only SubscriptionStatus_Handshake
* obeys backport-notification-bundle-1

Invariant:   backport-notification-bundle-1
Description: "A notification bundle MUST have a SubscriptionStatus as the first entry"
Expression:  "entry.first().resource.is(SubscriptionStatus)"
Severity:    #error
XPath:       "f:entry[1]/f:resource/f:SubscriptionStatus"