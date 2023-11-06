Instance: IHE.DSUBm.ResourceNotificationPublisher.Folder.FullEvents
InstanceOf: CapabilityStatement
Title: "DSUBm Resource Notification Publisher Actor implementing Folder Subscription for Full Events option"
Usage: #definition
* description = """
The DSUBm Resource Notification Publisher Actor CapabilityStatement requirements expresses the requirements that shall be provided when implementing Folder Subscription for Full Events option.

- Using FHIR R4B
- Shall support both json and xml encoding
- Should use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)
- Shall support the ITI-111 transaction for the basic trigger events
- Shall be able to support in the Resource Publish [ITI-111] transaction the triggers events defined in Section [2:3.111.5.1.6 Folder Subscription for Full Events option Trigger Events](ITI-111.html#23111516-folder-subscription-for-full-events-option-trigger-events) and to comunicate the stream of events to the Resource Notification Broker as defined in Section [2:3.111.5.2.6 Folder Subscription for Full Events option Bundle](ITI-111.html#23111526-folder-subscription-for-full-events-option-bundle)
"""

* name = "IHE_DSUBm_ResourceNotificationPublisher_Folder_FullEvents"
* title = "IHE DSUBm ResourceNotificationPublisher Folder FullEvents"
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
    * documentation = "https://profiles.ihe.net/ITI/DSUBm/StructureDefinition-IHE.DSUBm.ResourceBundle.html"  
