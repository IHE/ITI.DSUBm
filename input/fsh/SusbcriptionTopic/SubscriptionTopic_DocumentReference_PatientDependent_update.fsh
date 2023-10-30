Instance: SubscriptionTopic-DocReference-PatientDependent-All-Interaction
InstanceOf: SubscriptionTopic
Usage: #definition
Title:       "Canonical Topic for create/update/delete events of a DocumentReference resource."
Description:  "Profile for the resource SubscriptionTopic. The resource describe the topic of a creation/update/delete of a DocumentReference. 
This topic shall be used in all DocumentReference subscriptions that have a specific patient in the criteria element.
Note that:
- the trigger for this topic shall be the resourceTrigger (so the eventTrigger shall not be used).
- the resourceTrigger.resource element shall be a DocumentReference resource
- this resource shall be used when the [Updates to document sharing resources option](https://build.fhir.org/ig/IHE/ITI.DSUBm/branches/master/volume-1.html#15421-updates-to-document-sharing-resources-option) is supported.
"
* meta.versionId = "1"
* meta.lastUpdated = "2023-10-26T21:04:49.9548614+00:00"
* title = "Canonical Topic that describe the creation,update or delete of a DocumentReference resource"
* status = #active 
* resourceTrigger.description = "A DocumentReference resource is created with status = current"
* resourceTrigger.resource = "http://hl7.org/fhir/StructureDefinition/DocumentReference"
* resourceTrigger.supportedInteraction = #create
* resourceTrigger.supportedInteraction = #update
* resourceTrigger.supportedInteraction = #delete

* canFilterBy[0].description = "Filter based on the author of an DocumentReference. (DocumentEntry.author)"
* canFilterBy[=].resource = "DocumentReference"
* canFilterBy[=].filterParameter = "author"

* canFilterBy[+].description = "Filter based on the event of a DocumentReference. (DocumentEntry.class)"
* canFilterBy[=].resource = "DocumentReference"
* canFilterBy[=].filterParameter = "category"

* canFilterBy[+].description = "Filter based on the status of a DocumentReference. (DocumentEntry.eventCodeList)"
* canFilterBy[=].resource = "DocumentReference"
* canFilterBy[=].filterParameter = "event"

* canFilterBy[+].description = "Filter based on the facility in which the DocumentReference has been compiled. (DocumentEntry.healthcareFacilityTypeCode)"
* canFilterBy[=].resource = "DocumentReference"
* canFilterBy[=].filterParameter = "facility"

* canFilterBy[+].description = "Filter based on the format of the DocumentReference . (DocumentEntry.formatCode)"
* canFilterBy[=].resource = "DocumentReference"
* canFilterBy[=].filterParameter = "format"

* canFilterBy[+].description = "Filter based on the patinet associated to the DocumentReference. (DocumentEntry.patientId)"
* canFilterBy[=].resource = "DocumentReference"
* canFilterBy[=].filterParameter = "patient"

* canFilterBy[+].description = "Filter based on the security-label of the DocumentReference (DocumentEntry.confidentialityCode)"
* canFilterBy[=].resource = "DocumentReference"
* canFilterBy[=].filterParameter = "security-label"

* canFilterBy[+].description = "Filter based on the practice setting of the DocumentReference (practiceSetting)"
* canFilterBy[=].resource = "DocumentReference"
* canFilterBy[=].filterParameter = "setting"

* canFilterBy[+].description = "Filter based on the status of the DocumentReference (DocumentEntry.availabilityStatus)"
* canFilterBy[=].resource = "DocumentReference"
* canFilterBy[=].filterParameter = "status"

* canFilterBy[+].description = "Filter based on the type of a DocumentReference. (DocumentReference.type)"
* canFilterBy[=].resource = "DocumentReference"
* canFilterBy[=].filterParameter = "type"

* notificationShape.resource = "DocumentReference"
* notificationShape.include = "DocumentReference:patient&iterate=Patient.link"