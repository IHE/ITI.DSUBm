Profile:        AuditResourcePublishBroker
Parent:         AuditEvent
Id:             IHE.DSUBm.ResourcePublish.Audit.Broker
Title:          "Audit Event for Resource Publish Transaction at Broker"
Description:    "Defines constraints on the AuditEvent Resource to record when a Resource Publish Transaction happens at the Broker.
- Import event
- shall have source of itself
- shall have a publisher agent
- shall have a broker agent
- may have user, app, organization agent(s)
- shall have a patient entity
- shall have a submission set identity entity"
* modifierExtension 0..0
* type = DCM#110107 "Import"
* action = #C
* subtype ^slicing.discriminator.type = #value
* subtype ^slicing.discriminator.path = "$this"
* subtype ^slicing.rules = #open // allow other codes
* subtype 1..
* subtype contains iti111 1..1
* subtype[iti111] = urn:ihe:event-type-code#ITI-111 "Resource Publish"
// * severity in R5
* recorded 1..1 // already required
* outcome 1..1
* outcomeDesc MS // encouraged
// source is already required, see invariant val-audit-source use
* agent 2..*
* agent ^slicing.discriminator.type = #pattern
* agent ^slicing.discriminator.path = "type"
* agent ^slicing.rules = #open
* agent ^slicing.description = "source, recipient, and possibly the user who participated"
* agent contains 
	publishSource 1..1 and
	publishBroker 1..1 
	// may be many including app identity, user identity, etc
* agent[publishSource].type = DCM#110153 "Source Role ID"
* agent[publishSource].who 1..1
* agent[publishSource].network 1..1
* agent[publishBroker].type = DCM#110152 "Destination Role ID"
* agent[publishBroker].who 1..1
* agent[publishBroker] obeys val-audit-source
* agent[publishBroker].network 1..1
* agent[publishSource] ^short = "Publish Source"
* agent[publishBroker] ^short = "Publish Broker"
* entity 2..2
* entity ^slicing.discriminator.type = #pattern
* entity ^slicing.discriminator.path = "type"
* entity ^slicing.rules = #closed
* entity ^slicing.description = "patient and submission set involved"
* entity contains
	patient 1..1 and
	submissionSet 1..1
* entity[patient].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#1 "Person"
* entity[patient].role = http://terminology.hl7.org/CodeSystem/object-role#1 "Patient"
* entity[patient].what 1..1
* entity[patient].what only Reference(Patient)
* entity[submissionSet].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#2 "System Object"
* entity[submissionSet].role = http://terminology.hl7.org/CodeSystem/object-role#20 "Job"
* entity[submissionSet].what 1..1
* entity[submissionSet].what only Reference(List) 
* entity[patient] ^short = "Patient"
* entity[submissionSet] ^short = "SubmissionSet"


Profile:        AuditResourcePublishPublisher
Parent:         AuditEvent
Id:             IHE.DSUBm.ResourcePublish.Audit.Publisher
Title:          "Audit Event for Resource Publish Transaction at Publisher"
Description:    "Defines constraints on the AuditEvent Resource to record when a Resource Publish Transaction happens at the Publisher.
- Export event
- shall have source of itself
- shall have a publisher agent
- shall have a broker agent
- may have user, app, organization agent(s)
- shall have a patient entity
- shall have a submission set identity entity"
* modifierExtension 0..0
* type = DCM#110106 "Export"
* action = #R
* subtype ^slicing.discriminator.type = #value
* subtype ^slicing.discriminator.path = "$this"
* subtype ^slicing.rules = #open // allow other codes
* subtype 1..
* subtype contains iti111 1..1
* subtype[iti111] = urn:ihe:event-type-code#ITI-111 "Resource Publish"
// * severity in R5
* recorded 1..1 // already required
* outcome 1..1
* outcomeDesc MS // encouraged
// source is already required, see invariant val-audit-source use
* agent 2..*
* agent ^slicing.discriminator.type = #pattern
* agent ^slicing.discriminator.path = "type"
* agent ^slicing.rules = #open
* agent ^slicing.description = "source, recipient, and possibly the user who participated"
* agent contains 
	publishSource 1..1 and
	publishBroker 1..1 
	// may be many including app identity, user identity, etc
* agent[publishSource].type = DCM#110153 "Source Role ID"
* agent[publishSource].who 1..1
* agent[publishSource] obeys val-audit-source
* agent[publishSource].network 1..1
* agent[publishBroker].type = DCM#110152 "Destination Role ID"
* agent[publishBroker].who 1..1
* agent[publishBroker].network 1..1
* agent[publishSource] ^short = "Document Source"
* agent[publishBroker] ^short = "Document Broker"
* entity 2..2
* entity ^slicing.discriminator.type = #pattern
* entity ^slicing.discriminator.path = "type"
* entity ^slicing.rules = #closed
* entity ^slicing.description = "patient and submission set involved"
* entity contains
	patient 1..1 and
	submissionSet 1..1
* entity[patient].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#1 "Person"
* entity[patient].role = http://terminology.hl7.org/CodeSystem/object-role#1 "Patient"
* entity[patient].what 1..1
* entity[patient].what only Reference(Patient)
* entity[submissionSet].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#2 "System Object"
* entity[submissionSet].role = http://terminology.hl7.org/CodeSystem/object-role#20 "Job"
* entity[submissionSet].what 1..1
* entity[submissionSet].what only Reference(List) 
* entity[patient] ^short = "Patient"
* entity[submissionSet] ^short = "SubmissionSet"