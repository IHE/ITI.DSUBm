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
* entry.request.method = #GET 
* entry.request.url ^short = "shall be filled out to match a request to the $status operation for the Subscription relates to the notification"


Invariant:   backport-notification-bundle-1
Description: "A notification bundle MUST have a SubscriptionStatus as the first entry"
Expression:  "entry.first().resource.is(SubscriptionStatus)"
Severity:    #error
XPath:       "f:entry[1]/f:resource/f:SubscriptionStatus"