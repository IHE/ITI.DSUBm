Instance:    DocumentReference-SubscriptionTopic-PatientDependent 
InstanceOf:  SubscriptionTopic
Usage:       #definition
Title:       "DocumentReference SubscriptionTopic"
Description: "R4/B Example of a SubscriptionTopic describing the creation of a 'DocumentReference' resource."
* id        = "DocumentReference-SubscriptionTopic"
// change url to canonical url inside DSUBm IG 
//* url       = "http://example.org/FHIR/R4B/SubscriptionTopic/DocumentReference"
* title     = "Document"
* status    = #active
* date      = "2023-08-01"
* publisher = "Resource Notification Broker"
* purpose   = "This topic is used for describe events and state change of DocumentReference resource"
* resourceTrigger.description = "Publication of a document"
* resourceTrigger.resource = "http://hl7.org/fhir/StructureDefinition/DocumentReference"
* resourceTrigger.supportedInteraction = #create
//queryCriteria.previous not exists 
//* resourceTrigger.queryCriteria.previous = "status:not=current"
* resourceTrigger.queryCriteria.resultForCreate = #test-passes
//queryCriteria.previous not exists 
* resourceTrigger.queryCriteria.current = "status=current"
* resourceTrigger.fhirPathCriteria = "Bundle.entry.resource.where(resourceType='DocumentReference').status contains 'current'"
* canFilterBy[0].description = "Filter based on the subject of the DocumentReferece: DocumentEntry.patientId  "
* canFilterBy[=].resource = "DocumentReference"
* canFilterBy[=].filterParameter = "patient"
* canFilterBy[=].filterDefinition = "http://hl7.org/fhir/SearchParameter/DocumentReference-subject"
* canFilterBy[=].modifier = #=
* canFilterBy[1].description = "Filter based on the type of the DocumentReferece: DocumentEntry.typeCode"
* canFilterBy[=].resource = "DocumentReference"
* canFilterBy[=].filterParameter = "type"
* canFilterBy[=].filterDefinition = "http://hl7.org/fhir/SearchParameter/clinical-type"
* canFilterBy[=].modifier = #=
* notificationShape[0].resource = "DocumentReference"


Invariant: DSUBm-trigger
Severity: #error
Description: "SHALL have a resourceTrigger and SHALL not have an eventTrigger"
Expression: "resourceTrigger.exists() and eventTrigger.exists().not()"
XPath: "exists(f:resourceTrigger) and exists(f:eventTrigger).not()"

