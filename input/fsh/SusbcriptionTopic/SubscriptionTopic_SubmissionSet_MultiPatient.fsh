Instance: DSUBm-SubscriptionTopic-SubmissionSet-MultiPatient
InstanceOf: SubscriptionTopic
Usage: #definition
Title:       "SubscriptionTopic for SubmissionSet Multi-Patient resource"
Description:  "Profile for the resource SubscriptionTopic. The resource describe the topic of a creation of a SubmissionSet List resource. 
This topic shall be used in all SubmissionSet subscriptions that have not a specific patient in the criteria element and are just focusing on the create event.
Note that:
- the trigger for this topic shall be the resourceTrigger (so the eventTrigger shall not be used).
- the resourceTrigger.resource element shall be a SubmissionSet List resource
- the canFilterBy.filterParameter does not include the patient parameter
"
* meta.versionId = "1"
* meta.lastUpdated = "2023-10-26T21:04:49.9548614+00:00"
* title = "Canonical Topic that describe the creation of a SubmissionSet List resource"
* status = #active 
* resourceTrigger.description = "A SubmissionSet resource is created with status = current"
* resourceTrigger.resource = "http://hl7.org/fhir/StructureDefinition/List"
* resourceTrigger.supportedInteraction = #create
* resourceTrigger.queryCriteria.resultForCreate = #test-passes
* resourceTrigger.queryCriteria.current = "status=current"

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
* canFilterBy[=].filterParameter = "intendedRecipient "


* notificationShape.resource = "List"
* notificationShape.include = "List:patient&iterate=Patient.link"
