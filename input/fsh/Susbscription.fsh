Profile: DSUBm_Subscription 
Parent: http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-subscription
Id: DSUBm-Subscription-general
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






