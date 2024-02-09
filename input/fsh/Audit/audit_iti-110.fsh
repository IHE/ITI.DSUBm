Profile:        AuditCreateResourceSubscriptionPatientSubscriber
Parent:         IHE.BasicAudit.PatientCreate
Id:             IHE.DSUBm.ResourceSubscriptionPatient.Audit.Subscriber
Title:          "Audit Event for a Subscribe message in a Resource Subscription transaction with a patient-dependent Subscription made by the Subscriber"
Description:    """
Defines constraints on the AuditEvent Resource to record when a Subscribe in a Resource Subscription transaction happens, as recorded by the Subscriber.
- Build off of the IHE BasicAudit Create event
- add the ITI-110 as a subtype
- SHALL have a Resource Notification Subscriber agent
- SHALL have a Resource Notification Broker agent
- entity slices for the Subscription reference
- entity slice for transaction is available
- source is the client

"""
* modifierExtension 0..0
* subtype 2..
* subtype contains iti110 1..1
* subtype[iti110] = urn:ihe:event-type-code#ITI-110 "Resource Subscription"
* entity[data].role = http://terminology.hl7.org/CodeSystem/object-role#3 "Report"
* agent[client] obeys val-audit-source
* agent[client] ^short = "Resource Notification Subscriber"
* agent[server] ^short = "Resource Notification Broker"
* entity[data] ^short = "the reference to the Subscription"

Profile:        AuditCreateResourceSubscriptionSubscriber
Parent:         IHE.BasicAudit.Create
Id:             IHE.DSUBm.ResourceSubscription.Audit.Subscriber
Title:          "Audit Event for a Subscribe message in a Resource Subscription transaction with a multi-patient Subscription made by the Subscriber"
Description:    """
Defines constraints on the AuditEvent Resource to record when a Subscribe in a Resource Subscription transaction happens, as recorded by the Subscriber.
- Build off of the IHE BasicAudit Create event
- add the ITI-110 as a subtype
- SHALL have a Resource Notification Subscriber agent
- SHALL have a Resource Notification Broker agent
- entity slices for the Subscription reference
- entity slice for transaction is available
- source is the client


"""
* modifierExtension 0..0
* subtype 2..
* subtype contains iti110 1..1
* subtype[iti110] = urn:ihe:event-type-code#ITI-110 "Resource Subscription"
* entity[data].role = http://terminology.hl7.org/CodeSystem/object-role#3 "Report"
* agent[client] obeys val-audit-source
* agent[client] ^short = "Resource Notification Subscriber"
* agent[server] ^short = "Resource Notification Broker"
* entity[data] ^short = "the reference to the Subscription"


Profile:        AuditCreateResourceSubscriptionPatientBroker
Parent:         IHE.BasicAudit.PatientCreate
Id:             IHE.DSUBm.ResourceSubscriptionPatient.Audit.Broker
Title:          "Audit Event for a Subscribe message in a Resource Subscription transaction with a patient-dependent Subscription made by the Broker"
Description:    """
Defines constraints on the AuditEvent Resource to record when a Subscribe in a Resource Subscription transaction happens, as recorded by the Broker.
- Build off of the IHE BasicAudit Create event
- add the ITI-110 as a subtype
- SHALL have a Resource Notification Subscriber agent
- SHALL have a Resource Notification Broker agent
- entity slices for the Subscription reference
- entity slice for transaction is available
- source is the server


"""
* modifierExtension 0..0
* subtype 2..
* subtype contains iti110 1..1
* subtype[iti110] = urn:ihe:event-type-code#ITI-110 "Resource Subscription"
* entity[data].role = http://terminology.hl7.org/CodeSystem/object-role#3 "Report"
* agent[server] obeys val-audit-source
* agent[client] ^short = "Resource Notification Subscriber"
* agent[server] ^short = "Resource Notification Broker"
* entity[data] ^short = "the reference to the Subscription"

Profile:        AuditCreateResourceSubscriptionBroker
Parent:         IHE.BasicAudit.Create
Id:             IHE.DSUBm.ResourceSubscription.Audit.Broker
Title:          "Audit Event for a Subscribe message in a Resource Subscription transaction with a multi-patient Subscription made by the Broker"
Description:    """
Defines constraints on the AuditEvent Resource to record when a Subscribe in a Resource Subscription transaction happens, as recorded by the Broker.
- Build off of the IHE BasicAudit Create event
- add the ITI-110 as a subtype
- SHALL have a Resource Notification Subscriber agent
- SHALL have a Resource Notification Broker agent
- entity slices for the Subscription reference
- entity slice for transaction is available
- source is the server

"""
* modifierExtension 0..0
* subtype 2..
* subtype contains iti110 1..1
* subtype[iti110] = urn:ihe:event-type-code#ITI-110 "Resource Subscription"
* entity[data].role = http://terminology.hl7.org/CodeSystem/object-role#3 "Report"
* agent[server] obeys val-audit-source
* agent[client] ^short = "Resource Notification Subscriber"
* agent[server] ^short = "Resource Notification Broker"
* entity[data] ^short = "the reference to the Subscription"

