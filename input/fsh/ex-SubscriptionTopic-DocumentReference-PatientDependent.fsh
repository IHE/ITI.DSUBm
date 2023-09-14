Instance:    DocumentReference-PatientDependent-SubscriptionTopic 
InstanceOf:  DSUBm_SubscriptionTopic_DocumentReference_PatientDependent
Usage:       #definition
Title:       "DocumentReference Patient-Dependent SubscriptionTopic"
Description: "R4/B Example of a SubscriptionTopic describing a patient Dependent 'DocumentReference' resource."
* id        = "DocumentReference-SubscriptionTopic"
* title     = "Document"
* status    = #active
* date      = "2023-08-01"
* publisher = "Resource Notification Broker"
* purpose   = "This topic is used for describe events of creation of DocumentReference resources"
* resourceTrigger.description = "Publication of a document"
* resourceTrigger.supportedInteraction = #create
//queryCriteria.previous not exists 
//* resourceTrigger.queryCriteria.previous = "status:not=current"
* resourceTrigger.queryCriteria.resultForCreate = #test-passes
//queryCriteria.previous not exists 
* resourceTrigger.queryCriteria.current = "status=current"
//* resourceTrigger.fhirPathCriteria = "Bundle.entry.resource.where(resourceType='DocumentReference').status contains 'current'"
* canFilterBy[+].description = "Filter based on the subject of the DocumentReferece: DocumentEntry.patientId  "
* canFilterBy[=].resource = "DocumentReference"
* canFilterBy[=].filterParameter = "patient"
* canFilterBy[=].filterDefinition = "http://hl7.org/fhir/SearchParameter/DocumentReference-subject"
* canFilterBy[=].modifier = #=
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



