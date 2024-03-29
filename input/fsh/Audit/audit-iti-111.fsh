
Profile:        AuditResourcePublishBroker
Parent:         IHE.BasicAudit.PatientCreate
Id:             IHE.DSUBm.ResourcePublish.Audit.Broker
Title:          "Audit Event for Resource Publish Transaction at Broker"
Description:    "Defines constraints on the AuditEvent Resource to record when a Resource Publish Transaction happens at the Broker.
- Import event
- SHALL have source of itself
- SHALL have a publisher agent
- SHALL have a broker agent
- MAY have user, app, organization agent(s)
- SHALL have a patient entity
"
* modifierExtension 0..0
* subtype 2..
* subtype contains iti111 1..1
* subtype[iti111] = urn:ihe:event-type-code#ITI-111 "Resource Publish"
* agent[server] obeys val-audit-source
* agent[client] ^short = "Resource Publisher"
* agent[server] ^short = "Resource Broker"
* entity[patient] ^short = "Patient"
* entity[data] ^short = "Bundle of the Resource Publish transaction"
* entity[data].what only Reference(Bundle)


Profile:        AuditResourcePublishPublisher
Parent:         IHE.BasicAudit.PatientCreate
Id:             IHE.DSUBm.ResourcePublish.Audit.Publisher
Title:          "Audit Event for Resource Publish Transaction at Publisher"
Description:    "Defines constraints on the AuditEvent Resource to record when a Resource Publish Transaction happens at the Publisher.
- Export event
- SHALL have source of itself
- SHALL have a publisher agent
- SHALL have a broker agent
- MAY have user, app, organization agent(s)
- SHALL have a patient entity
"
* modifierExtension 0..0
* subtype 2..
* subtype contains iti111 1..1
* subtype[iti111] = urn:ihe:event-type-code#ITI-111 "Resource Publish"
* agent[client] obeys val-audit-source
* agent[client] ^short = "Resource Publisher"
* agent[server] ^short = "Resource Broker"
* entity[patient] ^short = "Patient"
* entity[data] ^short = "Bundle of the Resource Publish transaction"
* entity[data].what only Reference(Bundle)

