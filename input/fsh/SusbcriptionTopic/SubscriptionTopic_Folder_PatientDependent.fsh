Instance: DSUBm-SubscriptionTopic-Folder-PatientDependent
InstanceOf: SubscriptionTopic
Usage: #definition
Title:       "SubscriptionTopic for Folder Patient-Dependent resource"
Description:  "Profile for the resource SubscriptionTopic. The resource describe the topic of a creation of a Folder List Resource. 
This topic shall be used in all Folder subscriptions that have a specific patient in the criteria element and are just focusing on the create event.
Note that:
- the trigger for this topic shall be the resourceTrigger (so the eventTrigger shall not be used).
- the resourceTrigger.resource element shall be a Folder List resource
- this topic only covers the create event
"
* meta.versionId = "1"
* title = "SubscriptionTopic for Folder Patient-Dependent resource"
* status = #active 
* resourceTrigger.description = "A Folder type List resource is created or updated"
* resourceTrigger.resource = "http://hl7.org/fhir/StructureDefinition/List"
* resourceTrigger.supportedInteraction[0] = #create
* resourceTrigger.supportedInteraction[+] = #update

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
* notificationShape.include = "List:patient&iterate=Patient.link"
