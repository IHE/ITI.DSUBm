//Basic
Instance: ex-DocumentReference-PatientDependent-Subscription 
InstanceOf: DSUBm_DocumentReference_PatientDependent_Subscription
Usage: #example
Title:       "DocumentReference PatientDependent Subscription"
Description: "R4 Example of a requested Subscription for PatientDependent 'DocumentReference' resource"
* status = #requested
* end = "2023-12-31T12:00:00+00:00"
* reason = "DocumentReference Subscription for Patient/ex-patient and typeCode=57832-8"
* criteria.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-filter-criteria"
* criteria.extension.valueString = "DocumentReference?patient=Patient/ex-patient&type=57832-8"
* channel.endpoint = "https://subscriptions.argo.run/fhir/r4/subscription-hook-df"
* channel.payload = #application/fhir+json
* channel.payload.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-payload-content"
* channel.payload.extension.valueCode = #full-resource


Instance: ex-DocumentReference-MultiPatient-Subscription 
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


Instance: ex-SubmissionSet-PatientDependent-Subscription 
InstanceOf: DSUBm_SubmissionSet_PatientDependent_Subscription
Usage: #example
Title:       "SubmissionSet PatientDependent Subscription"
Description: "R4 Example of a Subscription for PatientDepent 'SubmissionSet' resource in active status"
* status = #active
* reason = "SubmissionSet Subscription for Patient=12345"
* criteria.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-filter-criteria"
* criteria.extension.valueString = "List?code=submissionset&patient=Patient/12345"
* channel.endpoint = "https://subscriptions.argo.run/fhir/r4/subscription-hook-ss"
* channel.payload = #application/fhir+xml
* channel.payload.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-payload-content"
* channel.payload.extension.valueCode = #id-only

Instance: ex-SubmissionSet-MultiPatient-Subscription 
InstanceOf: DSUBm_SubmissionSet_MultiPatient_Subscription
Usage: #example
Title:       "SubmissionSet MultiPatient Subscription"
Description: "R4 Example of a Subscription for MultiPatient 'SubmissionSet' resource in active status"
* status = #active
* reason = "SubmissionSet Subscription for all the submission actuated by Practitioner with id=0935627"
* criteria.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-filter-criteria"
* criteria.extension.valueString = "List?code=submissionset&sourceId=0935627"
* channel.endpoint = "https://subscriptions.argo.run/fhir/r4/subscription-ss"
* channel.payload = #application/fhir+xml
* channel.payload.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-payload-content"
* channel.payload.extension.valueCode = #id-only

// Minimal Update Option DocRef

Instance: ex-DocumentReference-PatientDependent-Subscription-MinUpdt
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


Instance: ex-DocumentReference-MultiPatient-Subscription-MinUpdt
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

Instance: ex-DocumentReference-PatientDependent-Subscription-AllEvents
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


Instance: ex-DocumentReference-MultiPatient-Subscription-AllEvents
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

Instance: ex-Folder-Basic-Subscrption
InstanceOf: DSUBm_Basic_Folder_Subscription
Usage: #example
Title:       "Folder Subscription for basic events"
Description: "R4 Example of a Subscription 'Foder' resource for basc events"
* status = #active
* reason = "Folder Subscription for Patient=765543"
* criteria.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-filter-criteria"
* criteria.extension.valueString = "List?code=folder&patient=Patient.identifier=765543"
* channel.endpoint = "https://subscriptions.exmpl.com/fhir/r4/subscription-df"
* channel.payload = #application/fhir+xml
* channel.payload.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-payload-content"
* channel.payload.extension.valueCode = #full-resource

// Minimal Update Opt Folder

Instance: ex-Folder-MinUpdtOpt-Subscrption
InstanceOf: DSUBm_Folder_Subscription_MinUpdateOpt
Usage: #example
Title:       "Folder Subscription for Minimal Update Option events"
Description: "R4 Example of a Subscription 'Foder' resource for basic events"
* status = #requested
* reason = "Folder Subscription for Patient=765543"
* criteria.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-filter-criteria"
* criteria.extension.valueString = "List?code=folder&patient=Patient.identifier=765543"
* channel.endpoint = "https://subscriptions.exmpl.com/fhir/r4/subscription-df"
* channel.payload = #application/fhir+json
* channel.payload.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-payload-content"
* channel.payload.extension.valueCode = #full-resource

// Update Opt Folder

Instance: ex-Folder-UpdtOpt-Subscrption
InstanceOf: DSUBm_Folder_Subscription_UpdateOpt
Usage: #example
Title:       "Folder Subscription for Update Option events"
Description: "R4 Example of a Subscription 'Foder' resource for update events in status off after deactivation"
* status = #off
* reason = "Folder Subscription for Patient=765543"
* criteria.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-filter-criteria"
* criteria.extension.valueString = "List?code=folder&patient=Patient.identifier=765543"
* channel.endpoint = "https://subscriptions.exmpl.com/fhir/r4/subscription-df"
* channel.payload = #application/fhir+json
* channel.payload.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-payload-content"
* channel.payload.extension.valueCode = #empty

// Full Update Opt Folder

Instance: ex-Folder-FullUpdtOpt-Subscrption
InstanceOf: DSUBm-Folder-Subscription-for-Full-Events
Usage: #example
Title:       "Folder Subscription for Full Update Option events"
Description: "R4 Example of a Subscription 'Foder' resource for full update events in status error after connection problem"
* status = #error
* reason = "Folder Subscription for Patient=765543"
* criteria.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-filter-criteria"
* criteria.extension.valueString = "List?code=folder&patient=Patient.identifier=765543"
* channel.endpoint = "https://subscriptions.exmpl.com/fhir/r4/subscription-df"
* channel.payload = #application/fhir+xml
* channel.payload.extension.url = "http://hl7.org/fhir/uv/subscriptions-backport/StructureDefinition/backport-payload-content"
* channel.payload.extension.valueCode = #empty