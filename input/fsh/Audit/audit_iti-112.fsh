Profile:        AuditCreateResourceNotifySubscriber
Parent:         IHE.BasicAudit.Create
Id:             IHE.DSUBm.ResourceNotify.Audit.Subscriber
Title:          "Audit Event for a Subscribe message in a Resource Subscription transaction with a multi-patient Subscription made by the Subscriber"
Description:    """
Defines constraints on the AuditEvent Resource to record when a Subscribe in a Resource Subscription transaction happens, as recorded by the Subscriber.
- Build off of the IHE BasicAudit Create event
- add the ITI-112 as a subtype
- shall have a Resource Notification Subscriber agent
- shall have a Resource Notification Broker agent
- entity slices for the Bundle reference
- entity slice for transaction is available
- source is the server


"""
* modifierExtension 0..0
* subtype 2..
* subtype contains iti112 1..1
* subtype[iti112] = urn:ihe:event-type-code#ITI-112 "Resource Notify"
* entity[data].role = http://terminology.hl7.org/CodeSystem/object-role#3 "Report"
* agent[server] obeys val-audit-source
* agent[client] ^short = "Resource Notification Broker"
* agent[server] ^short = "Resource Notification Subscriber"
* entity[data] ^short = "the reference to the Bundle"


Profile:        AuditCreateResourceNotifyBroker
Parent:         IHE.BasicAudit.PatientCreate
Id:             IHE.DSUBm.ResourceNotify.Audit.Broker
Title:          "Audit Event for a Subscribe message in a Resource Subscription transaction with a patient-dependent Subscription made by the Broker"
Description:    """
Defines constraints on the AuditEvent Resource to record when a Subscribe in a Resource Subscription transaction happens, as recorded by the Broker.
- Build off of the IHE BasicAudit Create event
- add the ITI-112 as a subtype
- shall have a Resource Notification Subscriber agent
- shall have a Resource Notification Broker agent
- entity slices for the Bundle reference
- entity slice for transaction is available
- source is the server


"""
* modifierExtension 0..0
* subtype 2..
* subtype contains iti112 1..1
* subtype[iti112] = urn:ihe:event-type-code#ITI-112 "Resource Notify"
* entity[data].role = http://terminology.hl7.org/CodeSystem/object-role#3 "Report"
* agent[server] obeys val-audit-source
* agent[client] ^short = "Resource Notification Subscriber"
* agent[server] ^short = "Resource Notification Broker"
* entity[data] ^short = "the reference to the Bundle"