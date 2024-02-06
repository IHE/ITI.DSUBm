
Extension:   BackportResourceTrigger
Id:          extension-SubscriptionTopicResourceTrigger
Title:       "ResourceTrigger definition"
Description: "Extension to define the resourceTrigger in the Basic resource"
//* url = "https://profiles.ihe.net/ITI/DSUBm/BackportResourceTrigger"
* ^context.type = #element
* ^context.expression = "Basic"
* extension contains 
    description 1..1 and 
    resource 1..1 and 
    supportedInteraction 1..* and
    fhirPathCriteria 0..*

* extension[description] ^short = "The human readable description of this resource trigger for the SubscriptionTopic - for example, \"An Encounter enters the 'in-progress' state\"."
* extension[description].value[x] 1..1
* extension[description].value[x] only markdown

* extension[resource] ^short = "URL of the Resource that is the type used in this resource trigger."
* extension[resource].value[x] 1..1 
* extension[resource].value[x] only uri

* extension[supportedInteraction] ^short = "The FHIR RESTful interaction which can be used to trigger a notification for the SubscriptionTopic. Multiple values are considered OR joined (e.g., CREATE or UPDATE)."
* extension[supportedInteraction].value[x] 1..1
* extension[supportedInteraction].value[x] only code 
* extension[supportedInteraction].valueCode from DSUBmInteractionTrigger


* extension[fhirPathCriteria] ^short = "FHIRPath based trigger rule"
* extension[fhirPathCriteria].value[x] only string


Extension:   BackportCanFilterBy
Id:          extension-SubscriptionTopicCanFilterBy
Title:       "CanFilterBy definition"
Description: "Extension to define a list of properties by which Subscriptions on the SubscriptionTopic can be filtered."
//* url = "https://profiles.ihe.net/ITI/DSUBm/BackportResourceTrigger"
* ^context.type = #element
* ^context.expression = "Basic"
* extension contains 
    description 1..1 and 
    resource 1..1 and 
    filterParameter 1..1 

* extension[description] ^short = "Description of how this filtering parameter is intended to be used."
* extension[description].value[x] 1..1
* extension[description].value[x] only markdown

* extension[resource] ^short = "URL of the Resource that is the type used in this filter."
* extension[resource].value[x] 1..1 
* extension[resource].value[x] only uri

* extension[filterParameter] ^short = "Either the canonical URL to a search parameter (like \"http://hl7.org/fhir/SearchParameter/encounter-patient\") or topic-defined parameter (like \"hub.event\") which is a label for the filter."
* extension[filterParameter].value[x] 1..1
* extension[filterParameter].value[x] only string 


Extension:   BackportNotificationShape
Id:          extension-SubscriptionTopicNotificationShape
Title:       "CanFilterBy definition"
Description: "Extension to define a list of properties to describe the shape (e.g., resources) included in notifications from this Subscription Topic."
//* url = "https://profiles.ihe.net/ITI/DSUBm/BackportResourceTrigger"
* ^context.type = #element
* ^context.expression = "Basic"
* extension contains 
    resource 1..1 and 
    includ 0..* and 
    revInclude 0..* 

* extension[resource] ^short = "URL of the Resource that is the type used in this filter."
* extension[resource].value[x] 1..1 
* extension[resource].value[x] only uri

* extension[includ] ^short = "Search-style _include directives, rooted in the resource for this shape. Servers SHOULD include resources listed here, if they exist and the user is authorized to receive them. Clients SHOULD be prepared to receive these additional resources, but SHALL function properly without them."
* extension[includ].value[x] 1..1
* extension[includ].value[x] only string 

* extension[revInclude] ^short = "Search-style _revinclude directives, rooted in the resource for this shape. Servers SHOULD include resources listed here, if they exist and the user is authorized to receive them. Clients SHOULD be prepared to receive these additional resources, but SHALL function properly without them."
* extension[revInclude].value[x] 1..1
* extension[revInclude].value[x] only string 

Extension:   BackportTopicStatus
Id:          extension-SubscriptionTopicStatus
Title:       "CanFilterBy definition"
Description: "Extension to define a list of status Subscription Topic."
//* url = "https://profiles.ihe.net/ITI/DSUBm/BackportResourceTrigger"
* ^context.type = #element
* ^context.expression = "Basic"
* extension contains 
    status 1..1 

* extension[status] ^short = "The current state of the SubscriptionTopic."
* extension[status].value[x] 1..1 
* extension[status].value[x] only Coding 
* extension[status].valueCoding from PublicationStatus (required)





ValueSet: DSUBmInteractionTrigger
Title: "Restful-interaction available for resource"
Description: "A ValueSet of the allowed Restful-interaction used for defining resourceTriggers."
* ^experimental = false
* http://hl7.org/fhir/restful-interaction#create
* http://hl7.org/fhir/restful-interaction#update
* http://hl7.org/fhir/restful-interaction#delete
