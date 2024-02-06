Instance: DSUBm-SubscriptionTopic-Folder-Subscription-MinUpdateOpt
InstanceOf: Basic
Usage: #example
Title:       "SubscriptionTopic for Folder Patient-Dependent resource with Folder Subscription for Minimal Update Option"
Description:  "Profile for the resource SubscriptionTopic. The resource describe the topic of a creation of a Folder type List Resource, the update to insert or remove documents in the Folder and the update of the status. 
This topic shall be used in all Folder subscriptions that have a specific patient in the criteria element.
Note that:
- the trigger for this topic shall be the resourceTrigger (so the eventTrigger shall not be used)
- the resourceTrigger.resource element shall be a Folder type List resource
- this resource shall be used when the \"Folder Subscription for Minimal Update Option\" is supported
- the events are the creation of a Folder type List Resource, the update to insert or remove documents in the Folder and the update of the status
"


* meta.versionId = "2"

* extension[0].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.url"
* extension[=].valueUri = "https://profiles.ihe.net/ITI/DSUBm/SubscriptionTopic/DSUBm-SubscriptionTopic-Folder-Subscription-MinUpdateOpt"

* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.title"
* extension[=].valueString = "SubscriptionTopic for Folder Subscription for Minimal Update Option"

* extension[+].url = Canonical(BackportResourceTrigger)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "A SubmissionSet type List resource is created resource"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.Folder"
* extension[=].extension[+].url = "supportedInteraction"
* extension[=].extension[=].valueCode = #create
* extension[=].extension[+].url = "fhirPathCriteria"
* extension[=].extension[=].valueString = "%current.code.coding.where(system='https://profiles.ihe.net/ITI/MHD/CodeSystem/MHDlistTypes').code='folder' "

* extension[=].extension[+].url = "supportedInteraction"
* extension[=].extension[=].valueCode = #update
* extension[=].extension[+].url = "fhirPathCriteria"
* extension[=].extension[=].valueString = "%current.code.coding.where(system='https://profiles.ihe.net/ITI/MHD/CodeSystem/MHDlistTypes').code='folder'"

* extension[+].url = Canonical(BackportCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the code of a Folder List Resource. (Fixed Value: folder)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "Folder"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "code"

* extension[+].url = Canonical(BackportCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the patient of a Folder List Resource. (Folder.patientId)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "Folder"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "patient"

* extension[+].url = Canonical(BackportCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the patient of a Folder List Resource. (Folder.patientId)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "Folder"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "patient.identifier"

* extension[+].url = Canonical(BackportCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the identifier of a Folder List Resource. (Folder.entryUUID and Folder.uniqueId)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "Folder"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "identifier"

* extension[+].url = Canonical(BackportCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the designationType of a Folder List Resource. (Folder.codeList)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "Folder"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "designationType"

* extension[+].url = Canonical(BackportCanFilterBy)
* extension[=].extension[0].url = "description"
* extension[=].extension[=].valueMarkdown = "Filter based on the status of a Folder List Resource. (Folder.availabilityStatus)"
* extension[=].extension[+].url = "resource"
* extension[=].extension[=].valueUri = "Folder"
* extension[=].extension[+].url = "filterParameter"
* extension[=].extension[=].valueString = "status"

* extension[+].url = Canonical(BackportNotificationShape)
* extension[=].extension[0].url = "resource"
* extension[=].extension[=].valueUri = "Folder"

* modifierExtension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-SubscriptionTopic.status"
* modifierExtension[=].valueCode = #active

* code =  DSUBmFhirType#SubscriptionTopic
