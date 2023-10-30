
## Significant Changes

This is the first publication of the DSUBm Profile.

## Issues

### Submit an Issue

IHE welcomes [New Issues](https://github.com/IHE/ITI.DSUBm/issues/new/choose) from the GitHub community. 
For those without GitHub access, issues may be submitted to the [Public Comment form](https://www.ihe.net/resources/public_comment/).

As issues are submitted they will be managed on the [DSUBm GitHub Issues](https://github.com/IHE/ITI.DSUBm/issues), where discussion and workarounds may be found. These issues, when critical, will be processed using the normal [IHE Change Proposal](https://wiki.ihe.net/index.php/Category:CPs) management and balloting. 
It is important to note that as soon as a Change Proposal is approved, it carries the same weight as a published Implementation Guide (i.e., it is testable at an [IHE Connectathon](https://www.ihe.net/participate/connectathon/) from the time it is approved, even if it will not be integrated until several months later).


### Open Issues

* **[DSUBm_001](https://github.com/IHE/ITI.DSUBm/issues/9)**: This Profile define a Subscriptione framework using R4B version of FHIR, in order to improve the subscription functional from the R4 version. Are there any compelling arguments to use R4 version of FHIR?

* **[DSUBm_002](https://github.com/IHE/ITI.DSUBm/issues/10)**: The AuditEvents for each transaction are not yet profiled bacause the IG publisher, at the moment, does not allow to further constrain a Profile coming from a different FHIR version of the IG.

* **[DSUBm_003](https://github.com/IHE/ITI.DSUBm/issues/11)**: The DUSBm profile proposed a changes to the [DSUB](https://profiles.ihe.net/ITI/TF/Volume1/ch-26.html) profile in order to extend DSUB with a RESTfull search functionality of the subscriptions. It is present [here](other.html#changes-to-other-documents) the proposed changes. Is this functionality something usefull to extend DSUB or the proposed change is too challenging? 

* **[DSUBm_004](https://github.com/IHE/ITI.DSUBm/issues/12)**: For the [Resource Notify [ITI-112]](ITI-112.html) transaction the DSUBm profiles the expexted action for the Resource Notification Broker in order to define a common way to manage errors and connection problems that may occur for all the different type of notifications. Considering the various infrastructure capabilities with which the subscription framework could be implemented, should the expected action be revised? Is it appropriate to define the number of attempts after the first error for the [Heartbeat Notification Message](ITI-112.html#231126-heartbeat-notification-message) and the [Event Notification Message](ITI-112.html#231127-event-notification-message)? Are there other points to focus on?

* **[DSUBm_005](https://github.com/IHE/ITI.DSUBm/issues/13)**: The [Resource Subscription Search [ITI-113]](ITI-113.html) define the $events operation that permits to retrieve from the Resource Notification Broker the events associated to a Subscription. This operation could be use to retrive puntually the missed event when, for example, a connection problem occur and the Resource Notification Recipient does note recieve the notification. But, this operation requires the Resource Notification Broker to be capable of mantain previous events associated with the Subscriptions. Should the supporting of this operation be required for the Resource Notification Broker or should be mantain optional?

* **[DSUBm_006](https://github.com/IHE/ITI.DSUBm/issues/14)**: The QA Report presents some errors about: 
- ValueSet derived from MHD
- invariant 'dom-3' that differs between the R4 and R4B
- "The link 'csv.zip' for "csv" cannot be resolved"
These errors still remain and may be connected to the IG publisher. These issues are in the process of being resolved.

* **[DSUBm_007](https://github.com/IHE/ITI.DSUBm/issues/15)**: The DSUBm profile propose notifications in a push mechanism. The [Extensions to the Document Metadata Subscription (DSUB)](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_DSUB_Extensions.pdf)
profile also include a pull modality for the notification. Should also the DSUBm profile include a Pull Notification mechanism or is it sufficient to search (e.g using [Find Document Lists [ITI-66]](https://profiles.ihe.net/ITI/MHD/ITI-66.html) or [Find Document References [ITI-67]](https://profiles.ihe.net/ITI/MHD/ITI-67.html) transactions) on the resources combining query parameters and proper interval of time? At the moment no specific request have been already submitted for this implementation. If the pull notification is needed and a real use case is provided, it is possible to send change proposal during the public comment period. We propose here a possible way to utilize a pure Pull Notification modality using the $events operation of the [Resource Subscription Search [ITI-113]](ITI-113.html) transaction. A possible use case is represented below:

    Ms. Smith is a doctor that, during the patient visit, uses a mobile app in order to see the exam reports produced for the patient that is currentrly visiting. When the doctor switches the context to the currently visited patient, the app retrieves the notification regarding the new documents that were produced since the last time the app was used for that specific patient.
    During the first visit, Dr. Smith subscribes for documents prodcued for Mr. Jones. 
    Before the second visit some medical reports has been produced for Mr. Jones.
    When Mr. Jones shows up for the second visit the app, used by Dr. Smith, will retrieve the notification that were produced between the end of the last visit done for Mr. Jones and the start of the current visit. Dr.Smith, based on the notification retrieved by the app will  to retrieve only some of the documents that  

    **Document Subscription with pull notification for Mobile Device in MHDS Environment Process Flow**

    <figure>
    {%include usecase7-processflow.svg%}
    <figcaption><b>Document Subscription with pull notification for Mobile Device in MHDS Environment</b></figcaption>
    </figure>
    <br clear="all">

    **Pre-conditions**:

    The assumption is that the visit app is working in a MHDS Environment. In the central infrastructure, the MHDS Registry is grouped by the Resource Notification Publisher and Resource Notification Broker. The Resource Notification Broker is  supporting the Pull notification and is grouped with a Resource Notification Recipient. 

    **Main Flow**:

    1. The visit app during the first visit performs a patient-dependent subscription in order to subscribe for the documents produced for the new patient ([ITI-110] Resource Subscription). In the subscription a local endpoint is indicated in order to explicit that the notification are going to be retrieved with pull modality. 
    2. After the first visit a medical report has been produced ([ITI-65] Provide Document Bundle).
    3. The Resource Notification Publisher deliver a publication event to the Resource Notification Broker([ITI-111] Resource Publish). 
    4. The Resource Notification Broker seeing that the publication event is matching the criteria subscription expressed in the first step, and, recognizing that a local endpoint has been used in the subscription produce a notification towards the grouped Resource Notification Recipient ([ITI-112] Resource Notify). 
    5. At the start of the second visit, when Dr.smith choose Mr. Jones on the Visit app the app will retrieve any notification produced and stashed in the Broker([ITI-113] Resource Subscription Search) using the `$events` operation.
    6. The Visit App will retrieve the Document described in the notification. ([ITI-68] Retrieve Document). 

### Closed Issues

None.