//UNSUBSCRIBE 
Profile:        AuditUpdateResourceSubscriptionPatientSubscriber
Parent:         IHE.BasicAudit.PatientUpdate
Id:             IHE.DSUBm.UpdateResourceSubscriptionPatient.Audit.Subscriber
Title:          "Audit Event for a Unsubscribe message in a Resource Subscription transaction with a patient-dependent Subscription made by the Subscriber"
Description:    """
Defines constraints on the AuditEvent Resource to record when a Unsubscribe in a Resource Subscription transaction happens, as recorded by the Subscriber.
- Build off of the IHE BasicAudit Update event
- add the ITI-110 as a subtype
- SHALL have a Resource Notification Subscriber agent
- SHALL have a Resource Notification Broker agent
- entity slices for the Subscription reference
- entity slice for transaction is available
- source is the client


"""
* modifierExtension 0..0
* subtype 2..
* subtype contains iti110 1..1
* subtype[iti110] = urn:ihe:event-type-code#ITI-110 "Resource Subscription"
* entity[data].role = http://terminology.hl7.org/CodeSystem/object-role#3 "Report"
* agent[client] obeys val-audit-source
* agent[client] ^short = "Resource Notification Subscriber"
* agent[server] ^short = "Resource Notification Broker"
* entity[data] ^short = "the reference to the Subscription"

Profile:        AuditUpdateResourceSubscriptionSubscriber
Parent:         IHE.BasicAudit.Update
Id:             IHE.DSUBm.UpdateResourceSubscription.Audit.Subscriber
Title:          "Audit Event for a Unsubscribe message in a Resource Subscription transaction with a multi-patient Subscription made by the Subscriber"
Description:    """
Defines constraints on the AuditEvent Resource to record when a Unsubscribe in a Resource Subscription transaction happens, as recorded by the Subscriber.
- Build off of the IHE BasicAudit Update event
- add the ITI-110 as a subtype
- SHALL have a Resource Notification Subscriber agent
- SHALL have a Resource Notification Broker agent
- entity slices for the Subscription reference
- entity slice for transaction is available
- source is the client


"""
* modifierExtension 0..0
* subtype 2..
* subtype contains iti110 1..1
* subtype[iti110] = urn:ihe:event-type-code#ITI-110 "Resource Subscription"
* entity[data].role = http://terminology.hl7.org/CodeSystem/object-role#3 "Report"
* agent[client] obeys val-audit-source
* agent[client] ^short = "Resource Notification Subscriber"
* agent[server] ^short = "Resource Notification Broker"
* entity[data] ^short = "the reference to the Subscription"

Profile:        AuditUpdateResourceSubscriptionPatientBroker
Parent:         IHE.BasicAudit.PatientUpdate
Id:             IHE.DSUBm.UpdateResourceSubscriptionPatient.Audit.Broker
Title:          "Audit Event for a Unsubscribe message in a Resource Subscription transaction with a patient-dependent Subscription made by the Broker"
Description:    """
Defines constraints on the AuditEvent Resource to record when a Subscribe in a Resource Subscription transaction happens, as recorded by the Broker.
- Build off of the IHE BasicAudit Update event
- add the ITI-110 as a subtype
- SHALL have a Resource Notification Subscriber agent
- SHALL have a Resource Notification Broker agent
- entity slices for the Subscription reference
- entity slice for transaction is available
- source is the server


"""
* modifierExtension 0..0
* subtype 2..
* subtype contains iti110 1..1
* subtype[iti110] = urn:ihe:event-type-code#ITI-110 "Resource Subscription"
* entity[data].role = http://terminology.hl7.org/CodeSystem/object-role#3 "Report"
* agent[server] obeys val-audit-source
* agent[client] ^short = "Resource Notification Subscriber"
* agent[server] ^short = "Resource Notification Broker"
* entity[data] ^short = "the reference to the Subscription"

Profile:        AuditUpdateResourceSubscriptionBroker
Parent:         IHE.BasicAudit.Update
Id:             IHE.DSUBm.UpdateResourceSubscription.Audit.Broker
Title:          "Audit Event for a Unsubscribe message in a Resource Subscription transaction with a multi-patient Subscription made by the Broker"
Description:    """
Defines constraints on the AuditEvent Resource to record when a Subscribe in a Resource Subscription transaction happens, as recorded by the Broker.
- Build off of the IHE BasicAudit Update event
- add the ITI-110 as a subtype
- SHALL have a Resource Notification Subscriber agent
- SHALL have a Resource Notification Broker agent
- entity slices for the Subscription reference
- entity slice for transaction is available
- source is the server
"""
* modifierExtension 0..0
* subtype 2..
* subtype contains iti110 1..1
* subtype[iti110] = urn:ihe:event-type-code#ITI-110 "Resource Subscription"
* entity[data].role = http://terminology.hl7.org/CodeSystem/object-role#3 "Report"
* agent[server] obeys val-audit-source
* agent[client] ^short = "Resource Notification Subscriber"
* agent[server] ^short = "Resource Notification Broker"
* entity[data] ^short = "the reference to the Subscription"