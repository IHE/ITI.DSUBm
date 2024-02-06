ValueSet:    DSUBmPayload
Id:          payload-content-value-set
Title:       "DSUBm payload admitted Value Set"
Description: "Codes to represent the admitted payload MIME type chosen when creating subscription"
* ^experimental = false
* include $Payload#application/fhir+json "JSON payload"
* include $Payload#application/fhir+xml "XML payload"

Invariant: DSUBm-trigger
Severity: #error
Description: "SHALL have a resourceTrigger and SHALL not have an eventTrigger"
Expression: "resourceTrigger.exists() and eventTrigger.exists().not()"
XPath: "exists(f:resourceTrigger) and exists(f:eventTrigger).not()"

Invariant: DSUBm-Multipatient
Severity: #error
Description: "the canFilterBy SHALL NOT use the patient as a filter "
Expression: "where(resource='DocumentReference').select(filterParameter = 'patient').allFalse()" 

Invariant: DSUBm-PatientDependentRule
Severity: #error
Description: "SHALL have at least one canfilterBy for DocumentReference with filterParameter = 'patient'"
Expression: "canFilterBy.where(resource='DocumentReference' or resource='Folder').select(filterParameter = 'patient').anyTrue()"

/*
Invariant: DSUBm-PatientDependentRule-Subscription
Severity: #error
Description: "the PatientDependent Subscription SHALL include the patient in the criteria.extension.valueString element."
Expression: "value.contains('patient=')"

Invariant: DSUBm-MultiPatientRule-Subscription
Severity: #error
Description: "the MultiPatient Subscription shall NOT include the patient in the criteria.extension.valueString element."
Expression: "value.contains('patient=').not()"
*/
Invariant: Folder-PatientDependent
Severity: #error
Description: "the Subscription for Folder shall include the resource LIST and the patient"
Expression: "value.contains('List?') and (value.contains('code=folder') or value.contains('code=https%3A%2F%2Fprofiles.ihe.net%2FITI%2FDSUBm%2FCodeSystem%2FDSUBmlistTypesR4%7Cfolder') ) and value.contains('patient')"

Invariant: SubmissionSet-PatientDependent
Severity: #error
Description: "the Subscription for SubmissionSet shall include the resource LIST and the patient"
Expression: "value.contains('List?') and (value.contains('code=submissionset') or value.contains('code=https%3A%2F%2Fprofiles.ihe.net%2FITI%2FDSUBm%2FCodeSystem%2FDSUBmlistTypesR4%7Csubmissionset') ) and value.contains('patient')"

Invariant: SubmissionSet-MultiPatient
Severity: #error
Description: "the Subscription for Folder shall include the resource LIST and no reference to the patient"
Expression: "value.contains('List?') and (value.contains('code=submissionset') or value.contains('code=https%3A%2F%2Fprofiles.ihe.net%2FITI%2FDSUBm%2FCodeSystem%2FDSUBmlistTypesR4%7Csubmissionset') ) and value.contains('patient').not()"

Invariant: DocumentReference-PatientDependent
Severity: #error
Description: "the Subscription for DocumentReference shall include the resource DocumentReference and the patient parameter"
Expression: "value.contains('DocumentReference?') and value.contains('patient')"

Invariant: DocumentReference-MultiPatient
Severity: #error
Description: "the Subscription for DocumentReference shall include the resource DocumentReference and no reference to the patient parameter"
Expression: "value.contains('DocumentReference?') and value.contains('patient').not()"