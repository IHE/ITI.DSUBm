Instance: DSUBm-SubscriptionTopic-SubmissionSet-PatientDependent
InstanceOf: SubscriptionTopic
Usage: #definition
Title:       "SubscriptionTopic for SubmissionSet PatientDependent resource"
Description:  "Profile for the resource SubscriptionTopic. The resource describe the topic of a creation of a SubmissionSet List resource. 
This topic shall be used in all SubmissionSet subscriptions that have a specific patient in the criteria element and are just focusing on the create event.
Note that:
- the trigger for this topic shall be the resourceTrigger (so the eventTrigger shall not be used).
- the resourceTrigger.resource element shall be a SubmissionSet resource
- this topic only covers the create event
"
* meta.versionId = "1"
* title = "SubscriptionTopic for SubmissionSet PatientDependent resource"
* status = #active 
* resourceTrigger.description = "A SubmissionSet type List resource is created"
* resourceTrigger.resource = "http://hl7.org/fhir/StructureDefinition/List"
* resourceTrigger.supportedInteraction = #create

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
* notificationShape.include = "List:patient&iterate=Patient.link"
