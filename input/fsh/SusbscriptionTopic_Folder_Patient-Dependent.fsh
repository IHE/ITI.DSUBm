Profile: DSUBm_SubscriptionTopic_Folder_PatientDependent
Parent: SubscriptionTopic
Id: DSUBm-Folder-SubscriptionTopic
Title:       "Folder PatientDependent SubscriptionTopic"
Description:  "Resource SubscriptionTopic for DSUBm profile for Folder Patient Dependent 
- the element resourceTrigger.resource shall be a Folder resource
- the element canFilterBy shall have Folder.patient as search parameter
"
* obeys DSUBm-trigger
* obeys DSUBm-PatientDependentRule
* resourceTrigger.resource = Canonical(FolderR4b)
* resourceTrigger.fhirPathCriteria 0..0
* eventTrigger 0..0
// at least one canfilterBy for the patient
* canFilterBy 1..*
* canFilterBy.resource = "Folder"
