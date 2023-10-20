Instance: DocumentReference-PatientDependent-CUD
InstanceOf: Basic
Usage: #definition
Title: "SubscriptionTopic for DocumentReference PatientDependent "
Description: "R4 Example of a Basic resource describing a DocumentReference PatientDependent 'SubscriptionTopic' resource. 
\n The trigger event is the creation or update or deletion of a DocumentReference"
* meta.versionId = "1"
* meta.lastUpdated = "2023-09-10T21:04:49.9548614+00:00"
* extension[0].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.url"
* extension[=].valueUri = "https://profiles.ihe.net/ITI/DSUBm/SubscriptionTopic/DocumentReference-PatientDependent-CUD"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.version"
* extension[=].valueString = "1.0.0-fhir.r4"
/*
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.name"
* extension[=].valueString = "Example DocumentReference PatientDependent Topic"
*/
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.title"
* extension[=].valueString = "DocumentReference-PatientDependent"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.status"
* extension[=].valueCode = #draft
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.date"
* extension[=].valueDateTime = "2023-10-17"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.description"
* extension[=].valueMarkdown = "Example topic for DocumentReference PatientDependent"

// creation from status=not(current) to stautus = current
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.resourceTrigger"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "A DocumentReference has been created"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "http://hl7.org/fhir/StructureDefinition/DocumentReference"
* extension[=].extension[+].url = "supportedInteraction"
* extension[=].extension[=].valueCode = #create
* extension[=].extension[+].url = "queryCriteria"
* extension[=].extension[=].extension[0].url = "previous"
* extension[=].extension[=].extension[=].valueString = "status:not=current "
* extension[=].extension[=].extension[+].url = "resultForCreate"
* extension[=].extension[=].extension[=].valueCode = #test-passes
* extension[=].extension[=].extension[+].url = "current"
* extension[=].extension[=].extension[=].valueString = "status=current"
* extension[=].extension[=].extension[+].url = "resultForDelete"
* extension[=].extension[=].extension[=].valueCode = #test-fails
* extension[=].extension[=].extension[+].url = "requireBoth"
* extension[=].extension[=].extension[=].valueBoolean = true

// update from status = current to stautus = not(current)
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.resourceTrigger"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "A DocumentReference has been update"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "http://hl7.org/fhir/StructureDefinition/DocumentReference"
* extension[=].extension[+].url = "supportedInteraction"
* extension[=].extension[=].valueCode = #update
* extension[=].extension[+].url = "queryCriteria"
* extension[=].extension[=].extension[0].url = "previous"
* extension[=].extension[=].extension[=].valueString = "status=current "
* extension[=].extension[=].extension[+].url = "resultForCreate"
* extension[=].extension[=].extension[=].valueCode = #test-passes
* extension[=].extension[=].extension[+].url = "current"
* extension[=].extension[=].extension[=].valueString = "status=superseded"
* extension[=].extension[=].extension[+].url = "resultForDelete"
* extension[=].extension[=].extension[=].valueCode = #test-fails
* extension[=].extension[=].extension[+].url = "requireBoth"
* extension[=].extension[=].extension[=].valueBoolean = true

// update from status = current to stautus = current
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.resourceTrigger"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "A DocumentReference has been update"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "http://hl7.org/fhir/StructureDefinition/DocumentReference"
* extension[=].extension[+].url = "supportedInteraction"
* extension[=].extension[=].valueCode = #update
* extension[=].extension[+].url = "queryCriteria"
* extension[=].extension[=].extension[0].url = "previous"
* extension[=].extension[=].extension[=].valueString = "status=current "
* extension[=].extension[=].extension[+].url = "resultForCreate"
* extension[=].extension[=].extension[=].valueCode = #test-passes
* extension[=].extension[=].extension[+].url = "current"
* extension[=].extension[=].extension[=].valueString = "status=current"
* extension[=].extension[=].extension[+].url = "resultForDelete"
* extension[=].extension[=].extension[=].valueCode = #test-fails
* extension[=].extension[=].extension[+].url = "requireBoth"
* extension[=].extension[=].extension[=].valueBoolean = true

// delete
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.resourceTrigger"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "A DocumentReference has been deleted"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "http://hl7.org/fhir/StructureDefinition/DocumentReference"
* extension[=].extension[+].url = "supportedInteraction"
* extension[=].extension[=].valueCode = #delete
* extension[=].extension[+].url = "queryCriteria"
* extension[=].extension[=].extension[0].url = "previous"
* extension[=].extension[=].extension[=].valueString = "status=current "
* extension[=].extension[=].extension[+].url = "resultForCreate"
* extension[=].extension[=].extension[=].valueCode = #test-passes
* extension[=].extension[=].extension[+].url = "current"
* extension[=].extension[=].extension[=].valueString = "status=current"
* extension[=].extension[=].extension[+].url = "resultForDelete"
* extension[=].extension[=].extension[=].valueCode = #test-passes
* extension[=].extension[=].extension[+].url = "requireBoth"
* extension[=].extension[=].extension[=].valueBoolean = true

* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the subject of the DocumentReference."
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "patient"
/*
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the date of creation of the DocumentReference."
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "creation"
*/
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the author of an DocumentReference."
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "author"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the status of an DocumentReference."
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "status"

* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the category of an DocumentReference."
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "category"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the type of an DocumentReference."
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "type"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the subject of an DocumentReference."
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "setting"
/*
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the period of an DocumentReference."
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "period"
*/
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the kind of facility where patient was seen."
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "facility"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the  main clinical acts documented  in the DocumentReference. (eventcodeList)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "event"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the  security labels of the document referenced by DocumentReference Resource."
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "security-label"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the format of the DocumentReference."
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "format"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the reference that represents other identifiers associated with the DocumentReference."
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "related"

//add notificationShape resource=X + include 
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.notificationShape"
* extension[=].extension[0].url = "resource"
* extension[=].extension[=].valueUri = "DocumentReference"
* extension[=].extension[+].url = "include"
* extension[=].extension[=].valueString = "DocumentReference:patient&iterate=Patient.link"

* code = $fhir-types#SubscriptionTopic