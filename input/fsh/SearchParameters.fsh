// resource 
Instance: SubscriptionTopic-resource
InstanceOf: SearchParameter
Usage: #definition
* extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* extension.valueCode = #trial-use
* url = "https://profiles.ihe.net/ITI/DSUBm/SearchParameter/SubscriptionTopic-resource"
* version = "4.0.1"
* name = "Resource"
* status = #active
* experimental = false
* description = "Allowed resource for this definition"
* code = #resource
* base = #Basic
* type = #uri
* expression = "extension('http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.resourceTrigger').extension('url').value as string | extension('http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.canFilterBy').extension('url').value as string |  extension('http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.notificationShape').extension('url').value as string"


//status
Instance: SubscriptionTopic-status
InstanceOf: SearchParameter
Usage: #definition
* extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* extension.valueCode = #trial-use
* url = "https://profiles.ihe.net/ITI/DSUBm/SearchParameter/SubscriptionTopic-status"
* version = "4.0.1"
* name = "Status"
* status = #active
* experimental = false
* description = "A server defined search that matches the url"
* code = #url
* base = #Basic
* type = #uri
* expression = "(extension('http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.url').value as string)"

//url
Instance: SubscriptionTopic-url
InstanceOf: SearchParameter
Usage: #definition
* extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* extension.valueCode = #trial-use
* url = "https://profiles.ihe.net/ITI/DSUBm/SearchParameter/SubscriptionTopic-url"
* version = "4.0.1"
* name = "Url"
* status = #active
* experimental = false
* description = "A server defined search that matches the url"
* code = #url
* base = #Basic
* type = #uri
* expression = "(extension('http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.url').value as string)"


