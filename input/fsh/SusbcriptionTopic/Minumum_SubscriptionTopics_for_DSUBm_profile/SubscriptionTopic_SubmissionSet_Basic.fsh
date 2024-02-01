// SubscriptionTopic for SubmissionSet type List (minumim requirement for DSUBm)
Instance: DSUBm-SubscriptionTopic-SubmissionSet-PatientDependent
InstanceOf: Basic
Usage: #definition
Title:       "SubscriptionTopic for SubmissionSet PatientDependent resource"
Description:  "Canonical instance for the resource SubscriptionTopic. It describes the topic for the Subscription. 
This topic shall be used in all SubmissionSet subscriptions that have a specific patient in the criteria element and are just focusing on the create event.
Note that:
- the trigger for this topic shall be the resourceTrigger (so the eventTrigger shall not be used)
- the resourceTrigger.resource element shall be a SubmissionSet type List Resource
- this topic only covers the create event of a SubmissionSet type List resource
"
/* commented old version for R4B
* meta.versionId = "1"
* title = "SubscriptionTopic for SubmissionSet PatientDependent resource"
* status = #active 
* resourceTrigger.description = "A SubmissionSet type List resource is created"
* resourceTrigger.resource = "http://hl7.org/fhir/StructureDefinition/List"
* resourceTrigger.supportedInteraction = #create
* resourceTrigger.fhirPathCriteria = "((%current.code.coding.where(system='https://profiles.ihe.net/ITI/MHD/CodeSystem/MHDlistTypes').code='submissionset' or %current.code.coding.where(system='https://profiles.ihe.net/ITI/DSUBm/CodeSystem/DSUBmlistTypes').code='submissionset'))"

* canFilterBy[0].description = "Filter based on the code of a SubmissionSet List Resource. (Fixed Value: submissionset)"
* canFilterBy[=].resource = "List"
* canFilterBy[=].filterParameter = "code"

* canFilterBy[+].description = "Filter based on the patient of a SubmissionSet List Resource. (SubmissionSet.patientId)"
* canFilterBy[=].resource = "List"
* canFilterBy[=].filterParameter = "patient"

* canFilterBy[+].description = "Filter based on the patient of a SubmissionSet List Resource. (SubmissionSet.patientId)"
* canFilterBy[=].resource = "List"
* canFilterBy[=].filterParameter = "patient.identifier"

* canFilterBy[+].description = "Filter based on the source of a SubmissionSet List Resource. (SubmissionSet.author)"
* canFilterBy[=].resource = "List"
* canFilterBy[=].filterParameter = "source"

* canFilterBy[+].description = "Filter based on the sourceId of a SubmissionSet List Resource. (SubmissionSet.sourceId)"
* canFilterBy[=].resource = "List"
* canFilterBy[=].filterParameter = "sourceId"

* canFilterBy[+].description = "Filter based on the intendedRecipient of a SubmissionSet List Resource. (SubmissionSet.intendedRecipient)"
* canFilterBy[=].resource = "List"
* canFilterBy[=].filterParameter = "intendedRecipient"

* notificationShape.resource = "List"
 */
* meta.versionId = "1"

* extension[0].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.url"
* extension[=].valueUri = "https://profiles.ihe.net/ITI/DSUBm/SubscriptionTopic/DSUBm-SubscriptionTopic-SubmissionSet-PatientDependent"

* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.title"
* extension[=].valueString = "SubscriptionTopic for SubmissionSet PatientDependent resource"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.resourceTrigger"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "A SubmissionSet type List resource is created resource"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "http://hl7.org/fhir/StructureDefinition/DocumentReference"
* extension[=].extension[+].url = "supportedInteraction"
* extension[=].extension[=].valueCode = #create
* extension[=].extension[+].url = "fhirPathCriteria"
* extension[=].extension[=].valueString = "(%current.code.coding.where(system='https://profiles.ihe.net/ITI/MHD/CodeSystem/MHDlistTypes').code='submissionset'"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the code of a SubmissionSet List Resource. (Fixed Value: submissionset)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "SubmissionSet"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "code"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the patient of a SubmissionSet List Resource. (SubmissionSet.patientId)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "SubmissionSet"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "patient"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the patient of a SubmissionSet List Resource. (SubmissionSet.patientId)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "SubmissionSet"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "patient.identifier"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the source of a SubmissionSet List Resource. (SubmissionSet.author)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "SubmissionSet"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "source"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the sourceId of a SubmissionSet List Resource. (SubmissionSet.sourceId)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "SubmissionSet"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "sourceId"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the intendedRecipient of a SubmissionSet List Resource. (SubmissionSet.intendedRecipient)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "SubmissionSet"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "intendedRecipient"


* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.notificationShape"
* extension[=].extension[0].url = "description"
* extension[=].extension[0].url = "resource"
* extension[=].extension[=].valueUri = "SubmissionSet"

* modifierExtension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.status"
* modifierExtension.valueCode = #active
* code = $fhir-types#SubscriptionTopic


// SubscriptionTopic for SubmissionSet type List (minumim requirement for DSUBm)
Instance: DSUBm-SubscriptionTopic-SubmissionSet-MultiPatient
InstanceOf: Basic
Usage: #definition
Title:       "SubscriptionTopic for SubmissionSet Multi-Patient resource"
Description:  "Canonical instance for the resource SubscriptionTopic. It describes the topic for the Subscription. 
This topic shall be used in all SubmissionSet type List subscriptions that have not a specific patient in the criteria element and are just focusing on the create event.
Note that:
- the trigger for this topic shall be the resourceTrigger (so the eventTrigger shall not be used)
- the resourceTrigger.resource element shall be a SubmissionSet type List resource
- the canFilterBy.filterParameter does not include the patient and patient.identifier parameters
- this topic only covers the create event of a SubmissionSet type List resource
"


/* commented old version for R4B 
* meta.versionId = "1"
* title = "SubscriptionTopic for SubmissionSet Multi-Patient resource"
* status = #active 
* resourceTrigger.description = "A SubmissionSet type List resource is created"
* resourceTrigger.resource = "http://hl7.org/fhir/StructureDefinition/List"
* resourceTrigger.supportedInteraction = #create
* resourceTrigger.fhirPathCriteria = "((%current.code.coding.where(system='https://profiles.ihe.net/ITI/MHD/CodeSystem/MHDlistTypes').code='submissionset' or %current.code.coding.where(system='https://profiles.ihe.net/ITI/DSUBm/CodeSystem/DSUBmlistTypes').code='submissionset'))"

* canFilterBy[0].description = "Filter based on the code of a SubmissionSet List Resource. (Fixed Value: submissionset)"
* canFilterBy[=].resource = "List"
* canFilterBy[=].filterParameter = "code"

* canFilterBy[+].description = "Filter based on the source of a SubmissionSet List Resource. (SubmissionSet.author)"
* canFilterBy[=].resource = "List"
* canFilterBy[=].filterParameter = "source"

* canFilterBy[+].description = "Filter based on the sourceId of a SubmissionSet List Resource. (SubmissionSet.sourceId)"
* canFilterBy[=].resource = "List"
* canFilterBy[=].filterParameter = "sourceId"

* canFilterBy[+].description = "Filter based on the intendedRecipient of a SubmissionSet List Resource. (SubmissionSet.intendedRecipient)"
* canFilterBy[=].resource = "List"
* canFilterBy[=].filterParameter = "intendedRecipient"

* notificationShape.resource = "List"
*/
* meta.versionId = "1"
* extension[0].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.url"
* extension[=].valueUri = "https://profiles.ihe.net/ITI/DSUBm/SubscriptionTopic/DSUBm-SubscriptionTopic-SubmissionSet-MultiPatient"

* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.title"
* extension[=].valueString = "SubscriptionTopic for SubmissionSet Multi-Patient resource"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.resourceTrigger"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "A SubmissionSet type List resource is created."
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "http://hl7.org/fhir/StructureDefinition/DocumentReference"
* extension[=].extension[+].url = "supportedInteraction"
* extension[=].extension[=].valueCode = #create
* extension[=].extension[+].url = "fhirPathCriteria"
* extension[=].extension[=].valueString = "(%current.code.coding.where(system='https://profiles.ihe.net/ITI/MHD/CodeSystem/MHDlistTypes').code='submissionset'"


* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the code of a SubmissionSet List Resource. (Fixed Value: submissionset)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "SubmissionSet"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "code"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the source of a SubmissionSet List Resource. (SubmissionSet.author)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "SubmissionSet"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "source"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the sourceId of a SubmissionSet List Resource. (SubmissionSet.sourceId)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "SubmissionSet"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "sourceId"

* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the intendedRecipient of a SubmissionSet List Resource. (SubmissionSet.intendedRecipient)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "SubmissionSet"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "intendedRecipient"


* extension[+].url = "http://hl7.org/fhir/4.3/StructureDefinition/extension-SubscriptionTopic.notificationShape"
* extension[=].extension[0].url = "description"
* extension[=].extension[0].url = "resource"
* extension[=].extension[=].valueUri = "SubmissionSet"

* modifierExtension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.status"
* modifierExtension.valueCode = #active
* code = $fhir-types#SubscriptionTopic