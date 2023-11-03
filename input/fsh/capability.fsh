Instance: IHE.DSUBm.ResourceNotificationRecipient
InstanceOf: CapabilityStatement
Title: "DSUBm Resource Notification Recipient Actor"
Usage: #definition
* description = """
The DSUBm Resource Notification Recipient Actor CapabilityStatement requirements expresses the requirements that shall be provided.

- Using FHIR R4B
- Shall support both json or xml encoding
- Should use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)
- Shall support the ITI-112 transaction

"""

* name = "IHE_DSUBm_RESOURCE_NOTIFICATION_RECIPIENT"
* title = "IHE DSUBm RESOURCE NOTIFICATION RECIPIENT"
* status = #active
* experimental = false
* date = "2023-10-27"
* kind = #requirements
* fhirVersion = #4.3.0
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #server
  * documentation = "DSUBm Resource Notification Recipient provides capability to receive notification ."
  * security
    * description = "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"   
  * resource[+]
    * type = #Bundle
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/IHE.DSUBm.ResourceNotify.EventNotification"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/IHE.DSUBm.ResourceNotify.HandshakeNotification"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/IHE.DSUBm.ResourceNotify.HeartbeatNotification"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/IHE.DSUBm.ResourceNotify.SubscriptionDeactivationNotification"
    * documentation = "Resource Notify [ITI-112]"
/*  * interaction[+]
    * code = #transaction
    * documentation = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/IHE.DSUBm.ResourceNotify.EventNotification"
  * interaction[+]
    * code = #transaction
    * documentation = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/IHE.DSUBm.ResourceNotify.HandshakeNotification"
  * interaction[+]
    * code = #transaction
    * documentation = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/IHE.DSUBm.ResourceNotify.HeartbeatNotification"
  * interaction[+]
    * code = #transaction
    * documentation = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/IHE.DSUBm.ResourceNotify.SubscriptionDeactivationNotification"
  */  

Instance: IHE.DSUBm.ResourceNotificationBroker
InstanceOf: CapabilityStatement
Title: "DSUBm Resource Notification Broker Actor"
Usage: #definition
* description = """
The DSUBm Resource Notification Broker Actor CapabilityStatement requirements expresses the requirements that shall be provided.

- Using FHIR R4B
- Shall support both json or xml encoding
- Should use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)

- Shall support the ITI-110 transaction
- Shall support the ITI-111 transaction
- Shall implement the ITI-112 transaction
- Shall support the ITI-113 transaction and the following [Search Parameters](ITI-113.html#2311352-message-semantics)
    - _id
    - status
    - url
    - filter-criteria
    - topic
- Shall support the DSUBm $status operation  
- Should support the DSUBm $events operation  
- Shall support the ITI-114 transaction and the following [Search Parameters](ITI-114.html#2311452-message-semantics)
    - _id
    - resource
    - derived-or-self
    - status
    - url

"""

