
Profile:        AuditSearchSubscriptionSearchSubscriber
Parent:         IHE.BasicAudit.Query
Id:             IHE.DSUBm.SubscriptionSearch.Audit.Subscriber
Title:          "Audit Event for Subscription Search message in a Subscription Search transaction made by the Resource Notification Subscriber"
Description:    """
Defines constraints on the AuditEvent Resource to record when a Resource Notification Subscriber in a Subscription Search transaction happens, as recorded by the Subscriber.
- Build off of the IHE BasicAudit read event
- add the ITI-113 as a subtype
- shall have a Resource Notification Subscriber agent
- shall have a Resource Notification Broker agent
- entity slices for the Subscription reference
- entity slices for query is required
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
- Build off of the IHE BasicAudit Create event
- add the ITI-110 as a subtype
- shall have a Resource Notification Subscriber agent
- shall have a Resource Notification Broker agent
- entity slices for query is required
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

/*
// Subscription Status Search
Profile:        AuditSearchSubscriptionStatusSearchSubscriber
Parent:         IHE.BasicAudit.Query
Id:             IHE.DSUBm.SubscriptionStatusSearch.Audit.Subscriber
Title:          "Audit Event for Subscription Status Search message in a Subscription Search transaction made by the Resource Notification Subscriber"
Description:    """
Defines constraints on the AuditEvent Resource to record when a Subscription Status Search happens, as recorded by the Subscriber.
- Build off of the IHE BasicAudit read event
- add the ITI-113 as a subtype
- shall have a Resource Notification Subscriber agent
- shall have a Resource Notification Broker agent
- entity slices for the Subscription reference
- entity slices for query is required
- entity slice for transaction is available
- source is the client
"""
* modifierExtension 0..0
* subtype 2..
* subtype contains iti113 1..1
* subtype[iti113] = urn:ihe:event-type-code#ITI-113 "Resource Subscription Search"
* agent[client] obeys val-audit-source
* agent[client] ^short = "Resource Notification Subscriber"
* agent[server] ^short = " Resource Notification Broker"
* entity[query] ^short = "Search Parameters"

Profile:        AuditSearchSubscriptionStatusSearchBroker
Parent:         IHE.BasicAudit.Query
Id:             IHE.DSUBm.SubscriptionStatusSearch.Audit.Broker
Title:          "Audit Event for Subscription Status Search  message in a Subscription Status Search transaction received by the Resource Notification Broker"
Description:    """
Defines constraints on the AuditEvent Resource to record when a Subscription Status Search happens, as recorded by the Broker.
- Build off of the IHE BasicAudit Create event
- add the ITI-110 as a subtype
- shall have a Resource Notification Subscriber agent
- shall have a Resource Notification Broker agent
- entity slices for query is required
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


// Subscription events Search
Profile:        AuditSearchSubscriptionEventsSearchSubscriber
Parent:         IHE.BasicAudit.Query
Id:             IHE.DSUBm.SubscriptionEventsSearch.Audit.Subscriber
Title:          "Audit Event for Subscription Events Search message in a Subscription Search transaction made by the Resource Notification Subscriber"
Description:    """
Defines constraints on the AuditEvent Resource to record when a Subscription Events Search happens, as recorded by the Subscriber.
- Build off of the IHE BasicAudit read event
- add the ITI-113 as a subtype
- shall have a Resource Notification Subscriber agent
- shall have a Resource Notification Broker agent
- entity slices for the Subscription reference
- entity slices for query is required
- entity slice for transaction is available
- source is the client
"""
* modifierExtension 0..0
* subtype 2..
* subtype contains iti113 1..1
* subtype[iti113] = urn:ihe:event-type-code#ITI-113 "Resource Subscription Search"
* agent[client] obeys val-audit-source
* agent[client] ^short = "Resource Notification Subscriber"
* agent[server] ^short = " Resource Notification Broker"
* entity[query] ^short = "Search Parameters"

Profile:        AuditSearchSubscriptionEventsSearchBroker
Parent:         IHE.BasicAudit.Query
Id:             IHE.DSUBm.SubscriptionEventsSearch.Audit.Broker
Title:          "Audit Event for Subscription Events Search  message in a Subscription Status Search transaction received by the Resource Notification Broker"
Description:    """
Defines constraints on the AuditEvent Resource to record when a Subscription Events Search happens, as recorded by the Broker.
- Build off of the IHE BasicAudit Create event
- add the ITI-110 as a subtype
- shall have a Resource Notification Subscriber agent
- shall have a Resource Notification Broker agent
- entity slices for query is required
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
*/