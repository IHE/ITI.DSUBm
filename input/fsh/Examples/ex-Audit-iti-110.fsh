//iti-110
//create
//subscriber patient
Instance: ex-resorceSubscription-subscriber-create-patientDep
InstanceOf: AuditCreateResourceSubscriptionPatientSubscriber
Title: "Audit Example of ITI-110 at Subscriber for Create Interaction when patient-dependent"
Description: "Audit Example for a Resource Subscription Transaction for Create Interaction from Subscriber perspective when patient-dependent"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* subtype[anyCreate] = http://hl7.org/fhir/restful-interaction#create "create"
* subtype[iti110] = urn:ihe:event-type-code#ITI-110 "Resource Subscription"
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
* entity[patient].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#1 "Person"
* entity[patient].role = http://terminology.hl7.org/CodeSystem/object-role#1 "Patient"
* entity[patient].what = Reference(Patient/ex-patient)
* entity[data].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#2 "System Object"
* entity[data].role = http://terminology.hl7.org/CodeSystem/object-role#3 "Job"
* entity[data].what = Reference(DocumentReference/ex-DocumentReference-PatientDependent-Subscription)

//subscriber no patient
Instance: ex-resorceSubscription-subscriber-create-multiPat
InstanceOf: AuditCreateResourceSubscriptionSubscriber
Title: "Audit Example of ITI-110 at Subscriber for Create Interaction when multi-patient"
Description: "Audit Example for a Resource Subscription Transaction for Create Interaction from Subscriber perspective when multi-patient"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* subtype[anyCreate] = http://hl7.org/fhir/restful-interaction#create "create"
* subtype[iti110] = urn:ihe:event-type-code#ITI-110 "Resource Subscription"
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
* entity[data].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#2 "System Object"
* entity[data].role = http://terminology.hl7.org/CodeSystem/object-role#3 "Job"
* entity[data].what = Reference(DocumentReference/ex-DocumentReference-MultiPatient-Subscription)

//broker patient
Instance: ex-resorceSubscription-broker-create-patientDep
InstanceOf: AuditCreateResourceSubscriptionPatientBroker
Title: "Audit Example of ITI-110 for Create Interaction at Broker when patient-dependent"
Description: "Audit Example for a Resource Subscription Transaction for Create Interaction from Broker perspective when patient-dependent"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* subtype[anyCreate] = http://hl7.org/fhir/restful-interaction#create "create"
* subtype[iti110] = urn:ihe:event-type-code#ITI-110 "Resource Subscription"
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
* entity[patient].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#1 "Person"
* entity[patient].role = http://terminology.hl7.org/CodeSystem/object-role#1 "Patient"
* entity[patient].what = Reference(Patient/ex-patient)
* entity[data].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#2 "System Object"
* entity[data].role = http://terminology.hl7.org/CodeSystem/object-role#3 "Job"
* entity[data].what = Reference(DocumentReference/ex-DocumentReference-PatientDependent-Subscription)


//broker NO patient
Instance: ex-resorceSubscription-broker-create-multiPat
InstanceOf: AuditCreateResourceSubscriptionBroker
Title: "Audit Example of ITI-110 for Create Interaction at Broker when multi patient"
Description: "Audit Example for a Resource Subscription Transaction for Create Interaction from Broker perspective when multi patient"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* subtype[anyCreate] = http://hl7.org/fhir/restful-interaction#create "create"
* subtype[iti110] = urn:ihe:event-type-code#ITI-110 "Resource Subscription"
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
* entity[data].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#2 "System Object"
* entity[data].role = http://terminology.hl7.org/CodeSystem/object-role#3 "Job"
* entity[data].what = Reference(DocumentReference/ex-DocumentReference-MultiPatient-Subscription)

// update
//create
//subscriber patient
Instance: ex-resorceSubscription-subscriber-update-patientDep
InstanceOf: AuditUpdateResourceSubscriptionPatientSubscriber
Title: "Audit Example of ITI-110 at Subscriber for update Interaction when patient-dependent"
Description: "Audit Example for a Resource Subscription Transaction for update Interaction from Subscriber perspective when patient-dependent"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* subtype[anyUpdate] = http://hl7.org/fhir/restful-interaction#update "update"
* subtype[iti110] = urn:ihe:event-type-code#ITI-110 "Resource Subscription"
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
* entity[patient].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#1 "Person"
* entity[patient].role = http://terminology.hl7.org/CodeSystem/object-role#1 "Patient"
* entity[patient].what = Reference(Patient/ex-patient)
* entity[data].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#2 "System Object"
* entity[data].role = http://terminology.hl7.org/CodeSystem/object-role#3 "Job"
* entity[data].what = Reference(DocumentReference/ex-DocumentReference-PatientDependent-Subscription)

//subscriber no patient
Instance: ex-resorceSubscription-subscriber-update-multiPat
InstanceOf: AuditUpdateResourceSubscriptionSubscriber
Title: "Audit Example of ITI-110 at Subscriber for update Interaction when multi-patient"
Description: "Audit Example for a Resource Subscription Transaction for update Interaction from Subscriber perspective when multi-patient"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* subtype[anyUpdate] = http://hl7.org/fhir/restful-interaction#update "update"
* subtype[iti110] = urn:ihe:event-type-code#ITI-110 "Resource Subscription"
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
* entity[data].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#2 "System Object"
* entity[data].role = http://terminology.hl7.org/CodeSystem/object-role#3 "Job"
* entity[data].what = Reference(DocumentReference/ex-DocumentReference-MultiPatient-Subscription)

//broker patient
Instance: ex-resorceSubscription-broker-update-patientDep
InstanceOf: AuditUpdateResourceSubscriptionPatientBroker
Title: "Audit Example of ITI-110 for update Interaction at Broker when patient-dependent"
Description: "Audit Example for a Resource Subscription Transaction for update Interaction from Broker perspective when patient-dependent"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* subtype[anyUpdate] = http://hl7.org/fhir/restful-interaction#update "update"
* subtype[iti110] = urn:ihe:event-type-code#ITI-110 "Resource Subscription"
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
* entity[patient].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#1 "Person"
* entity[patient].role = http://terminology.hl7.org/CodeSystem/object-role#1 "Patient"
* entity[patient].what = Reference(Patient/ex-patient)
* entity[data].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#2 "System Object"
* entity[data].role = http://terminology.hl7.org/CodeSystem/object-role#3 "Job"
* entity[data].what = Reference(DocumentReference/ex-DocumentReference-PatientDependent-Subscription)


//broker NO patient
Instance: ex-resorceSubscription-broker-update-multiPat
InstanceOf: AuditUpdateResourceSubscriptionBroker
Title: "Audit Example of ITI-110 for update Interaction at Broker when multi patient"
Description: "Audit Example for a Resource Subscription Transaction for update Interaction from Broker perspective when multi patient"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* subtype[anyUpdate] = http://hl7.org/fhir/restful-interaction#update "update"
* subtype[iti110] = urn:ihe:event-type-code#ITI-110 "Resource Subscription"
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
* entity[data].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#2 "System Object"
* entity[data].role = http://terminology.hl7.org/CodeSystem/object-role#3 "Job"
* entity[data].what = Reference(DocumentReference/ex-DocumentReference-MultiPatient-Subscription)

