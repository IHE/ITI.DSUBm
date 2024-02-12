//iti-113
// search
Instance: ex-AuditSearchSubscriptionSearchSubscriber
InstanceOf: AuditSearchSubscriptionSearchSubscriber
Title: "Audit Example of ITI-113 at Subscriber for Search interaction"
Description: "Audit Example for a Resource Resource Subscription Search from Subscriber perspective for Search interaction"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* subtype[anySearch] = http://hl7.org/fhir/restful-interaction#search "search"
* subtype[iti113] = urn:ihe:event-type-code#ITI-113 "Resource Subscription Search"
* recorded = 2024-04-29T09:49:00.000Z
* outcome = http://terminology.hl7.org/CodeSystem/audit-event-outcome#0 "Success"
* source.site = "server.example.com"
* source.observer.display = "myMachine.example.org"
* source.type = http://terminology.hl7.org/CodeSystem/security-source-type#4 "Application Server"
* agent[client].type = DCM#110153 "Source Role ID"
* agent[client].requestor = false
* agent[client].who.display = "myMachine.example.org"
* agent[client].network.address = "2001:0db8:85a3:0000:0000:8a2e:0370:7334"
* agent[client].network.type = http://hl7.org/fhir/network-type#2 "IP Address"
* agent[server].type = DCM#110152 "Destination Role ID"
* agent[server].who = Reference(Device/ex-device)
* agent[server].requestor = false
* agent[server].network.address = "http://server.example.com/fhir"
* agent[server].network.type = http://hl7.org/fhir/network-type#5 "URI"
* entity[query].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#2 "System Object"
* entity[query].role = http://terminology.hl7.org/CodeSystem/object-role#24 "Query"
* entity[query].query = "R0VUIGh0dHBzOi8vc2VydmVyLmV4YW1wbGUuY29tL2ZoaXIvU3Vic2NyaXB0aW9uP3N0YXR1cz1hY3RpdmUKQWNjZXB0OiBhcHBsaWNhdGlvbi9maGlyK2pzb247IGZoaXJWZXJzaW9uPTQuMA=="




Instance: ex-AuditSearchSubscriptionSearchBroker
InstanceOf: AuditSearchSubscriptionSearchBroker
Title: "Audit Example of ITI-111 at Broker for Search interaction"
Description: "Audit Example for a Resource Subscription Search Transaction from Broker perspective for Search interaction"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* subtype[anySearch] = http://hl7.org/fhir/restful-interaction#search "search"
* subtype[iti113] = urn:ihe:event-type-code#ITI-113 "Resource Subscription Search"
* recorded = 2024-04-29T09:49:00.000Z
* outcome = http://terminology.hl7.org/CodeSystem/audit-event-outcome#0 "Success"
* source.site = "server.example.com"
* source.observer = Reference(Device/ex-device)
* source.type = http://terminology.hl7.org/CodeSystem/security-source-type#4 "Application Server"
* agent[client].type = DCM#110153 "Source Role ID"
* agent[client].requestor = false
* agent[client].who.display = "myMachine.example.org"
* agent[client].network.address = "2001:0db8:85a3:0000:0000:8a2e:0370:7334"
* agent[client].network.type = http://hl7.org/fhir/network-type#2 "IP Address"
* agent[server].type = DCM#110152 "Destination Role ID"
* agent[server].who = Reference(Device/ex-device)
* agent[server].requestor = false
* agent[server].network.address = "http://server.example.com/fhir"
* agent[server].network.type = http://hl7.org/fhir/network-type#5 "URI"
* entity[query].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#2 "System Object"
* entity[query].role = http://terminology.hl7.org/CodeSystem/object-role#24 "Query"
* entity[query].query = "R0VUIGh0dHBzOi8vc2VydmVyLmV4YW1wbGUuY29tL2ZoaXIvU3Vic2NyaXB0aW9uP3N0YXR1cz1hY3RpdmUKQWNjZXB0OiBhcHBsaWNhdGlvbi9maGlyK2pzb247IGZoaXJWZXJzaW9uPTQuMA=="


// read

Instance: ex-AuditSearchSubscriptionReadSubscriber
InstanceOf: AuditSearchSubscriptionReadSubscriber
Title: "Audit Example of ITI-113 at Subscriber for Read interaction"
Description: "Audit Example for a Resource Subscription Search Transaction from Subscriber perspective for Read interaction"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* subtype[anyRead] = http://hl7.org/fhir/restful-interaction#read "read"
* subtype[iti113] = urn:ihe:event-type-code#ITI-113 "Resource Subscription Search"
* recorded = 2024-04-29T09:49:00.000Z
* outcome = http://terminology.hl7.org/CodeSystem/audit-event-outcome#0 "Success"
* source.site = "server.example.com"
* source.observer.display = "myMachine.example.org"
* source.type = http://terminology.hl7.org/CodeSystem/security-source-type#4 "Application Server"
* agent[client].requestor = false
* agent[client].who.display = "myMachine.example.org"
* agent[client].network.address = "2001:0db8:85a3:0000:0000:8a2e:0370:7334"
* agent[client].network.type = http://hl7.org/fhir/network-type#2 "IP Address"
* agent[server].who = Reference(Device/ex-device)
* agent[server].requestor = false
* agent[server].network.address = "http://server.example.com/fhir"
* agent[server].network.type = http://hl7.org/fhir/network-type#5 "URI"
* entity[data].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#2 "System Object"
* entity[data].role = http://terminology.hl7.org/CodeSystem/object-role#20 "Job"
* entity[data].what = Reference(Subscription/ex-DocumentReference-MultiPatient-Subscription)



Instance: ex-AuditSearchSubscriptionReadBroker
InstanceOf: AuditSearchSubscriptionReadBroker
Title: "Audit Example of ITI-111 at Broker for Read interaction"
Description: "Audit Example for a Resource Subscription Search Transaction from Broker perspective for Read interaction"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* subtype[anyRead] = http://hl7.org/fhir/restful-interaction#read "read"
* subtype[iti113] = urn:ihe:event-type-code#ITI-113 "Resource Subscription Search"
* recorded = 2024-04-29T09:49:00.000Z
* outcome = http://terminology.hl7.org/CodeSystem/audit-event-outcome#0 "Success"
* source.site = "server.example.com"
* source.observer = Reference(Device/ex-device)
* source.type = http://terminology.hl7.org/CodeSystem/security-source-type#4 "Application Server"
* agent[client].requestor = false
* agent[client].who.display = "myMachine.example.org"
* agent[client].network.address = "2001:0db8:85a3:0000:0000:8a2e:0370:7334"
* agent[client].network.type = http://hl7.org/fhir/network-type#2 "IP Address"
* agent[server].who = Reference(Device/ex-device)
* agent[server].requestor = false
* agent[server].network.address = "http://server.example.com/fhir"
* agent[server].network.type = http://hl7.org/fhir/network-type#5 "URI"
* entity[data].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#2 "System Object"
* entity[data].role = http://terminology.hl7.org/CodeSystem/object-role#20 "Job"
* entity[data].what = Reference(Subscription/ex-DocumentReference-MultiPatient-Subscription)

