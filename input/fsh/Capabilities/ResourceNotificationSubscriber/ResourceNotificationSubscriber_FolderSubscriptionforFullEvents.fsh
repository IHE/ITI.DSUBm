Instance: IHE.DSUBm.ResourceNotificationSubscriber.Folder.FullEvents
InstanceOf: CapabilityStatement
Title: "DSUBm Resource Notification Subscriber Actor implementing Folder Subscription for Full Events option"
Usage: #definition
* description = """
The DSUBm Resource Notification Subscriber Actor CapabilityStatement requirements expresses the requirements that SHALL be provided when implementing Folder Subscription for Full Events option.

- Using FHIR R4B
- SHALL support both json and xml encoding
- SHOULD use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)
- SHALL support the ITI-110 transaction and support the basic type of Subscription and related SubscriptionTopic
- SHALL be able to support the Subscription defined in Section [2:3.110.4.1.2.1.6 Subscription with Folder Subscription for Full Events option](ITI-110.html#2311041216-subscription-with-folder-subscription-for-full-events-option), and the related SubscriptionTopic
- SHOULD implement the ITI-113 transaction; if implemented: 
  - [Search Parameters that SHOULD be supported](ITI-113.html#23113412-message-semantics)
    - _id
    - status
    - url
    - filter-criteria
    - topic
  - SHOULD support the DSUBm $status operation  
  - SHOULD support the DSUBm $events operation  
- SHOULD implement the ITI-114 transaction; if implemented: 
  - [Search Parameters that SHOULD be supported](ITI-114.html#23114412-message-semantics)
    - _id
    - resource
    - derived-or-self
    - status
    - url


"""

* name = "IHE_DSUBm_ResourceNotificationSubscriber_Folder_FullEvents"
* title = "IHE DSUBm ResourceNotificationSubscriber Folder FullEvents"
* status = #active
* experimental = false
* date = "2023-10-27"
* kind = #requirements
* fhirVersion = #4.0.1
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
    
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-Folder-Subscription-for-Full-Events"    * documentation = "Resource Subscription [ITI-110] and Resource Subscription Search [ITI-113]"
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
      * documentation = """ This operation is OPTIONAL for the RESOURCE NOTIFICATION SUBSCRIBER; if supported, the Resource Notification Subscriber SHALL support in response a Bundle that is conformed with https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-EventsOperation-Bundle """
    * operation[+]
      * name = "$status"
      * definition = "http://hl7.org/fhir/uv/subscriptions-backport/OperationDefinition/backport-subscription-status"    
      * documentation = """ This operation is OPTIONAL for the RESOURCE NOTIFICATION SUBSCRIBER; if supported, the Resource Notification Subscriber SHALL support in response a Bundle that is conformed with https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-StatusOperation-Bundle """
  * resource[1]
    * type = #Basic
    * documentation = "Resource SubscriptionTopic Search [ITI-114]"
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
      * extension.valueCode = #SHOULD
      * name = "_id"
      * type = #string
      * documentation = "The id of the SubscriptionTopic"
    * searchParam[+]
      * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * extension.valueCode = #SHOULD
      * name = "resource"
      * type = #uri
      * documentation = "Allowed Data type or Resource (reference to definition) for this definition, searches resourceTrigger, eventTrigger, and notificationShape for matches."
    * searchParam[+]
      * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * extension.valueCode = #SHOULD
      * name = "derived-or-self"
      * type = #uri
      * documentation = "A server defined search that matches either the url or derivedFrom"
    * searchParam[+]
      * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * extension.valueCode = #SHOULD
      * name = "status"
      * type = #token
      * documentation = "SHOULD be valued with `active`"      
    * searchParam[+]
      * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * extension.valueCode = #SHOULD
      * name = "url"
      * type = #uri
      * documentation = "Logical canonical URL to reference this SubscriptionTopic (globally unique)"           
  