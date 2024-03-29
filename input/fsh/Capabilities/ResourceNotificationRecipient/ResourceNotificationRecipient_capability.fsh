Instance: IHE.DSUBm.ResourceNotificationRecipient
InstanceOf: CapabilityStatement
Title: "DSUBm Resource Notification Recipient Actor"
Usage: #definition
* description = """
The DSUBm Resource Notification Recipient Actor CapabilityStatement requirements expresses the requirements that SHALL be provided.

- Using FHIR R4
- SHALL support both json and xml encoding
- SHOULD use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)
- SHALL support the ITI-112 transaction

"""

* name = "IHE_DSUBm_ResourceNotificationRecipient"
* title = "IHE DSUBm ResourceNotificationRecipient"
* status = #active
* experimental = false
* date = "2023-10-27"
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #server
  * documentation = "DSUBm Resource Notification Recipient provides capability to receive notification ."
  * security
    * description = "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"   
  * resource[+]
    * type = #Bundle
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/IHE.DSUBm.EventNotification"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/IHE.DSUBm.HandshakeNotification"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/IHE.DSUBm.HeartbeatNotification"
    * supportedProfile[+] = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition/IHE.DSUBm.SubscriptionDeactivationNotification"
    * documentation = """Resource Notify [ITI-112](ITI-112.html)"""
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
