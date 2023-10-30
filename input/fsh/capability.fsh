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
  * interaction[+]
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


    
Instance: IHE.DSUBm.ResourceNotificationBroker
InstanceOf: CapabilityStatement
Title: "DSUBm Resource Notification Broker Actor"
Usage: #definition
* description = """
The DSUBm Resource Notification Broker Actor CapabilityStatement requirements expresses the requirements that shall be provided.

- Query against the FHIR endpoint to the SubscriptionTopic Resource endpoint
- Using FHIR R4B
- Shall support both json or xml encoding
- Should use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)

- Shall support the ITI-110 transaction
- Shall supoprt the ITI-111 transaction
- Shall supoprt the ITI-112 transaction
- Shall support the ITI-113 transaction
- Shall support the ITI-114 transaction

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
  * documentation = "DSUBm Resource Notification Recipient provides capability to receive subscription, receive publication event and send."
  * security
    * description = "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"   
  * resource[+]
    * type = #Subscription
    * profile = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-DocumentReference-PatientDependent-Subscription"
    * documentation = """
Resource Subscription [ITI-110]
"""
    * interaction[+].code = #read
    * interaction[+].code = #search-type
    * interaction[+].code = #create
    * interaction[+].code = #update
  * resource[+]
    * type = #Subscription
    * profile = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-DocumentReference-MultiPatient-Subscription"
    * documentation = """
Resource Subscription [ITI-110]
"""
    * interaction[+].code = #read
    * interaction[+].code = #search-type
    * interaction[+].code = #create
    * interaction[+].code = #update
  * resource[+]
    * type = #Subscription
    * profile = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-SubmissionSet-PatientDependent-Subscription"
    * documentation = """
Resource Subscription [ITI-110]
"""
    * interaction[+].code = #read
    * interaction[+].code = #search-type
    * interaction[+].code = #create
    * interaction[+].code = #update
  * resource[+]
    * type = #Subscription
    * profile = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-SubmissionSet-MultiPatient-Subscription"
    * documentation = """
Resource Subscription [ITI-110]
"""
    * interaction[+].code = #read
    * interaction[+].code = #search-type
    * interaction[+].code = #create
    * interaction[+].code = #update         
  * resource[+]
    * type = #Subscription
    * profile = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-Folder-PatientDependent-Subscription"
    * documentation = """
Resource Subscription [ITI-110]
"""
    * interaction[+].code = #read
    * interaction[+].code = #search-type
    * interaction[+].code = #create
    * interaction[+].code = #update
  * resource[+]
    * type = #SubscriptionTopic
    * profile = "https://hl7.org/fhir/R4B/subscriptiontopic.html"
    * documentation = """
The Resource Notification Broker Actor shall support the canonical instances of SubscriptionTopic presented in the DSUBm profile.
"""
    * interaction[+].code = #create
    * interaction[+].code = #read
    * interaction[+].code = #search-type
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
      * documentation = "Should be valued with `active`. "      
    * searchParam[+]
      * name = "url"
      * type = #uri
      * documentation = "Logical canonical URL to reference this SubscriptionTopic (globally unique)"      
// iti-110 
  * interaction[+]
    * code = #transaction
    * documentation = "https://profiles.ihe.net/ITI/DSUBm/IHE/ITI.DSUBm/branches/master/ITI-110.html"
// iti-111 
  * interaction[+]
    * code = #transaction
    * documentation = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/IHE.DSUBm.ResourceBundle"
// iti-112  
  * interaction[+]
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
// iti-113
  * interaction[+]
    * code = #transaction
    * documentation = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-StatusOperation-Bundle"
  * interaction[+]
    * code = #transaction
    * documentation = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/DSUBm-EventsOperation-Bundle"
// iti-114    
  * interaction[+]
    * code = #transaction
    * documentation = "https://profiles.ihe.net/ITI/DSUBm/IHE/ITI.DSUBm/branches/master/ITI-114.html"









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