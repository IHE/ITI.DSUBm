Instance: DSUBm-SubscriptionTopic-Folder-PatientDependent
InstanceOf: SubscriptionTopic
Usage: #definition
Title:       "Canonical Topic for a Folder PatientDependent creation event for a specific patient"
Description:  "Profile for the resource SubscriptionTopic. The resource describe the topic of a creation of a Folder List Resource. 
This topic shall be used in all Folder subscriptions that have a specific patient in the criteria element.
Note that:
- the trigger for this topic shall be the resourceTrigger (so the eventTrigger shall not be used).
- the resourceTrigger.resource element shall be a Folder List resource
"
* meta.versionId = "1"
* meta.lastUpdated = "2023-10-26T21:04:49.9548614+00:00"
* title = "Canonical Topic that describe the creation of a Folder List resource"
* status = #active 
* resourceTrigger.description = "A Folder resource is created with status = current"
* resourceTrigger.resource = "http://hl7.org/fhir/StructureDefinition/List"
* resourceTrigger.supportedInteraction = #create
* resourceTrigger.queryCriteria.resultForCreate = #test-passes
* resourceTrigger.queryCriteria.current = "status=current"

* canFilterBy[0].description = "Filter based on the code of a Folder List Resource. (Fixed Value: folder)"
* canFilterBy[=].resource = "List"
* canFilterBy[=].filterParameter = "code"

* canFilterBy[+].description = "Filter based on the patient of a Folder List Resource. (Folder.patientId)"
* canFilterBy[=].resource = "List"
* canFilterBy[=].filterParameter = "patient"

* canFilterBy[+].description = "Filter based on the identifier of a Folder List Resource. (Folder.entryUUID and Folder.uniqueId)"
* canFilterBy[=].resource = "List"
* canFilterBy[=].filterParameter = "identifier"

* canFilterBy[+].description = "Filter based on the designationType of a Folder List Resource. (Folder.codeList)"
* canFilterBy[=].resource = "List"
* canFilterBy[=].filterParameter = "designationType"

* canFilterBy[+].description = "Filter based on the status of a Folder List Resource. (Folder.availabilityStatus)"
* canFilterBy[=].resource = "List"
* canFilterBy[=].filterParameter = "status "


* notificationShape.resource = "List"
* notificationShape.include = "List:patient&iterate=Patient.link"
