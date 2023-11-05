// SubscriptionTopic for DocumentReference (minumim requirement for DSUBm)
Instance: DSUBm-SubscriptionTopic-DocumentReference-PatientDependent
InstanceOf: SubscriptionTopic
Usage: #definition
Title:       "SubscriptionTopic for DocumentReference Patient-Dependent resource"
Description:  "Canonical instance for the resource SubscriptionTopic. It describes the topic for the Subscription. 
This topic shall be used in all DocumentReference subscriptions that have a specific patient in the criteria element and are just focusing on the create event. 
Note that:
- the trigger for this topic shall be the resourceTrigger (so the eventTrigger shall not be used).
- the resourceTrigger.resource element shall be a DocumentReference resource
- this topic only covers the create event of a DocumentReference
"
* meta.versionId = "1"
* title = "SubscriptionTopic for DocumentReference Patient-Dependent resource"
* status = #active 
* resourceTrigger.description = "A DocumentReference resource is created"
* resourceTrigger.resource = "http://hl7.org/fhir/StructureDefinition/DocumentReference"
* resourceTrigger.supportedInteraction = #create

* canFilterBy[0].description = "Filter based on the author of an DocumentReference. (DocumentEntry.author)"
* canFilterBy[=].resource = "DocumentReference"
* canFilterBy[=].filterParameter = "author.given"

* canFilterBy[+].description = "Filter based on the author of an DocumentReference. (DocumentEntry.author)"
* canFilterBy[=].resource = "DocumentReference"
* canFilterBy[=].filterParameter = "author.family"

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

* canFilterBy[+].description = "Filter based on the patient associated to the DocumentReference. (DocumentEntry.patientId)"
* canFilterBy[=].resource = "DocumentReference"
* canFilterBy[=].filterParameter = "patient"

* canFilterBy[+].description = "Filter based on the patient associated to the DocumentReference. (DocumentEntry.patientId)"
* canFilterBy[=].resource = "DocumentReference"
* canFilterBy[=].filterParameter = "patient.identifier"

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



// SubscriptionTopic for DocumentReference MULTI-PATIENT (minumim requirement for DSUBm)
Instance: DSUBm-SubscriptionTopic-DocumentReference-MultiPatient
InstanceOf: SubscriptionTopic
Usage: #definition
Title:       "SubscriptionTopic for DocumentReference Multi-Patient resource"
Description:  "Canonical instance for the resource SubscriptionTopic. It describes the topic for the Subscription. 
This topic shall be used in all DocumentReference subscriptions that have not a specific patient in the criteria element and are just focusing on the create event.
Note that:
- the trigger for this topic shall be the resourceTrigger (so the eventTrigger shall not be used).
- the resourceTrigger.resource element shall be a DocumentReference resource
- the canFilterBy.filterParameter does not include the patient and patient.identifier parameters
- this topic only covers the create event of a DocumentReference
"
* meta.versionId = "1"
* title = "SubscriptionTopic for DocumentReference Multi-Patient resource"
* status = #active 
* resourceTrigger.description = "A DocumentReference resource is created"
* resourceTrigger.resource = "http://hl7.org/fhir/StructureDefinition/DocumentReference"
* resourceTrigger.supportedInteraction = #create

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