//Basic
Instance: DocumentReference-PatientDependent-Subscription 
InstanceOf: DSUBm_DocumentReference_PatientDependent_Subscription
Usage: #example
Title:       "DocumentReference PatientDependent Subscription"
Description: "R4 Example of a requested Subscription for PatientDependent 'DocumentReference' resource"
* status = #requested
* end = "2023-12-31T12:00:00+00:00"
* reason = "DocumentReference Subscription for Patient/12345 and typeCode=57832-8"
* criteria.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-filter-criteria"
* criteria.extension.valueString = "DocumentReference?patient=Patient/12345&type=57832-8"
* channel.endpoint = "https://subscriptions.argo.run/fhir/r4/subscription-hook-df"
* channel.payload = #application/fhir+json
* channel.payload.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-payload-content"
* channel.payload.extension.valueCode = #full-resource


Instance: DocumentReference-MultiPatient-Subscription 
InstanceOf: DSUBm_DocumentReference_MultiPatient_Subscription
Usage: #example
Title:       "DocumentReference MultiDependent Subscription"
Description: "R4 Example of a Subscription for Multi-Patient 'DocumentReference' resource in active status"
* status = #active
* reason = "DocumentReference Subscription for all typeCode=57832-8"
* criteria.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-filter-criteria"
* criteria.extension.valueString = "DocumentReference?type=57832-8"
* channel.endpoint = "https://subscriptions.argo.run/fhir/r4/subscription-hook-df"
* channel.payload = #application/fhir+xml
* channel.payload.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-payload-content"
* channel.payload.extension.valueCode = #id-only


Instance: SubmissionSet-PatientDependent-Subscription 
InstanceOf: DSUBm_SubmissionSet_PatientDependent_Subscription
Usage: #example
Title:       "SubmissionSet PatientDependent Subscription"
Description: "R4 Example of a Subscription for PatientDepent 'SubmissionSet' resource in active status"
* status = #active
* reason = "SubmissionSet Subscription for Patient=12345"
* criteria.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-filter-criteria"
* criteria.extension.valueString = "SubmissionSet?code=submissionset&patient=Patient/12345"
* channel.endpoint = "https://subscriptions.argo.run/fhir/r4/subscription-hook-ss"
* channel.payload = #application/fhir+xml
* channel.payload.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-payload-content"
* channel.payload.extension.valueCode = #id-only

Instance: SubmissionSet-MultiPatient-Subscription 
InstanceOf: DSUBm_SubmissionSet_MultiPatient_Subscription
Usage: #example
Title:       "SubmissionSet MultiPatient Subscription"
Description: "R4 Example of a Subscription for MultiPatient 'SubmissionSet' resource in active status"
* status = #active
* reason = "SubmissionSet Subscription for all the submission actuated by Practitioner with id=0935627"
* criteria.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-filter-criteria"
* criteria.extension.valueString = "SubmissionSet?code=submissionset&sourceId=0935627"
* channel.endpoint = "https://subscriptions.argo.run/fhir/r4/subscription-ss"
* channel.payload = #application/fhir+xml
* channel.payload.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-payload-content"
* channel.payload.extension.valueCode = #id-only

// Minimal Update Option DocRef

Instance: DocumentReference-PatientDependent-Subscription-MinUpdt
InstanceOf: DSUBm_DocumentReference_PatientDependent_Subscription_MinUpdate
Usage: #example
Title:       "DocumentReference PatientDependent Subscription for Minimal Update Opt"
Description: "R4 Example of a requested Subscription for PatientDependent 'DocumentReference' resource for Minimal Updat Opt in status error after connection issue"
* status = #error
* reason = "DocumentReference Subscription for Patient/12345 and typeCode=57832-8"
* criteria.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-filter-criteria"
* criteria.extension.valueString = "DocumentReference?patient=Patient/12345&type=57832-8"
* channel.endpoint = "https://subscriptions.argo.run/fhir/r4/subscription-hook-df"
* channel.payload = #application/fhir+json
* channel.payload.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-payload-content"
* channel.payload.extension.valueCode = #full-resource


Instance: DocumentReference-MultiPatient-Subscription-MinUpdt
InstanceOf: DSUBm_DocumentReference_MultiPatient_Subscription_MinUpdate
Usage: #example
Title:       "DocumentReference MultiDependent Subscription for Minimal Update Opt"
Description: "R4 Example of a Subscription for Multi-Patient 'DocumentReference' resource in active status for Minimal Update Opt"
* status = #active
* reason = "DocumentReference Subscription for all typeCode=43232-8"
* criteria.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-filter-criteria"
* criteria.extension.valueString = "DocumentReference?type=43232-8"
* channel.endpoint = "https://subscriptions.argo.run/fhir/r4/subscription-df"
* channel.payload = #application/fhir+xml
* channel.payload.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-payload-content"
* channel.payload.extension.valueCode = #id-only


// Full Update Option DocRef

Instance: DocumentReference-PatientDependent-Subscription-AllEvents
InstanceOf: DSUBm_DocumentReference_PatientDependent_Subscription_AllEvents
Usage: #example
Title:       "DocumentReference PatientDependent Subscription for All Events"
Description: "R4 Example of a requested Subscription for PatientDependent 'DocumentReference' resource for All Events"
* status = #requested
* reason = "DocumentReference Subscription for Patient=76543 and typeCode=57832-8"
* criteria.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-filter-criteria"
* criteria.extension.valueString = "DocumentReference?patient.identifier=76543&type=57832-8"
* channel.endpoint = "https://subscriptions.argo.run/fhir/r4/subscription-hook-df"
* channel.payload = #application/fhir+json
* channel.payload.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-payload-content"
* channel.payload.extension.valueCode = #full-resource


Instance: DocumentReference-MultiPatient-Subscription-AllEvents
InstanceOf: DSUBm_DocumentReference_MultiPatient_Subscription_AllEvents
Usage: #example
Title:       "DocumentReference MultiDependent Subscription for All Events"
Description: "R4 Example of a Subscription for Multi-Patient 'DocumentReference' resource in active status for All Events"
* status = #active
* reason = "DocumentReference Subscription for all documents in a specific facility"
* criteria.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-filter-criteria"
* criteria.extension.valueString = "DocumentReference?facility=Ward_93763"
* channel.endpoint = "https://subscriptions.argo.run/fhir/r4/subscription-df"
* channel.payload = #application/fhir+xml
* channel.payload.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-payload-content"
* channel.payload.extension.valueCode = #id-only

// Basic Folder


// Minimal Update Opt Folder


// Update Opt Folder


// Full Update Opt Folder