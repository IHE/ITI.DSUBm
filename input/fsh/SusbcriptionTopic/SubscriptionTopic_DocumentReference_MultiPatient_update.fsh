Instance: DSUBm-SubscriptionTopic-DocReference-MultiPatient-UpdateOption
InstanceOf: SubscriptionTopic
Usage: #definition
Title:       "SubscriptionTopic for DocumentReference Multi-Patient resource with update option"
Description:  "Profile for the resource SubscriptionTopic. The resource describe the topic of a creation/update/delete of a DocumentReference. 
This topic shall be used in all DocumentReference subscriptions that have not a specific patient in the criteria element.
Note that:
- the trigger for this topic shall be the resourceTrigger (so the eventTrigger shall not be used).
- the resourceTrigger.resource element shall be a DocumentReference resource
- the canFilterBy.filterParameter does not include the patient parameter
- this resource shall be used when the [Updates to document sharing resources option](volume-1.html#15421-updates-to-document-sharing-resources-option) is supported.
"
* meta.versionId = "1"
* title = "SubscriptionTopic for DocumentReference Multi-Patient resource with Updates to document sharing resources option"
* status = #active 
* resourceTrigger.description = "A DocumentReference resource is created, updated or deleted"
* resourceTrigger.resource = "http://hl7.org/fhir/StructureDefinition/DocumentReference"
* resourceTrigger.supportedInteraction[0] = #create
* resourceTrigger.supportedInteraction[+] = #update
* resourceTrigger.supportedInteraction[+] = #delete

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
