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
Description: "SHALL have at least one canfilterBy for DocumentReference with filterParameter = 'patient' "
Expression: "canFilterBy.where(resource='DocumentReference' or resource='Folder').select(filterParameter = 'patient').anyTrue()"


Invariant: DSUBm-PatientDependentRule-Subscription
Severity: #error
Description: "the PatientDependent Subscription SHALL include the patient in the criteria.extension.valueString element."
Expression: "value.contains('patient=')"

Invariant: DSUBm-MultiPatientRule-Subscription
Severity: #error
Description: "the MultiPatient Subscription shall NOT include the patient in the criteria.extension.valueString element."
Expression: "value.contains('patient=').not()"