* name = "IHE_DSUBm_RESOURCE_NOTIFICATION_BROKER"
* title = "IHE DSUBm RESOURCE NOTIFICATION BROKER"
* status = #active
* experimental = false
* date = "2023-10-27"
* kind = #requirements
* fhirVersion = #4.3.0
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #server
  * documentation = "DSUBm Resource Notification Broker provides capability to receive subscription, receive publication event, receive subscriptionTopic search"
  * security
    * description = "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"   
  * resource[0]
    * type = #Subscription
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-DocumentReference-PatientDependent-Subscription"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-DocumentReference-MultiPatient-Subscription"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-SubmissionSet-PatientDependent-Subscription"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-SubmissionSet-MultiPatient-Subscription"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-Folder-PatientDependent-Subscription"
    * documentation = "Resource Subscription [ITI-110] and Resource Subscription Search [ITI-113]"
    * interaction[+].code = #read
    * interaction[+].code = #create
    * interaction[+].code = #update
    * interaction[+].code = #search-type
    * searchParam[+]
      * name = "_id"
      * type = #string
      * documentation = "The id of the Subscription"
    * searchParam[+]
      * name = "status"
      * type = #token
      * documentation = "The current state of the subscription"
    * searchParam[+]
      * name = "url"
      * type = #uri
      * documentation = "The URI that will receive the notifications"
    * searchParam[+]
      * name = "filter-criteria"
      * definition = "http://hl7.org/fhir/uv/subscriptions-backport/SearchParameter/Subscription-filter-criteria"
      * type = #string
      * documentation = "This SearchParameter enables query of subscriptions by filter criteria"          
    * searchParam[+]
      * name = "topic"
      * definition = "http://hl7.org/fhir/uv/subscriptions-backport/SearchParameter/Subscription-topic"
      * type = #uri
      * documentation = "This SearchParameter enables query of subscriptions by canonical topic-url"   
    * operation[+]
      * name = "$events"
      * definition = "http://hl7.org/fhir/uv/subscriptions-backport/OperationDefinition/backport-subscription-events"  
      * documentation = """ The Response Bundle shall be conformed with https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-EventsOperation-Bundle """
    * operation[+]
      * name = "$status"
      * definition = "http://hl7.org/fhir/uv/subscriptions-backport/OperationDefinition/backport-subscription-status"
      * documentation = """ The Response Bundle shall be conformed with https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-StatusOperation-Bundle """    
  * resource[1]
    * type = #SubscriptionTopic
    * documentation = """
Resource SubscriptionTopic Search [ITI-114]
The Resource Notification Broker Actor shall support the canonical instances of SubscriptionTopic presented in the DSUBm profile.
see [here](artifacts.html#other)
"""
    * interaction[0]
      * code = #read
    * interaction[1]
      * code = #search-type
    * searchParam[+]
      * name = "_id"
      * type = #string
      * documentation = "The id of the SubscriptionTopic"
    * searchParam[+]
      * name = "resource"
      * type = #uri
      * documentation = "Allowed Data type or Resource (reference to definition) for this definition, searches resourceTrigger, eventTrigger, and notificationShape for matches."
    * searchParam[+]
      * name = "derived-or-self"
      * type = #uri
      * documentation = "A server defined search that matches either the url or derivedFrom"
    * searchParam[+]
      * name = "status"
      * type = #token
      * documentation = "Should be valued with `active`"      
    * searchParam[+]
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
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/IHE.DSUBm.ResourceNotify.EventNotification"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/IHE.DSUBm.ResourceNotify.HandshakeNotification"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/IHE.DSUBm.ResourceNotify.HeartbeatNotification"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/IHE.DSUBm.ResourceNotify.SubscriptionDeactivationNotification"
    * documentation = "Resource Notify [ITI-112]"


Instance: IHE.DSUBm.ResourceNotificationBroker.UpdateOption
InstanceOf: CapabilityStatement
Title: "DSUBm Resource Notification Broker Actor with update option"
Usage: #definition
* description = """
The DSUBm Resource Notification Broker Actor CapabilityStatement requirements expresses the requirements that shall be provided when the update events option is used.

- Using FHIR R4B
- Shall support both json or xml encoding
- Should use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)

- Shall support the ITI-110 transaction
- Shall support the ITI-111 transaction
- Shall implement the ITI-112 transaction
- Shall support the ITI-113 transaction and the following [Search Parameters](ITI-113.html#2311352-message-semantics)
    - _id
    - status
    - url
    - filter-criteria
    - topic
- Shall support the DSUBm $status operation  
- Should support the DSUBm $events operation  
- Shall support the ITI-114 transaction and the following [Search Parameters](ITI-114.html#2311452-message-semantics)
    - _id
    - resource
    - derived-or-self
    - status
    - url

"""

