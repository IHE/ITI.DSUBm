// SubscriptionTopic for DocumentReference Patient Dependent with DocumentReference Subscription for Minimal Update Option
Instance: DSUBm-SubscriptionTopic-DocReference-PatientDependent-MinUpdate
InstanceOf: SubscriptionTopic
Usage: #definition
Title:       "SubscriptionTopic for DocumentReference Patient-Dependent resource with DocumentReference Subscription for Minimal Update Option"
Description:  "Canonical instance for the resource SubscriptionTopic. It describes the topic for the Subscription. 
This topic shall be used in all DocumentReference subscriptions that have a specific patient in the criteria element.
Note that:
- the trigger for this topic shall be the resourceTrigger (so the eventTrigger shall not be used)
- the resourceTrigger.resource element shall be a DocumentReference resource
- this resource shall be used when the \"DocumentReference Subscription for Minimal Update Option\" is supported
- the events are creation, deletion and update only in the \"status\" of a DocumentReference.
"
* meta.versionId = "1"
* title = "SubscriptionTopic for DocumentReference Patient-Dependent resource with DocumentReference Subscription for Minimal Update Option"
* status = #active 
* resourceTrigger[0].description = "A DocumentReference resource is created or deleted."
* resourceTrigger[=].resource = "http://hl7.org/fhir/StructureDefinition/DocumentReference"
* resourceTrigger[=].supportedInteraction[0] = #create
* resourceTrigger[=].supportedInteraction[+] = #delete

* resourceTrigger[+].description = "A DocumentReference resource is updated only in the \"status\"."
* resourceTrigger[=].resource = "http://hl7.org/fhir/StructureDefinition/DocumentReference"
* resourceTrigger[=].supportedInteraction[0] = #update
* resourceTrigger[=].fhirPathCriteria = "(%previous.status != %current.status)"


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



// SubscriptionTopic for DocumentReference MULTI-PATIENT with DocumentReference Subscription for Minimal Update Option
Instance: DSUBm-SubscriptionTopic-DocReference-MultiPatient-MinUpdate
InstanceOf: SubscriptionTopic
Usage: #definition
Title:       "SubscriptionTopic for DocumentReference Multi-Patient resource with DocumentReference Subscription for Minimal Update Option"
Description:  "Canonical instance for the resource SubscriptionTopic. It describes the topic for the Subscription.
This topic shall be used in all DocumentReference subscriptions that have not a specific patient in the criteria element.
Note that:
- the trigger for this topic shall be the resourceTrigger (so the eventTrigger shall not be used)
- the resourceTrigger.resource element shall be a DocumentReference resource
- the canFilterBy.filterParameter does not include the patient and patient.identifier parameters
- this resource shall be used when the \"DocumentReference Subscription for Minimal Update Option\" is supported
- the events are creation, deletion and update only in the \"status\" of a DocumentReference
"
* meta.versionId = "1"
* title = "SubscriptionTopic for DocumentReference Multi-Patient resource with DocumentReference Subscription for Minimal Update Option"
* status = #active 
* resourceTrigger[0].description = "A DocumentReference resource is created or deleted."
* resourceTrigger[=].resource = "http://hl7.org/fhir/StructureDefinition/DocumentReference"
* resourceTrigger[=].supportedInteraction[0] = #create
* resourceTrigger[=].supportedInteraction[+] = #delete

* resourceTrigger[+].description = "A DocumentReference resource is updated only in the \"status\"."
* resourceTrigger[=].resource = "http://hl7.org/fhir/StructureDefinition/DocumentReference"
* resourceTrigger[=].supportedInteraction[0] = #update
* resourceTrigger[=].fhirPathCriteria = "(%previous.status != %current.status)"

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


