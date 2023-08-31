Profile: DSUBm_Subscription
Parent: BackportSubscription
Id: DSUBm-Subscription
Description: "Resource Subscription for DSUBm profile"

* channel.type = #rest-hook 
* channel.endpoint 1..1 MS SU  
* channel.payload from DSUBmPayload

ValueSet:    DSUBmPayload
Id:          payload-content-value-set
Title:       "DSUBm payload admitted Value Set"
Description: "Codes to represent the admitted payload MIME type chosen when creating subscription"
* include $Payload#application/fhir+json "JSON payload"
* include $Payload#application/fhir+xml "XML payload"








/*
Extension:   BackportChannelType
Id:          backport-channel-type
Title:       "Backported R5 Additional Channel Types"
Description: "Additional channel types not defined before FHIR R5."
* insert StructureJurisdiction
* ^context[0].type = #element
* ^context[0].expression = "Subscription.channel.type"
* value[x] only Coding
* value[x] ^short      = "Extended channel type for notifications"
* value[x] ^definition = "The type of channel to send notifications on."
* value[x] ^comment    = "This extension allows for the use of additional channel types that were not defined in the FHIR R4 subscription definition."

Extension:   BackportFilterCriteria
Id:          backport-filter-criteria
Title:       "Backported R5 FilterBy Criteria"
Description: "Criteria for topic-based filtering (filter-by)."
* insert StructureJurisdiction
* ^context[0].type = #element
* ^context[0].expression = "Subscription.criteria"
* value[x] only string
* value[x] ^short      = "Filtering critiera applied to events"
* value[x] ^definition = "Search-style filters to be applied to narrow the subscription topic stream. Keys can be either search parameters appropriate to the filtering resource or keys defined within the subscription topic."
* value[x] ^comment    = "When multiple filters are applied, evaluates to true if all the conditions are met; otherwise it returns false. (i.e., logical AND)."

CodeSystem:  BackportContentCodeSystem
Id:          backport-content-code-system
Title:       "Backported R5 Subscription Content Code System"
Description: "Codes to represent how much resource content to send in the notification payload."
* insert StructureJurisdiction
* ^caseSensitive  = true
* ^experimental   = false
* #empty         "Empty"         "No resource content is transacted in the notification payload."
* #id-only       "Id Only"       "Only the resource id is transacted in the notification payload."
* #full-resource "Full Resource" "The entire resource is transacted in the notification payload."

ValueSet:    BackportContentValueSet
Id:          backport-content-value-set
Title:       "Backported R5 Subscription Content Value Set"
Description: "Codes to represent how much resource content to send in the notification payload."
* insert StructureJurisdiction
* ^experimental   = false
* codes from system BackportContentCodeSystem

Extension:   BackportPayloadContent
Id:          backport-payload-content
Title:       "Backport R5 Subscription Payload Content Information"
Description: "How much of the resource content to deliver in the notification payload. The choices are an empty payload, only the resource id, or the full resource content."
* insert StructureJurisdiction
* ^context[0].type = #element
* ^context[0].expression = "Subscription.channel.payload"
* value[x] only code
* valueCode from BackportContentValueSet
* value[x] ^short      = "Notification content level"
* value[x] ^definition = "How much of the resource content to deliver in the notification payload. The choices are an empty payload, only the resource id, or the full resource content."
* value[x] ^comment    = "Sending the payload has obvious security implications. The server is responsible for ensuring that the content is appropriately secured."

Extension:   BackportHeartbeatPeriod
Id:          backport-heartbeat-period
Title:       "Backport R5 Subscription Heartbeat Period"
Description: "Interval in seconds to send 'heartbeat' notifications."
* insert StructureJurisdiction
* ^context[0].type = #element
* ^context[0].expression = "Subscription.channel"
* value[x] only unsignedInt
* value[x] ^short      = "Interval in seconds to send 'heartbeat' notification"
* value[x] ^definition = "If present, a 'hearbeat' notification (keepalive) is sent via this channel with an the interval period equal to this elements integer value in seconds. If not present, a heartbeat notification is not sent."

Extension:   BackportTimeout
Id:          backport-timeout
Title:       "Backport R5 Subscription Timeout"
Description: "Timeout in seconds to attempt notification delivery."
* insert StructureJurisdiction
* ^context[0].type = #element
* ^context[0].expression = "Subscription.channel"
* value[x] only unsignedInt
* value[x] ^short      = "Timeout in seconds to attempt notification delivery"
* value[x] ^definition = "If present, the maximum amount of time a server will allow before failing a notification attempt."

Extension:   BackportMaxCount
Id:          backport-max-count
Title:       "Backported R5 Subscription MaxCount"
Description: "Maximum number of triggering resources included in notification bundles."
* insert StructureJurisdiction
* ^context[0].type = #element
* ^context[0].expression = "Subscription.channel"
* value[x] only positiveInt
* value[x] ^short      = "Maximum number of triggering resources included in notification bundles"
* value[x] ^definition = "If present, the maximum number of triggering resources that will be included in a notification bundle (e.g., a server will not include more than this number of trigger resources in a single notification). Note that this is not a strict limit on the number of entries in a bundle, as dependent resources can be included."
*/