* name = "IHE_DSUBm_RESOURCE_NOTIFICATION_BROKER"
* title = "IHE DSUBm RESOURCE NOTIFICATION BROKER"
* status = #active
* experimental = false
* date = "2023-10-27"
* kind = #requirements
* fhirVersion = #4.3.0
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #server
  * documentation = "DSUBm Resource Notification Broker provides capability to receive subscription, receive publication event, receive subscriptionTopic search"
  * security
    * description = "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"   
  * resource[+]
    * type = #Subscription
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-DocumentReference-PatientDependent-Subscription"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-DocumentReference-MultiPatient-Subscription"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-DocumentReference-PatientDependent-Subscription-update"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-DocumentReference-MultiPatient-Subscription-update"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-SubmissionSet-PatientDependent-Subscription"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-SubmissionSet-MultiPatient-Subscription"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-Folder-PatientDependent-Subscription"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-Folder-PatientDependent-Subscription-update"
    * documentation = """
Resource Subscription [ITI-110] and Resource Subscription Search [ITI-113]
"""
    * interaction[+].code = #read
    * interaction[+].code = #create
    * interaction[+].code = #update
    * interaction[+].code = #search-type
    * searchParam[+]
      * name = "_id"
      * type = #string
      * documentation = "The id of the Subscription"
    * searchParam[+]
      * name = "status"
      * type = #token
      * documentation = "The current state of the subscription"
    * searchParam[+]
      * name = "url"
      * type = #uri
      * documentation = "The URI that will receive the notifications"
    * searchParam[+]
      * name = "filter-criteria"
      * definition = "http://hl7.org/fhir/uv/subscriptions-backport/SearchParameter/Subscription-filter-criteria"
      * type = #string
      * documentation = "This SearchParameter enables query of subscriptions by filter criteria"          
    * searchParam[+]
      * name = "topic"
      * definition = "http://hl7.org/fhir/uv/subscriptions-backport/SearchParameter/Subscription-topic"
      * type = #uri
      * documentation = "This SearchParameter enables query of subscriptions by canonical topic-url"   
    * operation[+]
      * name = "$events"
      * definition = "http://hl7.org/fhir/uv/subscriptions-backport/OperationDefinition/backport-subscription-events"  
      * documentation = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-EventsOperation-Bundle"
    * operation[+]
      * name = "$status"
      * definition = "http://hl7.org/fhir/uv/subscriptions-backport/OperationDefinition/backport-subscription-status"
      * documentation = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-StatusOperation-Bundle"    
  * resource[+]
    * type = #SubscriptionTopic
//    * supportedProfile = "https://hl7.org/fhir/R4B/subscriptiontopic.html"
    * documentation = """
Resource SubscriptionTopic Search [ITI-114]
The Resource Notification Broker Actor shall support the canonical instances of SubscriptionTopic presented in the DSUBm profile.
"""

    * interaction[+].code = #read
    * interaction[+].code = #search-type
    * searchParam[+]
      * name = "_id"
      * type = #string
      * documentation = "The id of the SubscriptionTopic"
    * searchParam[+]
      * name = "resource"
      * type = #uri
      * documentation = "Allowed Data type or Resource (reference to definition) for this definition, searches resourceTrigger, eventTrigger, and notificationShape for matches."
    * searchParam[+]
      * name = "derived-or-self"
      * type = #uri
      * documentation = "A server defined search that matches either the url or derivedFrom"
    * searchParam[+]
      * name = "status"
      * type = #token
      * documentation = "Should be valued with `active`"      
    * searchParam[+]
      * name = "url"
      * type = #uri
      * documentation = "Logical canonical URL to reference this SubscriptionTopic (globally unique)"           
  * interaction[+]
    * code = #transaction
    * documentation = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/IHE.DSUBm.ResourceBundle"
* rest[+]
  * mode = #client
  * documentation = "DSUBm Resource Notification Broker provides capability to send notification"
  * security
    * description = "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"   
  * resource[+]
    * type = #Bundle
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/IHE.DSUBm.ResourceNotify.EventNotification"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/IHE.DSUBm.ResourceNotify.HandshakeNotification"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/IHE.DSUBm.ResourceNotify.HeartbeatNotification"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/IHE.DSUBm.ResourceNotify.SubscriptionDeactivationNotification"
    * documentation = "Resource Notify [ITI-112]"
    


Instance: IHE.DSUBm.ResourceNotificationPublisher
InstanceOf: CapabilityStatement
Title: "DSUBm Resource Notification Publisher Actor"
Usage: #definition
* description = """
The DSUBm Resource Notification Publisher Actor CapabilityStatement requirements expresses the requirements that shall be provided.

- Using FHIR R4B
- Shall support both json or xml encoding
- Should use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)
- Shall support the ITI-111 transaction

"""

* name = "IHE_DSUBm_RESOURCE_NOTIFICATION_PUBLISHER"
* title = "IHE DSUBm RESOURCE NOTIFICATION PUBLISHER"
* status = #active
* experimental = false
* date = "2023-10-27"
* kind = #requirements
* fhirVersion = #4.3.0
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #client
  * documentation = "DSUBm Resource Notification Publisher provides capability to send publication events"
  * security
    * description = "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"   
  * interaction[+]
    * code = #transaction
    * documentation = "https://profiles.ihe.net/ITI/MHD/StructureDefinition-IHE.MHD.Minimal.ProvideBundle.html"  

