
## Significant Changes

Significant Changes From Previous Version:

- Passes from R4B to R4 version of FHIR
- Profiling the SubscriptionTopic as Basic resource
- Profiling the SubscriptionStatus as Parameter resource
- Eliminated the duplication of MHD artifacts
- Profiled AuditEvent for the transactions
- Closed some Open Issues

## Issues

### Submit an Issue

IHE welcomes [New Issues](https://github.com/IHE/ITI.DSUBm/issues/new/choose) from the GitHub community. 
For those without GitHub access, issues MAY be submitted to the [Public Comment form](https://www.ihe.net/ITI_Public_Comments/).

As issues are submitted they will be managed at [DSUBm GitHub Issues](https://github.com/IHE/ITI.DSUBm/issues), where discussion and workarounds MAY be found. These issues, when critical, will be processed using the normal [IHE Change Proposal](https://wiki.ihe.net/index.php/Category:CPs) management and balloting. 
It is important to note that as soon as a Change Proposal is approved, it carries the same weight as a published Implementation Guide (i.e., it is testable at an [IHE Connectathon](https://www.ihe.net/participate/connectathon/) from the time it is approved, even if it will not be integrated until several months later).


### Open Issues

- **[DSUBm_003](https://github.com/IHE/ITI.DSUBm/issues/11)**: The DUSBm Profile proposed changes to the [DSUB](https://profiles.ihe.net/ITI/TF/Volume1/ch-26.html) Profile in order to extend DSUB with a RESTfull search functionality of the subscriptions. See [here](other.html) for the proposed changes. Is this functionality something useful to extend DSUB or are the proposed changes too challenging?

- **[DSUBm_005](https://github.com/IHE/ITI.DSUBm/issues/13)**: The [Resource Subscription Search [ITI-113]](ITI-113.html) define the $events operation that permits to retrieve from the Resource Notification Broker the events associated to a Subscription. This operation could be use to retrieve punctually the missed event when, for example, a connection problem occur and the Resource Notification Recipient does note receive the notification. But, this operation requires the Resource Notification Broker to be capable of maintain previous events associated with the Subscriptions. Should the supporting of this operation be required for the Resource Notification Broker or should be maintain optional?

- **[DSUBm_007](https://github.com/IHE/ITI.DSUBm/issues/15)**: The DSUBm Profile proposes notifications in a push mechanism. The [Extensions to the Document Metadata Subscription (DSUB)](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_DSUB_Extensions.pdf)
Profile also include a pull modality for the notification. SHOULD also the DSUBm Profile include a Pull Notification mechanism or is it sufficient to search (e.g using [Find Document Lists [ITI-66]](https://profiles.ihe.net/ITI/MHD/ITI-66.html) or [Find Document References [ITI-67]](https://profiles.ihe.net/ITI/MHD/ITI-67.html) transactions) on the resources combining query parameters and proper interval of time? At the moment no specific request have been already submitted for this implementation. If the pull notification is needed and a real use case is provided, it is possible to send change proposal during the public comment period. We propose here a possible way to utilize a pure Pull Notification modality using the $events operation of the [Resource Subscription Search [ITI-113]](ITI-113.html) transaction. A possible use case is represented below:

    Ms. Smith is a doctor that, during the patient visit, uses a mobile app in order to see the exam reports produced for the current patient. When the doctor switches the context to the current patient, the app retrieves the notification regarding the new documents that were produced since the last time the app was used for that specific patient.
    During the first visit, Dr. Smith subscribes for documents produced for Mr. Jones. 
    Before the second visit, some medical reports has been produced for Mr. Jones.
    When Mr. Jones shows up for the second visit, the app, used by Dr. Smith, will retrieve the notifications that were produced between the end of the last visit for Mr. Jones and the start of the current visit. Dr. Smith, based on the notifications retrieved by the app, will retrieve only some of the documents.  

    **Document Subscription with pull notification for Mobile Device in MHDS Environment Process Flow**

    <figure>
    {%include usecase7-processflow.svg%}
    <figcaption><b>Document Subscription with pull notification for Mobile Device in MHDS Environment</b></figcaption>
    </figure>
    <br clear="all">

    **Pre-conditions**:

    The assumption is that the visit app is working in a MHDS Environment. In the central infrastructure, the MHDS Registry is grouped by the Resource Notification Publisher and Resource Notification Broker. The Resource Notification Broker is supporting the Pull notification and is grouped with a Resource Notification Recipient. 

    **Main Flow**:

    1. The visit app during the first visit performs a patient-dependent subscription in order to subscribe for the documents produced for the new patient ([ITI-110] Resource Subscription). In the subscription a local endpoint is indicated in order to explicit that the notification are going to be retrieved with pull modality. 
    2. After the first visit a medical report has been produced ([ITI-65] Provide Document Bundle).
    3. The Resource Notification Publisher deliver a publication event to the Resource Notification Broker([ITI-111] Resource Publish). 
    4. The Resource Notification Broker seeing that the publication event is matching the criteria subscription expressed in the first step, and, recognizing that a local endpoint has been used in the subscription produce a notification towards the grouped Resource Notification Recipient ([ITI-112] Resource Notify). 
    5. At the start of the second visit, when Dr.smith choose Mr. Jones on the Visit app the app will retrieve any notification produced and stashed in the Broker([ITI-113] Resource Subscription Search) using the `$events` operation.
    6. The Visit App will retrieve the Document described in the notification. ([ITI-68] Retrieve Document). 


### Closed Issues
- **[DSUBm_001](https://github.com/IHE/ITI.DSUBm/issues/9)**: This profile defines a Subscription framework using R4B version of FHIR, in order to improve the subscription functional from the R4 version. Are there any compelling arguments to use R4 version of FHIR?

DECISION: based on discussions and survey on FHIR version, decided to switch to R4 version.

- **[DSUBm_002](https://github.com/IHE/ITI.DSUBm/issues/10)**: The AuditEvents for each transaction are not yet profiled because the IG publisher, at the moment, does not allow to further constrain a profile coming from a different FHIR version of the IG.

DECISION: switched from R4B to R4 and proceeded to profile AuditEvent.

- **[DSUBm_004](https://github.com/IHE/ITI.DSUBm/issues/12)**: For the [Resource Notify [ITI-112]](ITI-112.html) transaction the DSUBm defines the expected action for the Resource Notification Broker in order to define a common way to manage errors and connection problems that MAY occur for all the different type of notifications. Considering the various infrastructure capabilities with which the subscription framework could be implemented, SHOULD the expected action be revised? Is it appropriate to define the number of attempts after the first error for the [Heartbeat Notification Message](ITI-112.html#2311243-heartbeat-notification-request-message) and the [Event Notification Message](ITI-112.html#2311245-event-notification-request-message)? Are there other points to focus on?

DECISION: based on discussions and comments on github, decided that it is not necessary to specify further considerations.

- **[DSUBm_006](https://github.com/IHE/ITI.DSUBm/issues/14)**: If the following resource are directly used (with dependency) from MHD profiles: 

    - Minimal DocumentReference 
    - Minimal SubmissionSet
    - Minimal Folder
      
    there are the following errors in the QA report : 
        
        - The reference http://hl7.org/fhir/ValueSet/identifier-use|4.0.1 could not be resolved
        - The reference http://hl7.org/fhir/ValueSet/list-status|4.0.1 could not be resolved
        - The reference http://hl7.org/fhir/ValueSet/list-mode|4.0.1 could not be resolved
        - The reference http://hl7.org/fhir/ValueSet/c80-doc-typecodes could not be resolved
        - The reference http://hl7.org/fhir/ValueSet/document-classcodes could not be resolved
        - The reference http://hl7.org/fhir/ValueSet/document-relationship-type|4.0.1 could not be resolved
        - The constraint 'dom-3' has an expression 'contained.where((('#'+id in (%resource.descendants().reference &#124; %resource.descendants().as(canonical) &#124; %resource.descendants().as(uri) &#124; %resource.descendants().as(url))) or descendants().where(reference = '#').exists() or descendants().where(as(canonical) = '#').exists() or descendants().where(as(canonical) = '#').exists()).not()).trace('unmatched', id).empty()', which differs from the earlier expression provided of 'contained.where(((id.exists() and ('#'+id in (%resource.descendants().reference &#124; %resource.descendants().as(canonical) &#124; %resource.descendants().as(uri) &#124; %resource.descendants().as(url)))) or descendants().where(reference = '#').exists() or descendants().where(as(canonical) = '#').exists() or descendants().where(as(uri) = '#').exists()).not()).trace('unmatched', id).empty()' (invariants are allowed to repeat, but cannot differ)

    The TEMPORARY SOLUTION for now is to replicate some MHD content that is used in DSUBm in R4B. (files in folder "DSUBm_DocumentRelatedResources")

DECISION: switched from R4B to R4, not needed anymore.    