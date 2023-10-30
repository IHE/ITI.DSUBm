

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
* entry[SubscriptionStatus].resource only SubscriptionStatus_StatusOperation
* entry[SubscriptionStatus].request.method = #GET 
* entry[SubscriptionStatus].request.url ^short = "shall be filled out to match a request to the $status operation for the Subscription relates to the notification"