Instance: IHE.DSUBm.ResourceNotificationPublisher.UpdateOption
InstanceOf: CapabilityStatement
Title: "DSUBm Resource Notification Publisher Actor with update option"
Usage: #definition
* description = """
he DSUBm Resource Notification Publisher Actor CapabilityStatement requirements expresses the requirements that shall be provided  when the update events option is used.

- Using FHIR R4B
- Shall support both json or xml encoding
- Should use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)
- Shall support the ITI-111 transaction

"""

* name = "IHE_DSUBm_RESOURCE_NOTIFICATION_PUBLISHER"
* title = "IHE DSUBm RESOURCE NOTIFICATION PUBLISHER"
* status = #active
* experimental = false
* date = "2023-10-27"
* kind = #requirements
* fhirVersion = #4.3.0
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #client
  * documentation = "DSUBm Resource Notification Publisher provides capability to send publication events"
  * security
    * description = "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"   
  * interaction[+]
    * code = #transaction
    * documentation = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/IHE.DSUBm.ResourceBundle"

Instance: IHE.DSUBm.ResourceNotificationSubscriber
InstanceOf: CapabilityStatement
Title: "DSUBm Resource Notification Subscriber Actor"
Usage: #definition
* description = """
The DSUBm Resource Notification Subscriber Actor CapabilityStatement requirements expresses the requirements that shall be provided.

- Using FHIR R4B
- Shall support both json or xml encoding
- Should use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)

- Shall implement the ITI-110 transaction
- Should implement the ITI-113 transaction; if implemented: 
  - [Search Parameters that should be supported](ITI-113.html#2311352-message-semantics)
    - _id
    - status
    - url
    - filter-criteria
    - topic
  - Should support the DSUBm $status operation  
  - Should support the DSUBm $events operation  
- Should implement the ITI-114 transaction; if implemented: 
  - [Search Parameters that should  be supported](ITI-114.html#2311452-message-semantics)
    - _id
    - resource
    - derived-or-self
    - status
    - url


"""

* name = "IHE_DSUBm_RESOURCE_NOTIFICATION_SUBSCRIBER"
* title = "IHE DSUBm RESOURCE NOTIFICATION SUBSCRIBER"
* status = #active
* experimental = false
* date = "2023-10-27"
* kind = #requirements
* fhirVersion = #4.3.0
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #client
  * documentation = "DSUBm Resource Notification subscriber provides capability to create/deactivate subscription and optionally to search for Subscription and SubscritptionTopic resources"
  * security
    * description = "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"   
  * resource[0]
    * type = #Subscription
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-DocumentReference-PatientDependent-Subscription"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-DocumentReference-MultiPatient-Subscription"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-SubmissionSet-PatientDependent-Subscription"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-SubmissionSet-MultiPatient-Subscription"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-Folder-PatientDependent-Subscription"
    * documentation = "Resource Subscription [ITI-110] and Resource Subscription Search [ITI-113]"
    * interaction[+].code = #read
    * interaction[+].code = #create
    * interaction[+].code = #update
    * interaction[+].code = #search-type
    * searchParam[+]
      * name = "_id"
      * type = #string
      * documentation = "The id of the Subscription"
    * searchParam[+]
      * name = "status"
      * type = #token
      * documentation = "The current state of the subscription"
    * searchParam[+]
      * name = "url"
      * type = #uri
      * documentation = "The URI that will receive the notifications"
    * searchParam[+]
      * name = "filter-criteria"
      * definition = "http://hl7.org/fhir/uv/subscriptions-backport/SearchParameter/Subscription-filter-criteria"
      * type = #string
      * documentation = "This SearchParameter enables query of subscriptions by filter criteria"          
    * searchParam[+]
      * name = "topic"
      * definition = "http://hl7.org/fhir/uv/subscriptions-backport/SearchParameter/Subscription-topic"
      * type = #uri
      * documentation = "This SearchParameter enables query of subscriptions by canonical topic-url"   
    * operation[+]
      * name = "$events"
      * definition = "http://hl7.org/fhir/uv/subscriptions-backport/OperationDefinition/backport-subscription-events"  
      * documentation = """ This operation is OPTIONAL for the RESOURCE NOTIFICATION SUBSCRIBER; if supported, the Resource Notification Subscriber shall support in response a Bundle that is conformed with https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-EventsOperation-Bundle """
    * operation[+]
      * name = "$status"
      * definition = "http://hl7.org/fhir/uv/subscriptions-backport/OperationDefinition/backport-subscription-status"    
      * documentation = """ This operation is OPTIONAL for the RESOURCE NOTIFICATION SUBSCRIBER; if supported, the Resource Notification Subscriber shall support in response a Bundle that is conformed with https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-StatusOperation-Bundle """
  * resource[1]
    * type = #SubscriptionTopic
    * documentation = "Resource SubscriptionTopic Search [ITI-114]"
    * interaction[0]
      * code = #read
    * interaction[1]
      * code = #search-type
    * searchParam[+]
      * name = "_id"
      * type = #string
      * documentation = "The id of the SubscriptionTopic"
    * searchParam[+]
      * name = "resource"
      * type = #uri
      * documentation = "Allowed Data type or Resource (reference to definition) for this definition, searches resourceTrigger, eventTrigger, and notificationShape for matches."
    * searchParam[+]
      * name = "derived-or-self"
      * type = #uri
      * documentation = "A server defined search that matches either the url or derivedFrom"
    * searchParam[+]
      * name = "status"
      * type = #token
      * documentation = "Should be valued with `active`"      
    * searchParam[+]
      * name = "url"
      * type = #uri
      * documentation = "Logical canonical URL to reference this SubscriptionTopic (globally unique)"           
  
