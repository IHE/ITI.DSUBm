/*
Instance: Folder-PatientDependent-create
InstanceOf: Basic
Usage: #definition
Title: "SubscriptionTopic for Folder PatientDependent "
Description: "R4 Example of a Basic resource  describing the creation of a Folder PatientDependent 'SubscriptionTopic' resource."
* meta.versionId = "1"
* meta.lastUpdated = "2023-09-10T21:04:49.9548614+00:00"
* extension[0].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.url"
* extension[=].valueUri = "http://example.org/FHIR/SubscriptionTopic/Folder"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.version"
* extension[=].valueString = "1.0.0-fhir.r4"

* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.title"
* extension[=].valueString = "Folder-PatientDependent"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.status"
* extension[=].valueCode = #draft
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.date"
* extension[=].valueDateTime = "2023-10-17"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.description"
* extension[=].valueMarkdown = "Example topic for DocumentReference PatientDependent"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.resourceTrigger"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "A Folder has been created/updated"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "http://hl7.org/fhir/StructureDefinition/List"
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

* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.canFilterBy"
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the subject of the Folder."
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "Folder"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "patient"


//add notificationShape resource=X + include 
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.notificationShape"
* extension[=].extension[0].url = "resource"
* extension[=].extension[=].valueUri = "Folder"
* extension[=].extension[+].url = "include"
* extension[=].extension[=].valueString = "Folder:patient&iterate=Patient.link"

* code = $fhir-types#SubscriptionTopic
*/