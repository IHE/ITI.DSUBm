/*
Profile:        AuditSearchResourceSubscriptionSubscriber
Parent:         IHE.BasicAudit.Query
Id:             IHE.DSUBm.ResourceSubscriptionSearch.Audit.Subscriber
Title:          "Audit Event for Subscription Search message in a Resource Subscription Search transaction made by the Resource Notification Subscriber"
Description:    """
Defines constraints on the AuditEvent Resource to record when a Resource Notification Subscriber in a Resource Subscription Search transaction happens, as recorded by the Subscriber.
- Build off of the IHE BasicAudit read event
- add the ITI-113 as a subtype
- shall have a Subscriber agent
- shall have a Broker agent
- entity slices for the Subscription reference
- entity slice for transaction is available
"""
// redo
* modifierExtension 0..0
* subtype 2..
* subtype contains iti110 1..1
* subtype[iti113] = urn:ihe:event-type-code#ITI-113 "Resource Subscription Search"
* entity[data].role = http://terminology.hl7.org/CodeSystem/object-role#3 "Report"
* agent[client] obeys val-audit-source
* agent[client] ^short = "Subscriber"
* agent[server] ^short = "Broker"
* entity[data] ^short = "the reference to the Subscription"

Profile:        AuditCreateResourceSubscriptionBroker
Parent:         IHE.BasicAudit.Query
Id:             IHE.DSUBm.ResourceSubscriptionSearch.Audit.Broker
Title:          "Audit Event for Subscription Search message in a Resource Subscription Search transaction received by the Resource Notification Broker"
Description:    """
Defines constraints on the AuditEvent Resource to record when a Resource Notification Subscriber in a Resource Subscription Search transaction happens, as recorded by the Broker.
- Build off of the IHE BasicAudit Create event
- add the ITI-110 as a subtype
- shall have a Subscriber agent
- shall have a Broker agent
- entity slices for the Subscription reference
- entity slice for transaction is available
"""
//redo
* modifierExtension 0..0
* subtype 2..
* subtype contains iti110 1..1
* subtype[iti110] = urn:ihe:event-type-code#ITI-110 "Resource Subscription"
* entity[data].role = http://terminology.hl7.org/CodeSystem/object-role#3 "Report"
* agent[server] obeys val-audit-source
* agent[client] ^short = "Subscriber"
* agent[server] ^short = "Broker"
* entity[data] ^short = "the reference to the Subscription"
*/