Instance: IHE.DSUBm.ResourceNotificationSubscriber.UpdateOption
InstanceOf: CapabilityStatement
Title: "DSUBm Resource Notification Subscriber Actor  with update option"
Usage: #definition
* description = """
The DSUBm Resource Notification Subscriber Actor CapabilityStatement requirements expresses the requirements that shall be provided.

- Using FHIR R4B
- Shall support both json or xml encoding
- Should use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)

- Shall implement the ITI-110 transaction
- Should implement the ITI-113 transaction; if implemented: 
  - [Search Parameters that should be supported](ITI-113.html#2311352-message-semantics)
    - _id
    - status
    - url
    - filter-criteria
    - topic
  - Should support the DSUBm $status operation  
  - Should support the DSUBm $events operation  
- Should implement the ITI-114 transaction; if implemented: 
  - [Search Parameters that should  be supported](ITI-114.html#2311452-message-semantics)
    - _id
    - resource
    - derived-or-self
    - status
    - url


"""

* name = "IHE_DSUBm_RESOURCE_NOTIFICATION_SUBSCRIBER"
* title = "IHE DSUBm RESOURCE NOTIFICATION SUBSCRIBER"
* status = #active
* experimental = false
* date = "2023-10-27"
* kind = #requirements
* fhirVersion = #4.3.0
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #client
  * documentation = "DSUBm Resource Notification subscriber provides capability to create/deactivate subscription and optionally to search for Subscription and SubscritptionTopic resources"
  * security
    * description = "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"   
  * resource[0]
    * type = #Subscription
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-DocumentReference-PatientDependent-Subscription"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-DocumentReference-MultiPatient-Subscription"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-DocumentReference-PatientDependent-Subscription-update"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-DocumentReference-MultiPatient-Subscription-update"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-SubmissionSet-PatientDependent-Subscription"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-SubmissionSet-MultiPatient-Subscription"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-Folder-PatientDependent-Subscription"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-Folder-PatientDependent-Subscription-update"
    * documentation = "Resource Subscription [ITI-110] and Resource Subscription Search [ITI-113]"
    * interaction[+].code = #read
    * interaction[+].code = #create
    * interaction[+].code = #update
    * interaction[+].code = #search-type
    * searchParam[+]
      * name = "_id"
      * type = #string
      * documentation = "The id of the Subscription"
    * searchParam[+]
      * name = "status"
      * type = #token
      * documentation = "The current state of the subscription"
    * searchParam[+]
      * name = "url"
      * type = #uri
      * documentation = "The URI that will receive the notifications"
    * searchParam[+]
      * name = "filter-criteria"
      * definition = "http://hl7.org/fhir/uv/subscriptions-backport/SearchParameter/Subscription-filter-criteria"
      * type = #string
      * documentation = "This SearchParameter enables query of subscriptions by filter criteria"          
    * searchParam[+]
      * name = "topic"
      * definition = "http://hl7.org/fhir/uv/subscriptions-backport/SearchParameter/Subscription-topic"
      * type = #uri
      * documentation = "This SearchParameter enables query of subscriptions by canonical topic-url"   
    * operation[+]
      * name = "$events"
      * definition = "http://hl7.org/fhir/uv/subscriptions-backport/OperationDefinition/backport-subscription-events"  
      * documentation = """ This operation is OPTIONAL for the RESOURCE NOTIFICATION SUBSCRIBER; if supported, the Resource Notification Subscriber shall support in response a Bundle that is conformed with https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-EventsOperation-Bundle """
    * operation[+]
      * name = "$status"
      * definition = "http://hl7.org/fhir/uv/subscriptions-backport/OperationDefinition/backport-subscription-status"    
      * documentation = """ This operation is OPTIONAL for the RESOURCE NOTIFICATION SUBSCRIBER; if supported, the Resource Notification Subscriber shall support in response a Bundle that is conformed with https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-StatusOperation-Bundle """
  * resource[1]
    * type = #SubscriptionTopic
    * documentation = "Resource SubscriptionTopic Search [ITI-114]"
    * interaction[0]
      * code = #read
    * interaction[1]
      * code = #search-type
    * searchParam[+]
      * name = "_id"
      * type = #string
      * documentation = "The id of the SubscriptionTopic"
    * searchParam[+]
      * name = "resource"
      * type = #uri
      * documentation = "Allowed Data type or Resource (reference to definition) for this definition, searches resourceTrigger, eventTrigger, and notificationShape for matches."
    * searchParam[+]
      * name = "derived-or-self"
      * type = #uri
      * documentation = "A server defined search that matches either the url or derivedFrom"
    * searchParam[+]
      * name = "status"
      * type = #token
      * documentation = "Should be valued with `active`"      
    * searchParam[+]
      * name = "url"
      * type = #uri
      * documentation = "Logical canonical URL to reference this SubscriptionTopic (globally unique)"           


