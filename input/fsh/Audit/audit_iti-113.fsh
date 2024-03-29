
Profile:        AuditSearchSubscriptionSearchSubscriber
Parent:         IHE.BasicAudit.Query
Id:             IHE.DSUBm.SubscriptionSearch.Audit.Subscriber
Title:          "Audit Event for Subscription Search message in a Subscription Search transaction made by the Resource Notification Subscriber"
Description:    """
Defines constraints on the AuditEvent Resource to record when a Resource Notification Subscriber in a Subscription Search transaction happens, as recorded by the Subscriber.
- Build off of the IHE BasicAudit Query event
- add the ITI-113 as a subtype
- SHALL have a Resource Notification Subscriber agent
- SHALL have a Resource Notification Broker agent
- entity slices for the Subscription reference
- entity slices for query is REQUIRED
- entity slice for transaction is available
- source is the client
"""
* modifierExtension 0..0
* subtype 2..
* subtype contains iti113 1..1
* subtype[iti113] = urn:ihe:event-type-code#ITI-113 "Resource Subscription Search"
* agent[client] obeys val-audit-source
* agent[client] ^short = "Resource Notification Subscriber"
* agent[server] ^short = "Resource Notification Broker"
* entity[query] ^short = "Search Parameters"

Profile:        AuditSearchSubscriptionSearchBroker
Parent:         IHE.BasicAudit.Query
Id:             IHE.DSUBm.SubscriptionSearch.Audit.Broker
Title:          "Audit Event for Subscription Search message in a Subscription Search transaction received by the Resource Notification Broker"
Description:    """
Defines constraints on the AuditEvent Resource to record when a Resource Notification Subscriber in a Subscription Search transaction happens, as recorded by the Broker.
- Build off of the IHE BasicAudit Query event
- add the ITI-110 as a subtype
- SHALL have a Resource Notification Subscriber agent
- SHALL have a Resource Notification Broker agent
- entity slices for query is REQUIRED
- entity slice for transaction is available
- source is the server

"""
* modifierExtension 0..0
* subtype 2..
* subtype contains iti113 1..1
* subtype[iti113] = urn:ihe:event-type-code#ITI-113 "Resource Subscription Search"
* agent[server] obeys val-audit-source
* agent[client] ^short = "Resource Notification Subscriber"
* agent[server] ^short = "Resource Notification Broker"
* entity[query] ^short = "Search Parameters"





Profile:        AuditSearchSubscriptionReadSubscriber
Parent:         IHE.BasicAudit.Read
Id:             IHE.DSUBm.SubscriptionRead.Audit.Subscriber
Title:          "Audit Event for Subscription Search message in a Subscription Search transaction made by the Resource Notification Subscriber"
Description:    """
Defines constraints on the AuditEvent Resource to record when a Resource Notification Subscriber in a Subscription Search transaction happens, as recorded by the Subscriber.
- Build off of the IHE BasicAudit Read event
- add the ITI-113 as a subtype
- SHALL have a Resource Notification Subscriber agent
- SHALL have a Resource Notification Broker agent
- entity slices for the Subscription reference
- entity slices for query is REQUIRED
- entity slice for transaction is available
- source is the client
"""
* modifierExtension 0..0
* subtype 2..
* subtype contains iti113 1..1
* subtype[iti113] = urn:ihe:event-type-code#ITI-113 "Resource Subscription Search"
* agent[client] obeys val-audit-source
* agent[client] ^short = "Resource Notification Subscriber"
* agent[server] ^short = "Resource Notification Broker"
* entity[data] ^short = "Read resource"

Profile:        AuditSearchSubscriptionReadBroker
Parent:         IHE.BasicAudit.Read
Id:             IHE.DSUBm.SubscriptionRead.Audit.Broker
Title:          "Audit Event for Subscription Search message in a Subscription Search transaction received by the Resource Notification Broker"
Description:    """
Defines constraints on the AuditEvent Resource to record when a Resource Notification Subscriber in a Subscription Search transaction happens, as recorded by the Broker.
- Build off of the IHE BasicAudit Read event
- add the ITI-113 as a subtype
- SHALL have a Resource Notification Subscriber agent
- SHALL have a Resource Notification Broker agent
- entity slices for query is REQUIRED
- entity slice for transaction is available
- source is the server

"""
* modifierExtension 0..0
* subtype 2..
* subtype contains iti113 1..1
* subtype[iti113] = urn:ihe:event-type-code#ITI-113 "Resource Subscription Search"
* agent[server] obeys val-audit-source
* agent[client] ^short = "Resource Notification Subscriber"
* agent[server] ^short = "Resource Notification Broker"
* entity[data] ^short = "Read resource"

