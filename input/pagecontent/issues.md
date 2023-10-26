
## Significant Changes

### Significant Changes from Revison 0.0.0 
- First Publication of the DSUBm Profile

## Issues

### Submit an Issue

### Open Issues

* **DSUBm_001**: This Profile intnded to use R4B version of FHIR in order to improve the subscription functional from the R4 version. Are there any issue to having a Subscription framework in R4B version?

* **DSUBm_002**: The AuditEvents for each transaction are not yet profiled bacause the IG publisher, at the moment, does not allow to further constrain a Profile coming from a different Fhir version of the IG.

* **DSUBm_003**: The DUSBm profile proposed a changes to the DSUB profile in order to extend DSUB with a RESTfull search functionality regarding the subscription. [There](other.html), is present the proposed changes. Is this functionality something usefull to extend DSUB or the proposed change is too challenging? 

* **DSUBm_007**: Should the DSUBm profile include a pure Pull Notification mechanism? No specific request have been submitted for this implementation. If needed it is possible to send change proposal during the public comment period. The possible way to actuate a pure Pull Notification is to use the $events operation of the Resource Subscription Search [ITI-113] transaction. A possible use case is represented below:

    Ms. Smith is a doctor that, during the patient visit, uses a mobile app in order to see the exam reports produced for the patient that is currentrly visiting. When the doctor switch the context to the currently visited patient M the app retrieve only the new documents that were produced since the last time the app was used for that specific patient.
    During the first visit Dr. Smith subscribe for documents prodcued for Mr. Jones. 
    Before the second visit a medical report has been produced for Mr. Jones. When Mr. Jones shows up for the second visit the app that Dr. Smith is using will retrieve the documents that were prodcued between the end of the last visit done for Mr. Jones and the start of teh current visit. 

    **Document Subscription with pull notification for Mobile Device in MHDS Environment Process Flow**

    <figure>
    {%include usecase7-processflow.svg%}
    <figcaption><b>1:54.4.2.7.2-1: Document Subscription with pull notification for Mobile Device in MHDS Environment</b></figcaption>
    </figure>
    <br clear="all">

    **Pre-conditions**:

    The assumption is that the visit app is working in a MHDS Environment. In the central infrastructure, the MHDS Registry is grouped by the Resource Notification Publisher and Resource Notification Broker. The Resource Notification Broker is  supporting the [Pull notification option](#Pull-notification) and is grouped with a Resource Notification Recipient. 

    **Main Flow**:

    1. The visit app during the first visit performs a patient-dependent subscription in order to subscribe for the documents produced for the new patient ([ITI-110] Resource Subscription). In the subscription a local endpoint is indicated in order to explicit that the notification are going to be retrieved with pull modality. 
    2. After the first visit a medical report has been produced ([ITI-65] Provide Document Bundle).
    3. The Resource Notification Publisher deliver a publication event to the Resource Notification Broker([ITI-111] Resource Publish). 
    4. The Resource Notification Broker seeing that the publication event is matching the criteria subscription expressed in the first step, and, recognizing that a local endpoint has been used in the subscription produce a notification towards the grouped Resource Notification Recipient ([ITI-112] Resource Notify). 
    5. At the start of the second visit, when Dr.smith choose Mr. Jones on the Visit app the app will retrieve any notification produced and stashed in the Broker([ITI-113] Resource Subscription Search) using the `$event` operation.
    6. The Visit App will retrieve the Document described in the notification. ([ITI-68] Retrieve Document). 

### Closed Issues

None.