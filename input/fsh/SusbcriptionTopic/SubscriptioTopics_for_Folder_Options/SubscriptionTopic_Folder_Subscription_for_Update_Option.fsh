Instance: DSUBm-SubscriptionTopic-Folder-Subscription-UpdateOpt
InstanceOf: SubscriptionTopic
Usage: #definition
Title:       "SubscriptionTopic for Folder Patient-Dependent resource with Folder Subscription for Update Option"
Description:  "Profile for the resource SubscriptionTopic. The resource describe the topic of a creation or update of a Folder type List Resource. 
This topic shall be used in all Folder subscriptions that have a specific patient in the criteria element.
Note that:
- the trigger for this topic shall be the resourceTrigger (so the eventTrigger shall not be used)
- the resourceTrigger.resource element shall be a Folder type List resource
- this resource shall be used when the \"Folder Subscription for Update Option\" is supported
- \"- the events are creation and update of a Folder type List resource
"
* meta.versionId = "1"
* title = "SubscriptionTopic for Folder Subscription for Update Option"
* status = #active 
* resourceTrigger[0].description = "A Folder type List resource is created or updated"
* resourceTrigger[=].resource = "http://hl7.org/fhir/StructureDefinition/List"
* resourceTrigger[=].supportedInteraction[0] = #create
* resourceTrigger[=].supportedInteraction[+] = #update
* resourceTrigger[=].fhirPathCriteria = "((%current.code.coding.where(system='https://profiles.ihe.net/ITI/MHD/CodeSystem/MHDlistTypes').code='folder' or %current.code.coding.where(system='https://profiles.ihe.net/ITI/DSUBm/CodeSystem/DSUBmlistTypes').code='folder'))"


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
