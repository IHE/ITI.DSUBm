Instance: DSUBm-SubscriptionTopic-Folder-Subscription-MinUpdateOpt
InstanceOf: Basic
Usage: #definition
Title:       "SubscriptionTopic for Folder Patient-Dependent resource with Folder Subscription for Minimal Update Option"
Description:  "Profile for the resource SubscriptionTopic. The resource describe the topic of a creation of a Folder type List Resource, the update to insert or remove documents in the Folder and the update of the status. 
This topic shall be used in all Folder subscriptions that have a specific patient in the criteria element.
Note that:
- the trigger for this topic shall be the resourceTrigger (so the eventTrigger shall not be used)
- the resourceTrigger.resource element shall be a Folder type List resource
- this resource shall be used when the \"Folder Subscription for Minimal Update Option\" is supported
- the events are the creation of a Folder type List Resource, the update to insert or remove documents in the Folder and the update of the status
"
/* commented old version R4B 
* meta.versionId = "1"
* title = "SubscriptionTopic for Folder Subscription for Minimal Update Option"
* status = #active 
* resourceTrigger[0].description = "A Folder type List resource is created."
* resourceTrigger[=].resource = "http://hl7.org/fhir/StructureDefinition/List"
* resourceTrigger[=].supportedInteraction[0] = #create
* resourceTrigger[=].fhirPathCriteria = "((%current.code.coding.where(system='https://profiles.ihe.net/ITI/MHD/CodeSystem/MHDlistTypes').code='folder' or %current.code.coding.where(system='https://profiles.ihe.net/ITI/DSUBm/CodeSystem/DSUBmlistTypes').code='folder'))"

* resourceTrigger[+].description = "A Folder type List resource is updated to insert new documents in the Folder, to remove documents from the Folder or to update the status."
* resourceTrigger[=].resource = "http://hl7.org/fhir/StructureDefinition/List"
* resourceTrigger[=].supportedInteraction[0] = #update
* resourceTrigger[=].fhirPathCriteria = "((%current.code.coding.where(system='https://profiles.ihe.net/ITI/MHD/CodeSystem/MHDlistTypes').code='folder' or %current.code.coding.where(system='https://profiles.ihe.net/ITI/DSUBm/CodeSystem/DSUBmlistTypes').code='folder')) and ( ((%previous.entry.item).count() < (%current.entry.item).count()) or (((%previous.entry.item).count() > (%current.entry.item).count())) or ((%previous.status != %current.status)) )"


* canFilterBy[0].description = "Filter based on the code of a Folder List Resource. (Fixed Value: folder)"
* canFilterBy[=].resource = "List"
* canFilterBy[=].filterParameter = "code"

* canFilterBy[+].description = "Filter based on the patient of a Folder List Resource. (Folder.patientId)"
* canFilterBy[=].resource = "List"
* canFilterBy[=].filterParameter = "patient"

* canFilterBy[+].description = "Filter based on the patient of a Folder List Resource. (Folder.patientId)"
* canFilterBy[=].resource = "List"
* canFilterBy[=].filterParameter = "patient.identifier"

* canFilterBy[+].description = "Filter based on the identifier of a Folder List Resource. (Folder.entryUUID and Folder.uniqueId)"
* canFilterBy[=].resource = "List"
* canFilterBy[=].filterParameter = "identifier"

* canFilterBy[+].description = "Filter based on the designationType of a Folder List Resource. (Folder.codeList)"
* canFilterBy[=].resource = "List"
* canFilterBy[=].filterParameter = "designationType"

* canFilterBy[+].description = "Filter based on the status of a Folder List Resource. (Folder.availabilityStatus)"
* canFilterBy[=].resource = "List"
* canFilterBy[=].filterParameter = "status"

* notificationShape.resource = "List"
*/

* meta.versionId = "1"
* extension[0].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.url"
* extension[=].valueUri = "https://profiles.ihe.net/ITI/DSUBm/SubscriptionTopic/DSUBm-SubscriptionTopic-Folder-Subscription-MinUpdateOpt"

* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.title"
* extension[=].valueString = "SubscriptionTopic for Folder Subscription for Minimal Update Option"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.resourceTrigger"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "A SubmissionSet type List resource is created resource"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.Folder"
* extension[=].extension[+].url = "supportedInteraction"
* extension[=].extension[=].valueCode = #create
* extension[=].extension[+].url = "fhirPathCriteria"
* extension[=].extension[=].valueString = "%current.code.coding.where(system='https://profiles.ihe.net/ITI/MHD/CodeSystem/MHDlistTypes').code='folder' "

* extension[=].extension[+].url = "supportedInteraction"
* extension[=].extension[=].valueCode = #update
* extension[=].extension[+].url = "fhirPathCriteria"
* extension[=].extension[=].valueString = "%current.code.coding.where(system='https://profiles.ihe.net/ITI/MHD/CodeSystem/MHDlistTypes').code='folder'"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the code of a Folder List Resource. (Fixed Value: folder)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "Folder"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "code"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the patient of a Folder List Resource. (Folder.patientId)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "Folder"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "patient"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the patient of a Folder List Resource. (Folder.patientId)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "Folder"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "patient.identifier"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the identifier of a Folder List Resource. (Folder.entryUUID and Folder.uniqueId)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "Folder"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "identifier"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the designationType of a Folder List Resource. (Folder.codeList)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "Folder"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "designationType"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the status of a Folder List Resource. (Folder.availabilityStatus)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "Folder"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "status"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.notificationShape"
* extension[=].extension[0].url = "description"
* extension[=].extension[0].url = "resource"
* extension[=].extension[=].valueUri = "Folder"

* modifierExtension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.status"
* modifierExtension.valueCode = #active
* code = $fhir-types#SubscriptionTopic