// SubscriptionTopic for DocumentReference Patient Dependent with DocumentReference Subscription for Minimal Update Option
Instance: DSUBm-SubscriptionTopic-DocReference-PatientDependent-MinUpdate
InstanceOf: Basic
Usage: #example
Title:       "SubscriptionTopic for DocumentReference Patient-Dependent resource with DocumentReference Subscription for Minimal Update Option"
Description:  "Canonical instance for the resource SubscriptionTopic. It describes the topic for the Subscription. 
This topic shall be used in all DocumentReference subscriptions that have a specific patient in the criteria element.
Note that:
- the trigger for this topic shall be the resourceTrigger (so the eventTrigger shall not be used)
- the resourceTrigger.resource element shall be a DocumentReference resource
- this resource shall be used when the \"DocumentReference Subscription for Minimal Update Option\" is supported
- the events are creation, deletion and update only in the \"status\" of a DocumentReference.
"

* meta.versionId = "2"
/*
* extension[0].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.url"
* extension[=].valueUri = "https://profiles.ihe.net/ITI/DSUBm/SubscriptionTopic/DSUBm-SubscriptionTopic-DocReference-PatientDependent-MinUpdate"

* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.title"
* extension[=].valueString = "SubscriptionTopic for DocumentReference Patient-Dependent resource with DocumentReference Subscription for Minimal Update Option"

* extension[+].url = Canonical(extension-SubscriptionTopicResourceTrigger)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "A DocumentReference resource is created or deleted."
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "http://hl7.org/fhir/StructureDefinition/DocumentReference"
* extension[=].extension[+].url = "supportedInteraction"
* extension[=].extension[=].valueCode = #create
* extension[=].extension[+].url = "supportedInteraction"
* extension[=].extension[=].valueCode = #delete

* extension[=].extension[+].url = "supportedInteraction"
* extension[=].extension[=].valueCode = #update
* extension[=].extension[+].url = "fhirPathCriteria"
* extension[=].extension[=].valueString = "(%previous.status != %current.status)"

* extension[+].url = Canonical(extension-SubscriptionTopicCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the author of an DocumentReference. (DocumentEntry.author)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "author.given"

* extension[+].url = Canonical(extension-SubscriptionTopicCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the author of an DocumentReference. (DocumentEntry.author)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "author.family"

* extension[+].url = Canonical(extension-SubscriptionTopicCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the event of a DocumentReference. (DocumentEntry.class)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "category"

* extension[+].url = Canonical(extension-SubscriptionTopicCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the status of a DocumentReference. (DocumentEntry.eventCodeList)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "event"

* extension[+].url = Canonical(extension-SubscriptionTopicCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the facility in which the DocumentReference has been compiled. (DocumentEntry.healthcareFacilityTypeCode)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "facility"

* extension[+].url = Canonical(extension-SubscriptionTopicCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the format of the DocumentReference . (DocumentEntry.formatCode)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "format"

* extension[+].url = Canonical(extension-SubscriptionTopicCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the patient associated to the DocumentReference. (DocumentEntry.patientId)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "patient"

* extension[+].url = Canonical(extension-SubscriptionTopicCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the patient associated to the DocumentReference. (DocumentEntry.patientId)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "patient.identifier"

* extension[+].url = Canonical(extension-SubscriptionTopicCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the security-label of the DocumentReference (DocumentEntry.confidentialityCode)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "security-label"

* extension[+].url = Canonical(extension-SubscriptionTopicCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the practice setting of the DocumentReference (practiceSetting)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "setting"

* extension[+].url = Canonical(extension-SubscriptionTopicCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the status of the DocumentReference (DocumentEntry.availabilityStatus)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "status"

* extension[+].url = Canonical(extension-SubscriptionTopicCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the type of a DocumentReference. (DocumentReference.type)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "type"

* extension[+].url = Canonical(extension-SubscriptionTopicNotificationShape)
* extension[=].extension[0].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"

* extension[+].url = Canonical(extension-SubscriptionTopicStatus)
* extension[=].extension[0].url = "status"
* extension[=].extension[=].valueUri = #active
*/
* code = $fhir-types#SubscriptionTopic


// SubscriptionTopic for DocumentReference MULTI-PATIENT with DocumentReference Subscription for Minimal Update Option
Instance: DSUBm-SubscriptionTopic-DocReference-MultiPatient-MinUpdate
InstanceOf: Basic
Usage: #example
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

* meta.versionId = "2"
/*
* extension[0].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.url"
* extension[=].valueUri = "https://profiles.ihe.net/ITI/DSUBm/SubscriptionTopic/DSUBm-SubscriptionTopic-DocReference-MultiPatient-MinUpdate"

* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.title"
* extension[=].valueString = "SubscriptionTopic for DocumentReference Multi-Patient resource with DocumentReference Subscription for Minimal Update Option"

* extension[+].url = Canonical(extension-SubscriptionTopicResourceTrigger)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "A DocumentReference resource is created or deleted."
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "http://hl7.org/fhir/StructureDefinition/DocumentReference"
* extension[=].extension[+].url = "supportedInteraction"
* extension[=].extension[=].valueCode = #create
* extension[=].extension[+].url = "supportedInteraction"
* extension[=].extension[=].valueCode = #delete

* extension[=].extension[+].url = "supportedInteraction"
* extension[=].extension[=].valueCode = #update
* extension[=].extension[+].url = "fhirPathCriteria"
* extension[=].extension[=].valueString = "(%previous.status != %current.status)"

* extension[+].url = Canonical(extension-SubscriptionTopicCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the author of an DocumentReference. (DocumentEntry.author)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "author.given"

* extension[+].url = Canonical(extension-SubscriptionTopicCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the author of an DocumentReference. (DocumentEntry.author)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "author.family"

* extension[+].url = Canonical(extension-SubscriptionTopicCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the event of a DocumentReference. (DocumentEntry.class)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "category"

* extension[+].url = Canonical(extension-SubscriptionTopicCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the status of a DocumentReference. (DocumentEntry.eventCodeList)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "event"

* extension[+].url = Canonical(extension-SubscriptionTopicCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the facility in which the DocumentReference has been compiled. (DocumentEntry.healthcareFacilityTypeCode)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "facility"

* extension[+].url = Canonical(extension-SubscriptionTopicCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the format of the DocumentReference . (DocumentEntry.formatCode)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "format"

* extension[+].url = Canonical(extension-SubscriptionTopicCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the security-label of the DocumentReference (DocumentEntry.confidentialityCode)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "security-label"

* extension[+].url = Canonical(extension-SubscriptionTopicCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the practice setting of the DocumentReference (practiceSetting)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "setting"

* extension[+].url = Canonical(extension-SubscriptionTopicCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the status of the DocumentReference (DocumentEntry.availabilityStatus)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "status"

* extension[+].url = Canonical(extension-SubscriptionTopicCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the type of a DocumentReference. (DocumentReference.type)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "type"

* extension[+].url = Canonical(extension-SubscriptionTopicNotificationShape)
* extension[=].extension[0].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"

* extension[+].url = Canonical(extension-SubscriptionTopicStatus)
* extension[=].extension[0].url = "status"
* extension[=].extension[=].valueUri = #active
*/
* code = $fhir-types#SubscriptionTopic
