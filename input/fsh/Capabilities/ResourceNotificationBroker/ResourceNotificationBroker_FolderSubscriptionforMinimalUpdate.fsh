Instance: IHE.DSUBm.ResourceNotificationBroker.Folder.MinUpd
InstanceOf: CapabilityStatement
Title: "DSUBm Resource Notification Broker Actor implementing Folder Subscription for Minimal Update option"
Usage: #definition
* description = """
The DSUBm Resource Notification Broker Actor CapabilityStatement requirements expresses the requirements that SHALL be provided when implementing Folder Subscription for Minimal Update option.

- Using FHIR R4
- SHALL support both json and xml encoding
- SHOULD use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)
- SHALL support the ITI-110 transaction and support the basic type of Subscription and related SubscriptionTopic
- SHALL be able to support the Subscription defined in Section [2:3.110.4.1.2.1.4 Subscription with Folder Subscription for Minimal Update option](ITI-110.html#2311041214-subscription-with-folder-subscription-for-minimal-update-option), and the related SubscriptionTopic
- MAY support the ITI-111 transaction
- SHALL support the ITI-112 transaction:
  - SHALL support Handshake Notification
  - SHOULD support Heartbeat Notification
  - SHALL support Event Notification
  - SHOULD support Subscription Deactivation Notification
- SHALL support the ITI-113 transaction: 
    - SHALL support the following [Search Parameters](ITI-113.html#23113412-message-semantics)
      - _id
      - status
      - url
      - filter-criteria
      - topic
    - SHALL support the DSUBm $status operation  
    - SHOULD support the DSUBm $events operation  
- SHALL support the ITI-114 transaction:
    - SHALL support the following [Search Parameters](ITI-114.html#23114412-message-semantics)
      - code
      - _id
      - resource
      - derived-or-self
      - status
      - url

"""

* name = "IHE_DSUBm_ResourceNotificationBroker_Folder_MinUpd"
* title = "IHE DSUBm ResourceNotificationBroker Folder MinUpd"
* status = #active
* experimental = false
* date = "2023-10-27"
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #server
  * documentation = "DSUBm Resource Notification Broker provides capability to receive subscription, receive the stream of events, receive Subscription and SubscriptionTopic Resource search"
  * security
    * description = "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"   
  * resource[0]
    * type = #Subscription
    * supportedProfile[+] = Canonical(DSUBm-DocumentReference-PatientDependent-Subscription)
    * supportedProfile[+] = Canonical(DSUBm-DocumentReference-MultiPatient-Subscription)
    * supportedProfile[+] = Canonical(DSUBm-SubmissionSet-PatientDependent-Subscription)
    * supportedProfile[+] = Canonical(DSUBm-SubmissionSet-MultiPatient-Subscription)
    
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-Folder-Subscription-MinUpdateOpt"
    * documentation = """Resource Subscription [ITI-110](ITI-110.html) and Resource Subscription Search [ITI-113](ITI-113.html)"""
    * interaction[+].code = #read
    * interaction[+].code = #create
    * interaction[+].code = #update
    * interaction[+].code = #search-type
    * searchParam[+]
      * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * extension.valueCode = #SHALL         
      * name = "_id"
      * type = #string
      * documentation = "The id of the Subscription"
    * searchParam[+]
      * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * extension.valueCode = #SHALL         
      * name = "status"
      * type = #token
      * documentation = "The current state of the subscription"
    * searchParam[+]
      * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * extension.valueCode = #SHALL         
      * name = "url"
      * type = #uri
      * documentation = "The URI that will receive the notifications"
    * searchParam[+]
      * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * extension.valueCode = #SHALL         
      * name = "filter-criteria"
      * definition = "http://hl7.org/fhir/uv/subscriptions-backport/SearchParameter/Subscription-filter-criteria"
      * type = #string
      * documentation = "This SearchParameter enables query of subscriptions by filter criteria"          
    * searchParam[+]
      * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * extension.valueCode = #SHALL         
      * name = "topic"
      * definition = "http://hl7.org/fhir/uv/subscriptions-backport/SearchParameter/Subscription-topic"
      * type = #uri
      * documentation = "This SearchParameter enables query of subscriptions by canonical topic-url"   
    * operation[+]
      * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * extension.valueCode = #SHOULD         
      * name = "events"
      * definition = "http://hl7.org/fhir/uv/subscriptions-backport/OperationDefinition/backport-subscription-events"  
      * documentation = """ The Response Bundle SHALL be conformed with https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-EventsOperation-Bundle """
    * operation[+]
      * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * extension.valueCode = #SHALL         
      * name = "status"
      * definition = "http://hl7.org/fhir/uv/subscriptions-backport/OperationDefinition/backport-subscription-status"
      * documentation = """ The Response Bundle SHALL be conformed with https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-StatusOperation-Bundle """    
  * resource[1]
    * type = #Basic
    * documentation = """
Resource SubscriptionTopic Search [ITI-114](ITI-114.html):
The Resource Notification Broker Actor SHALL support the canonical instances of SubscriptionTopic presented in the DSUBm profile.
See [here](artifacts.html#canonical-subscriptiontopic)
"""
    * interaction[0]
      * code = #read
    * interaction[1]
      * code = #search-type
    * searchParam[+]
      * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * extension.valueCode = #SHALL
      * name = "code"
      * type = #token
      * documentation = "Kind of Resource"    
    * searchParam[+]
      * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * extension.valueCode = #SHALL         
      * name = "_id"
      * type = #string
      * documentation = "The id of the SubscriptionTopic"
    * searchParam[+]
      * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * extension.valueCode = #SHALL         
      * name = "resource"
      * type = #uri
      * documentation = "Allowed Data type or Resource (reference to definition) for this definition, searches resourceTrigger, eventTrigger, and notificationShape for matches."
    * searchParam[+]
      * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * extension.valueCode = #SHALL         
      * name = "derived-or-self"
      * type = #uri
      * documentation = "A server defined search that matches either the url or derivedFrom"
    * searchParam[+]
      * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * extension.valueCode = #SHALL         
      * name = "status"
      * type = #token
      * documentation = "SHOULD be valued with `active`"      
    * searchParam[+]
      * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * extension.valueCode = #SHALL         
      * name = "url"
      * type = #uri
      * documentation = "Logical canonical URL to reference this SubscriptionTopic (globally unique)"           
  * interaction[+]
    * code = #transaction
    * documentation = "https://profiles.ihe.net/ITI/MHD/StructureDefinition-IHE.MHD.Minimal.ProvideBundle.html"  
* rest[+]
  * mode = #client
  * documentation = "DSUBm Resource Notification Broker provides capability to send notification"
  * security
    * description = "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"   
  * resource[+]
    * type = #Bundle
    * supportedProfile[+] = Canonical(IHE.DSUBm.EventNotification)
    * supportedProfile[+] = Canonical(IHE.DSUBm.HandshakeNotification)
    * supportedProfile[+] = Canonical(IHE.DSUBm.HeartbeatNotification)
    * supportedProfile[+] = Canonical(IHE.DSUBm.SubscriptionDeactivationNotification)
    * documentation = """Resource Notify [ITI-112](ITI-112.html)"""
