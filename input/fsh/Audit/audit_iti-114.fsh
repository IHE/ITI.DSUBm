Profile:        AuditQueryResourceSubscriptionTopicSearchSubscriber
Parent:         IHE.BasicAudit.Query
Id:             IHE.DSUBm.SubscriptionTopicSearch.Audit.Subscriber
Title:          "Audit Event for Resource SubscriptionTopic Search Transaction by the Resource Notification Subscriber"
Description:    """
Defines constraints on the AuditEvent Resource to record when a Resource SubscriptionTopic Search Transaction happens, as recorded by the Resource Notification Subscriber.
- Build off of the IHE BasicAudit Query event
- add the ITI-114 as a subtype
- client is Resource Notification Subscriber
- server is Resource Notification Broker
- entity slices for query is REQUIRED
- entity slice for transaction is available
- source is the client

"""
* modifierExtension 0..0
* subtype 2..
* subtype contains iti114 1..1
* subtype[iti114] = urn:ihe:event-type-code#ITI-114 "Resource SubscriptionTopic Search"
* agent[client] obeys val-audit-source
* agent[client] ^short = "Resource Notification Subscriber"
* agent[server] ^short = "Resource Notification Broker"
* entity[query] ^short = "Search Parameters"


Profile:        AuditQueryResourceSubscriptionTopicSearchBroker
Parent:         IHE.BasicAudit.Query
Id:             IHE.DSUBm.SubscriptionTopicSearch.Audit.Broker
Title:          "Audit Event for Resource SubscriptionTopic Search Transaction by the Resource Notification Broker"
Description:    """
Defines constraints on the AuditEvent Resource to record when a Resource SubscriptionTopic Search Transaction happens, as recorded by the Resource Notification Broker.
- Build off of the IHE BasicAudit Query event
- add the ITI-114 as a subtype
- client is Resource Notification Subscriber
- server is Resource Notification Broker
- entity slices for query is REQUIRED
- entity slice for transaction is available
- source is the server

"""
* modifierExtension 0..0
* subtype 2..
* subtype contains iti114 1..1
* subtype[iti114] = urn:ihe:event-type-code#ITI-114 "Resource SubscriptionTopic Search"
* agent[server] obeys val-audit-source
* agent[client] ^short = "Resource Notification Subscriber"
* agent[server] ^short = "Resource Notification Broker"
* entity[query] ^short = "Search Parameters"





Profile:        AuditQueryResourceSubscriptionTopicReadSubscriber
Parent:         IHE.BasicAudit.Read
Id:             IHE.DSUBm.SubscriptionTopicRead.Audit.Subscriber
Title:          "Audit Event for Resource SubscriptionTopic Search Transaction by the Resource Notification Subscriber"
Description:    """
Defines constraints on the AuditEvent Resource to record when a Resource SubscriptionTopic Read Transaction happens, as recorded by the Resource Notification Subscriber.
- Build off of the IHE BasicAudit Read event
- add the ITI-114 as a subtype
- client is Resource Notification Subscriber
- server is Resource Notification Broker
- entity slices for query is REQUIRED
- entity slice for transaction is available
- source is the client

"""
* modifierExtension 0..0
* subtype 2..
* subtype contains iti114 1..1
* subtype[iti114] = urn:ihe:event-type-code#ITI-114 "Resource SubscriptionTopic Search"
* agent[client] obeys val-audit-source
* agent[client] ^short = "Resource Notification Subscriber"
* agent[server] ^short = "Resource Notification Broker"
* entity[data] ^short = "Read resource"


Profile:        AuditQueryResourceSubscriptionTopicReadBroker
Parent:         IHE.BasicAudit.Read
Id:             IHE.DSUBm.SubscriptionTopicRead.Audit.Broker
Title:          "Audit Event for Resource SubscriptionTopic Search Transaction by the Resource Notification Broker"
Description:    """
Defines constraints on the AuditEvent Resource to record when a Resource SubscriptionTopic Read Transaction happens, as recorded by the Resource Notification Broker.
- Build off of the IHE BasicAudit Read event
- add the ITI-114 as a subtype
- client is Resource Notification Subscriber
- server is Resource Notification Broker
- entity slices for query is REQUIRED
- entity slice for transaction is available
- source is the server

"""
* modifierExtension 0..0
* subtype 2..
* subtype contains iti114 1..1
* subtype[iti114] = urn:ihe:event-type-code#ITI-114 "Resource SubscriptionTopic Search"
* agent[server] obeys val-audit-source
* agent[client] ^short = "Resource Notification Subscriber"
* agent[server] ^short = "Resource Notification Broker"
* entity[data] ^short = "Read resource"