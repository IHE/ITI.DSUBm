Profile:        SubscriptionStatus_Status
Parent:         SubscriptionStatus
Id:             IHE.DSUBm.Status
Title:          "SubscriptionStatus for the status operation"
Description:    "Profile on the R4B SubscriptionStatus resource to be used with the $status opertion"
* status 1..1 
* status ^short = "Current status of the relevant subscription"
* type = #query-status
* eventsSinceSubscriptionStart 1..1
* eventsSinceSubscriptionStart ^short = "This value is required because clients may use it to know if there are missing notifications.
Note: this value SHALL NOT be incremented by sending a query-status notification."
* notificationEvent 0..0


Profile:     ResourceNotify_Status
Parent:      Bundle
Id:          DSUBm-StatusOperation-Bundle
Title:       "R4B Bundle response for $status"
Description: "Profile on the R4B Bundle resource for the response of $status operation."
* type = #searchset
* entry 0..*
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false 
* entry ^slicing.description = "Slice based on resource"
* entry contains SubscriptionStatus 0..* MS and OperationOutcome 0..* MS
* entry[SubscriptionStatus].resource only SubscriptionStatus_Status



