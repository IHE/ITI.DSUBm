Instance:    ex-ResourcePublish 
InstanceOf:  ResourcePublishBundle
Usage:       #example
Title:       "Resource Publish Bundle"
Description: "Example of an Bundle used for a publish event genreated from the update of a DocumenReference"
* type = #transaction

* entry[SubmissionSet].fullUrl = "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00111100001"
* entry[SubmissionSet].resource = ex-minimalSubmissionSet
* entry[SubmissionSet].request.url = "List" 
* entry[SubmissionSet].request.method = #POST

* entry[DocumentRefs].fullUrl = "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00111100002"
* entry[DocumentRefs].resource = ex-DocumentReferenceMinimal
* entry[DocumentRefs].request.url = "DocumentReference" 
* entry[DocumentRefs].request.method = #PUT 

* entry[Patient].fullUrl = "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00111100004"
* entry[Patient].resource = ex-patient
* entry[Patient].request.url = "Patient" 
* entry[Patient].request.method = #POST