/*
Instance: IHE.ToDo.server
InstanceOf: CapabilityStatement
Title: "ToDo Server Actor"
Usage: #definition
* description = """
CapabilityStatement for Server Actor.

Explain
- blah
- blah
"""
* url = "https://profiles.ihe.net/Domain/Profile/CapabilityStatement/IHE.ToDo.server"
* name = "IHE_ToDo_supplier"
* title = "IHE ToDo Server"
* status = #active
* experimental = false
* date = "2022-10-27"
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #server
  * documentation = "CapabilityStatement for DSUBm Resource Notification Broker."
  * security
    * description = "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"
  * resource[+]
    * type = #Subscription
    * profile = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/IHE.DSUBm.DSUBm-DocumentReference-PatientDependent-Subscription"
    * documentation = """
Resource Subscription [ITI-110]
"""
    * interaction[+].code = #read
    * interaction[+].code = #search-type
    * searchParam[+]
      * name = "_lastUpdated"
      * type = #date
      * documentation = "When the resource version last changed"
    * searchParam[+]
      * name = "_id"
      * type = #token
      * documentation = "Logical id of this artifact"
    * searchParam[+]
      * name = "active"
      * type = #token
      * documentation = "Whether the patient record is active"
    * searchParam[+]
      * name = "family"
      * type = #string
      * documentation = "A portion of the family name of the patient"
    * searchParam[+]
      * name = "given"
      * type = #string
      * documentation = "A portion of the given name of the patient"
    * searchParam[+]
      * name = "identifier"
      * type = #token
      * documentation = "A patient identifier"
    * searchParam[+]
      * name = "telecom"
      * type = #token
      * documentation = "The value in any kind of telecom details of the patient"
    * searchParam[+]
      * name = "birthdate"
      * type = #date
      * documentation = "The patient's date of birth"
    * searchParam[+]
      * name = "address-city"
      * type = #string
      * documentation = "A city specified in an address"
    * searchParam[+]
      * name = "address-country"
      * type = #string
      * documentation = "A country specified in an address"
    * searchParam[+]
      * name = "address-postalcode"
      * type = #string
      * documentation = "A postalCode specified in an address"
    * searchParam[+]
      * name = "address-state"
      * type = #string
      * documentation = "A state specified in an address"
    * searchParam[+]
      * name = "gender"
      * type = #token
      * documentation = "Gender of the patient"
    * searchParam[+]
      * name = "mothersMaidenName"
      * definition = "http://hl7.org/fhir/SearchParameter/patient-extensions-Patient-mothersMaidenName"
      * type = #string
      * documentation = "Mother's maiden (unmarried) name, commonly collected to help verify patient identity."
  * interaction.code = #search-system

*/