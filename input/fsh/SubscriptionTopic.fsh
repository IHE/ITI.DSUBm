Profile: DSUBm_SubscriptionTopic
Parent: SubscriptionTopic
Id: DSUBm-SubscriptionTopic
Description: "Resource SubscriptionTopic for DSUBm profile"
* obeys DSUBm-trigger
* url 1..1
* title 1..1 
* date 1..1 
* publisher 1..1
* purpose 1..1
* resourceTrigger 1..1
* eventTrigger 0..0


Instance:    Document-SubscriptionTopic 
InstanceOf:  DSUBm_SubscriptionTopic
Usage:       #example
Title:       "DocumentReference SubscriptionTopic"
Description: "R4/B Example of a SubscriptionTopic describing the creation of a 'DocumentReference' resource."
* id        = "DocumentReference-SubscriptionTopic"
* url       = "http://example.org/FHIR/R4B/SubscriptionTopic/DocumentReference"
* title     = "Document"
* status    = #active
* date      = "2023-08-01"
* publisher = "Resource Notification Broker"
* purpose   = "This topic is used for describe events and state change of DocumentReference resource"
* resourceTrigger.description = "Publication of a document"
* resourceTrigger.resource = "http://example.org/FHIR/R4B/SubscriptionTopic/DocumentReference"
* resourceTrigger.supportedInteraction = #create
//queryCriteria.previous not exists 
//* resourceTrigger.queryCriteria.previous = "status:not=current"
* resourceTrigger.queryCriteria.resultForCreate = #test-passes
//queryCriteria.previous not exists 
* resourceTrigger.queryCriteria.current = "status=current"
* resourceTrigger.fhirPathCriteria = "Bundle.entry.resource.where(resourceType='DocumentReference').status contains 'current'"


Invariant: DSUBm-trigger
Severity: #error
Description: "SHALL have a resourceTrigger and SHALL not have an eventTrigger"
Expression: "resourceTrigger.exists() and eventTrigger.exists().not()"
XPath: "exists(f:resourceTrigger) and exists(f:eventTrigger).not()"

