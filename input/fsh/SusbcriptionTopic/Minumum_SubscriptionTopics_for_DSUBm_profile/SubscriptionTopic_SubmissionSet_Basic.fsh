// SubscriptionTopic for SubmissionSet type List (minumim requirement for DSUBm)
Instance: DSUBm-SubscriptionTopic-SubmissionSet-PatientDependent
InstanceOf: SubscriptionTopic
Usage: #definition
Title:       "SubscriptionTopic for SubmissionSet PatientDependent resource"
Description:  "Canonical instance for the resource SubscriptionTopic. It describes the topic for the Subscription. 
This topic shall be used in all SubmissionSet subscriptions that have a specific patient in the criteria element and are just focusing on the create event.
Note that:
- the trigger for this topic shall be the resourceTrigger (so the eventTrigger shall not be used)
- the resourceTrigger.resource element shall be a SubmissionSet type List Resource
- this topic only covers the create event of a SubmissionSet type List resource
"
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

// SubscriptionTopic for SubmissionSet type List (minumim requirement for DSUBm)

Instance: DSUBm-SubscriptionTopic-SubmissionSet-MultiPatient
InstanceOf: SubscriptionTopic
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
