Instance: DSUBm-SubscriptionTopic-Basic-Folder-Subscription
InstanceOf: SubscriptionTopic
Usage: #definition
Title:       "SubscriptionTopic for Folder Patient-Dependent with Basic Folder Subscription Option"
Description:  "Profile for the resource SubscriptionTopic. The resource describe the topic of a creation of a Folder type List Resource and the update to insert new documents in the Folder. 
This topic shall be used in all Folder subscriptions that have a specific patient in the criteria element and are just focusing on the create event.
Note that:
- the trigger for this topic shall be the resourceTrigger (so the eventTrigger shall not be used).
- the resourceTrigger.resource element shall be a Folder List resource
- this topic covers the create event and the update to insert new documents in the Folder
- this resource shall be used when the Basic Folder Subscription Option is supported.
"
* meta.versionId = "1"
* title = "SubscriptionTopic for Folder Patient-Dependent resource"
* status = #active 
* resourceTrigger[0].description = "A Folder type List resource is created."
* resourceTrigger[=].resource = "http://hl7.org/fhir/StructureDefinition/List"
* resourceTrigger[=].supportedInteraction[0] = #create
* resourceTrigger[=].fhirPathCriteria = "((%current.code.coding.where(system='https://profiles.ihe.net/ITI/MHD/CodeSystem/MHDlistTypes').code='folder' or %current.code.coding.where(system='https://profiles.ihe.net/ITI/DSUBm/CodeSystem/MHDlistTypes').code='folder'))"

* resourceTrigger[+].description = "A Folder type List resource is updated to insert new documents in the Folder."
* resourceTrigger[=].resource = "http://hl7.org/fhir/StructureDefinition/List"
* resourceTrigger[=].supportedInteraction[0] = #update
* resourceTrigger[=].fhirPathCriteria = "((%current.code.coding.where(system='https://profiles.ihe.net/ITI/MHD/CodeSystem/MHDlistTypes').code='folder' or %current.code.coding.where(system='https://profiles.ihe.net/ITI/DSUBm/CodeSystem/MHDlistTypes').code='folder')) and ((%previous.entry.item).count() < (%current.entry.item).count())"




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
