Instance: DSUBm-SubscriptionTopic-Folder-Subscription-for-Full-Events
InstanceOf: Basic
Usage: #example
Title:       "SubscriptionTopic for Folder Patient-Dependent resource with Folder Subscription for Full Events Option"
Description:  "Profile for the resource SubscriptionTopic. The resource describe the topic of a creation, update or deletion of a Folder type List Resource. 
This topic shall be used in all Folder subscriptions that have a specific patient in the criteria element.
Note that:
- the trigger for this topic shall be the resourceTrigger (so the eventTrigger shall not be used)
- the resourceTrigger.resource element shall be a Folder type List resource
- this resource shall be used when the \"Folder Subscription for Full Events Option\" is supported
- the events are creation, update and deletion of a Folder type List resource
"

* meta.versionId = "2"
/*
* extension[0].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.url"
* extension[=].valueUri = "https://profiles.ihe.net/ITI/DSUBm/SubscriptionTopic/DSUBm-SubscriptionTopic-Folder-Subscription-for-Full-Events"

* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.title"
* extension[=].valueString = "SubscriptionTopic for Folder Subscription for Full Events Option"

* extension[+].url = Canonical(extension-SubscriptionTopicResourceTrigger)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "A Folder type List resource is created, updated or deleted"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.Folder"
* extension[=].extension[+].url = "supportedInteraction"
* extension[=].extension[=].valueCode = #create
* extension[=].extension[+].url = "supportedInteraction"
* extension[=].extension[=].valueCode = #update
* extension[=].extension[+].url = "supportedInteraction"
* extension[=].extension[=].valueCode = #delete
* extension[=].extension[+].url = "fhirPathCriteria"
* extension[=].extension[=].valueString = "%current.code.coding.where(system='https://profiles.ihe.net/ITI/MHD/CodeSystem/MHDlistTypes').code='folder'"

* extension[+].url = Canonical(extension-SubscriptionTopicCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the code of a Folder List Resource. (Fixed Value: folder)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "Folder"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "code"

* extension[+].url = Canonical(extension-SubscriptionTopicCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the patient of a Folder List Resource. (Folder.patientId)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "Folder"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "patient"

* extension[+].url = Canonical(extension-SubscriptionTopicCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the patient of a Folder List Resource. (Folder.patientId)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "Folder"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "patient.identifier"

* extension[+].url = Canonical(extension-SubscriptionTopicCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the identifier of a Folder List Resource. (Folder.entryUUID and Folder.uniqueId)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "Folder"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "identifier"

* extension[+].url = Canonical(extension-SubscriptionTopicCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the designationType of a Folder List Resource. (Folder.codeList)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "Folder"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "designationType"

* extension[+].url = Canonical(extension-SubscriptionTopicCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the status of a Folder List Resource. (Folder.availabilityStatus)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "Folder"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "status"

* extension[+].url = Canonical(extension-SubscriptionTopicNotificationShape)
* extension[=].extension[0].url = "resource"
* extension[=].extension[=].valueUri = "Folder"

* extension[+].url = Canonical(extension-SubscriptionTopicStatus)
* extension[=].extension[0].url = "status"
* extension[=].extension[=].valueUri = #active
*/
* code = $fhir-types#SubscriptionTopic
