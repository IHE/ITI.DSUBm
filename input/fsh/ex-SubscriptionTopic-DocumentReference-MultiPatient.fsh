Instance:    DocumentReference-MultiPatient-SubscriptionTopic 
InstanceOf:  DSUBm_SubscriptionTopic_DocumentReference_MultiPatient
Usage:       #definition
Title:       "DocumentReference MultiPatient SubscriptionTopic"
Description: "R4/B Example of a SubscriptionTopic describing a MultiPatient 'DocumentReference' resource."
* id        = "MultiPatient-DocumentReference-SubscriptionTopic"
* title     = "Document"
* status    = #active
* date      = "2023-08-01"
* publisher = "Resource Notification Broker"
* purpose   = "This topic is used for describe events of update of DocumentReference resources for all the patients. The notification contains the updated Document Reference and the author of the new version."
* resourceTrigger.description = "Replace of a document"
* resourceTrigger.supportedInteraction = #delete
* resourceTrigger.queryCriteria.current = "status=superseded"
* resourceTrigger.queryCriteria.resultForDelete = #test-passes

* canFilterBy[+].description = "Filter based on the type of the DocumentReferece: DocumentEntry.typeCode"
* canFilterBy[=].resource = "DocumentReference"
* canFilterBy[=].filterParameter = "type"
* canFilterBy[=].filterDefinition = "http://hl7.org/fhir/SearchParameter/clinical-type"
* canFilterBy[=].modifier = #=
/*
* canFilterBy[otherFilter].description = "Filter based on the type of the DocumentReferece: DocumentEntry.typeCode"
* canFilterBy[otherFilter].resource = "DocumentReference"
* canFilterBy[otherFilter].filterParameter = "type123"
* canFilterBy[otherFilter].filterDefinition = "http://hl7.org/fhir/SearchParameter/clinical-type"
* canFilterBy[otherFilter].modifier = #=
*/
* notificationShape.resource = "DocumentReference"
* notificationShape.include = "DocumentReference:Practitioner"



