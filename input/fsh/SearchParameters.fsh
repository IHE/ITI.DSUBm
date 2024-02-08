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
* expression = "extension('http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.resourceTrigger').children().where($this.url='resource').value.distinct() as string | extension('http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.canFilterBy').children().where($this.url='resource').value.distinct() as string | extension('http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.notificationShape').children().where($this.url='resource').value.distinct() as string"


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
* expression = "(extension('http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.status').value as string)"

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

//derived-or-self
Instance: SubscriptionTopic-derived-or-self
InstanceOf: SearchParameter
Usage: #definition
* extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* extension.valueCode = #trial-use
* url = "https://profiles.ihe.net/ITI/DSUBm/SearchParameter/SubscriptionTopic-derived-or-self"
* version = "4.0.1"
* name = "DerivedOrSelf"
* status = #active
* experimental = false
* description = "A server defined search that matches the url or derivedFrom url"
* code = #derived-or-self
* base = #Basic
* type = #uri
* expression = "(extension('http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.url').value as string) | (extension('http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.derivedFrom').value as string)"


