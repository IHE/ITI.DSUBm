// SubscriptionTopic for DocumentReference Patient Dependent with DocumentReference Subscription for Minimal Update Option
Instance: DSUBm-SubscriptionTopic-DocReference-PatientDependent-MinUpdate
InstanceOf: Basic
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
/* commented old version R4B 
 
* meta.versionId = "1"
* title = "SubscriptionTopic for DocumentReference Patient-Dependent resource with DocumentReference Subscription for Minimal Update Option"
* status = #active 
* resourceTrigger.description = "A DocumentReference resource is created or deleted."
* resourceTrigger.resource = "http://hl7.org/fhir/StructureDefinition/DocumentReference"
* resourceTrigger.supportedInteraction[0] = #create
* resourceTrigger.supportedInteraction[+] = #delete

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
*/
* meta.versionId = "1"
* extension[0].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.url"
* extension[=].valueUri = "https://profiles.ihe.net/ITI/DSUBm/SubscriptionTopic/DSUBm-SubscriptionTopic-DocReference-PatientDependent-MinUpdate"

* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.title"
* extension[=].valueString = "SubscriptionTopic for DocumentReference Patient-Dependent resource with DocumentReference Subscription for Minimal Update Option"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.resourceTrigger"
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

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the author of an DocumentReference. (DocumentEntry.author)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "author.given"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the author of an DocumentReference. (DocumentEntry.author)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "author.family"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the event of a DocumentReference. (DocumentEntry.class)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "category"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the status of a DocumentReference. (DocumentEntry.eventCodeList)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "event"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the facility in which the DocumentReference has been compiled. (DocumentEntry.healthcareFacilityTypeCode)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "facility"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the format of the DocumentReference . (DocumentEntry.formatCode)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "format"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the patient associated to the DocumentReference. (DocumentEntry.patientId)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "patient"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the patient associated to the DocumentReference. (DocumentEntry.patientId)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "patient.identifier"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the security-label of the DocumentReference (DocumentEntry.confidentialityCode)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "security-label"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the practice setting of the DocumentReference (practiceSetting)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "setting"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the status of the DocumentReference (DocumentEntry.availabilityStatus)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "status"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the type of a DocumentReference. (DocumentReference.type)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "type"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.notificationShape"
* extension[=].extension[0].url = "description"
* extension[=].extension[0].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"

* modifierExtension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.status"
* modifierExtension.valueCode = #active
* code = $fhir-types#SubscriptionTopic

// SubscriptionTopic for DocumentReference MULTI-PATIENT with DocumentReference Subscription for Minimal Update Option
Instance: DSUBm-SubscriptionTopic-DocReference-MultiPatient-MinUpdate
InstanceOf: Basic
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
/* commented old version R4B

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
 */

* meta.versionId = "1"
* extension[0].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.url"
* extension[=].valueUri = "https://profiles.ihe.net/ITI/DSUBm/SubscriptionTopic/DSUBm-SubscriptionTopic-DocReference-MultiPatient-MinUpdate"

* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.title"
* extension[=].valueString = "SubscriptionTopic for DocumentReference Multi-Patient resource with DocumentReference Subscription for Minimal Update Option"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.resourceTrigger"
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

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the author of an DocumentReference. (DocumentEntry.author)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "author.given"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the author of an DocumentReference. (DocumentEntry.author)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "author.family"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the event of a DocumentReference. (DocumentEntry.class)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "category"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the status of a DocumentReference. (DocumentEntry.eventCodeList)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "event"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the facility in which the DocumentReference has been compiled. (DocumentEntry.healthcareFacilityTypeCode)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "facility"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the format of the DocumentReference . (DocumentEntry.formatCode)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "format"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the security-label of the DocumentReference (DocumentEntry.confidentialityCode)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "security-label"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the practice setting of the DocumentReference (practiceSetting)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "setting"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the status of the DocumentReference (DocumentEntry.availabilityStatus)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "status"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the type of a DocumentReference. (DocumentReference.type)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "type"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.notificationShape"
* extension[=].extension[0].url = "description"
* extension[=].extension[0].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"

* modifierExtension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.status"
* modifierExtension.valueCode = #active
* code = $fhir-types#SubscriptionTopic