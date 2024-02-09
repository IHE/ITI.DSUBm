Instance: IHE.DSUBm.ResourceNotificationPublisher.Folder.Upd
InstanceOf: CapabilityStatement
Title: "DSUBm Resource Notification Publisher Actor implementing Folder Subscription for Update option"
Usage: #definition
* description = """
The DSUBm Resource Notification Publisher Actor CapabilityStatement requirements expresses the requirements that SHALL be provided when implementing Folder Subscription for Update option.

- Using FHIR R4B
- SHALL support both json and xml encoding
- SHOULD use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)
- SHALL support the ITI-111 transaction for the basic trigger events
- SHALL be able to support in the Resource Publish [ITI-111] transaction the triggers events defined in Section [2:3.111.4.1.1.5 Folder Subscription for Update option Trigger Events](ITI-111.html#231114115-folder-subscription-for-update-option-trigger-events) and to comunicate the stream of events to the Resource Notification Broker as defined in Section [2:3.111.4.1.2.5 Folder Subscription for Update option Bundle](ITI-111.html#231114125-folder-subscription-for-update-option-bundle)
"""

* name = "IHE_DSUBm_ResourceNotificationPublisher_Folder_Upd"
* title = "IHE DSUBm ResourceNotificationPublisher Folder Upd"
* status = #active
* experimental = false
* date = "2023-10-27"
* kind = #requirements
* fhirVersion = #4.0.1
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
