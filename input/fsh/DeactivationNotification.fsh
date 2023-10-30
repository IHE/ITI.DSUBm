Profile:     SubscriptionDeactivationNotification
Parent:      Bundle
Id:          IHE.DSUBm.ResourceNotify.SubscriptionDeactivationNotification
Title:       "Subscription Deactivation Notification Bundle"
Description: "Profile on the Bundle resource for Subscription Deactivation Notification."
* type = #history
* entry 1..1 
* entry.resource 1..1 MS
* entry.resource only SubscriptionStatus_Deactivation
* obeys backport-notification-bundle-1
* entry.request.method = #GET 
* entry.request.url ^short = "shall be filled out to match a request to the $status operation for the Subscription relates to the notification"
