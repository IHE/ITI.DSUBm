
# 1:XX DSUBm

IHE provides multiple profiles for mobile use (e.g. SVCM, MHD, MHDS, NPFS), defining a lot of mobile items (FHIR resource, documents, etc.) that can be shared, searched and retrieved with mobile devices, but doesn’t provide a common framework for subscribing those items.

For documents, IHE provides an excellent tool to search and retrieve them through RESTful capabilities (MHD) but doesn’t address the subscription from a mobile device although it’s possible through a nonmobile application ([DSUB](https://profiles.ihe.net/ITI/TF/Volume1/ch-26.html)).

This profile describes the use of document subscription and notification mechanisms for mobile applications. In a similar way to the DSUB profile, a subscription is made in order to receive a notification when a document publication event matches the metadata expressed in the subscription. This profile includes a model that can be applied in a RESTful-only environment or it can be coupled with different nonmobile profiles (eg. XDS.b, DSUB ).

## 1:XX.1 DSUBm Actors, Transactions, and Content Modules

<a name="actors-and-transactions"> </a>

This section defines the actors and transactions in this implementation guide.

* Actors

  - [Mobile Notification Broker](#broker)

  - [Mobile Notification Subscriber](#subscriber)

  - [Mobile Notification Publisher](#publisher)

  - [Mobile Notification Recipient](#recipient)  

* Transactions

  - [Mobile Subscription [ITI-Y1]](ITI-Y1.html)

  - [Mobile Publish [ITI-Y2]](ITI-Y2.html)

  - [Mobile Notify [ITI-Y3]](ITI-Y3.html)

  - [Mobile Subscription Search [ITI-Y4]](ITI-Y4.html)




Figure 1.XX.1-1 shows the actors directly involved in the DSUBm Profile and the relevant transactions between them.

<div>
{%include ActorsAndTransactions.svg%}
</div>
<br clear="all">

**Figure 1:XX.1-1: DSUBm Actor Diagram**

Table 1.XX.1-1 lists the transactions for each actor directly involved in the DSUBm Profile. To claim compliance with this profile, an actor shall support all required transactions (labeled “R”) and may support the optional transactions (labeled “O”).

**Table 1:XX.1-1: DSUBm Profile - Actors and Transactions**

|---------|---------------|------------------------|-----------------|-----------------------------------|
| **Actors**  | **Transactions**  | **Initiator or Responder** | **Optionality**                   | **Reference**  |
| Mobile Notification Broker     | Mobile Subscription [ITI-Y1]             | Responder    | R     | ITI TF-2: 3.Y1 |
|                                | Mobile Publish [ITI-Y2]               | Responder    | R     | ITI TF-2: 3.Y2 |
|                                | Mobile Notify [ITI-Y3]                   | Initiator    | R     | ITI TF-2: 3.Y3 |
|                                | Mobile Subscription Search [ITI-Y4]      | Responder    | O (Note 1) | ITI TF-2: 3.Y4 |
| Mobile Notification Subscriber | Mobile Subscription [ITI-Y1]             | Initiator    | R     | ITI TF-2: 3.Y1 |
|                                | Mobile Subscription Search [ITI-Y4]      | Initiator    | O (Note 2) | ITI TF-2: 3.Y4 |
| Mobile Notification Publisher  | Mobile Publish [ITI-Y2]               | Initiator    | R     | ITI TF-2: 3.Y2 |
| Mobile Notification Recipient  | Mobile Notify [ITI-Y3]                   | Responder    | R     | ITI TF-2: 3.Y3 |
{: .grid}

*Note 1: Transaction Mobile Subscription Search [ITI-Y4] is required if Actor Mobile Notification Broker supports the "Subscription Search Option", see Section XX.2.1 Subscription Search.*

*Note 2: Transaction Mobile Subscription Search [ITI-Y4] is required if Actor Mobile Notification Subscriber supports the "Subscription Search Option", see Section XX.2.1 Subscription Search.*

### 1:XX.1.1 Actors
The actors in this profile are described in more detail in the following sections.

#### 1:XX.1.1.1 Mobile Notification Broker

<a name="broker"> </a>

The Mobile Notification Broker is the receiver of the Mobile Subscription transaction containing a subscription request, or a subscription cancellation. It keeps track of all subscriptions it receives, including the time limits of subscriptions. Based on the subscription criteria, this actor sends notifications to interested subscribers. This actor may optionally receive Mobile Publish transactions representing the stream of events against which the existing subscriptions are matched.

FHIR Capability Statement for [broker](CapabilityStatement-IHE.ToDo.client.html)

#### 1:XX.1.1.2 Mobile Notification Subscriber

<a name="subscriber"> </a>

The Mobile Notification Subscriber initiates and terminates subscriptions on behalf of a Mobile Notification Recipient. It also can send a Mobile Subscription Search transaction to the Mobile Notification Broker for existing subscription research.

FHIR Capability Statement for [subscriber](CapabilityStatement-IHE.ToDo.server.html)

#### 1:XX.1.1.3 Mobile Notification Publisher

<a name="publisher"> </a>

The Mobile Notification Publisher sends a Mobile Publish transaction to the Mobile Notification Broker when an event occurs for which a subscription may exist. Note that this profile does not specify how the Mobile Notification Publisher becomes aware of those events.

FHIR Capability Statement for [publisher](CapabilityStatement-IHE.ToDo.server.html)

#### 1:XX.1.1.4 Mobile Notification Recipient

<a name="recipient"> </a>

The Mobile Notification Recipient receives the notification about an event when the subscription filters specified for this Document Mobile Notification Recipient are satisfied.

FHIR Capability Statement for [recipient](CapabilityStatement-IHE.ToDo.server.html)


### 1:XX.1.2 Transaction Descriptions
The transactions in this profile are summarized in the sections below.

#### 1:XX.1.2.1 Mobile Subscription [ITI-Y1]

This transaction is used for a subscription request, by using a particular set of filters, or for a subscription deletion. 

For more details see the detailed [transaction description](domain-YY.html)

#### 1:XX.1.2.2 Mobile Publish [ITI-Y2]

This transaction delivers information from the Mobile Notification Publisher to the Mobile Notification Broker about an event that may have a subscription.

For more details see the detailed [transaction description](domain-YY.html)

#### 1:XX.1.2.3 Mobile Notify [ITI-Y3]

This transaction is used for sending notifications to a Mobile Notification recipient.

For more details see the detailed [transaction description](domain-YY.html)

#### 1:XX.1.2.4 Mobile Subscription Search [ITI-Y4]

This transaction is used for existing subscription research.

For more details see the detailed [transaction description](domain-YY.html)


## 1:XX.2 Actor Options

<a name="actor-options"> </a>

Options that may be selected for each actor in this implementation guide, are listed in Table 3.2-1 below. Dependencies 
between options when applicable are specified in notes.

| **Actors** | **Option Name** | **Vol. & Section** |
|---------|-------------|-------------|
| Mobile Notification Broker | Subscription Search | ITI TF-1: XX.2.1 |
| Mobile Notification Subscriber | Subscription Search | ITI TF-1: XX.2.1 |
| Mobile Notification Publisher | none |--|
| Mobile Notification Recipient | none |--|
{: .grid}

#### 1:XX.2.1 Subscription Search

The Mobile Notification Subscriber that supports this option shall implement the Mobile Subscription Search [ITI-Y4] transaction.

The Mobile Notification Broker that supports this option shall accept and process the Mobile Subscription Search [ITI-Y4] transaction.

## 1:XX.3 Required Actor Groupings

<a name="required-groupings"> </a>

An actor from this profile (Column 1) shall implement all of the
required transactions and/or content modules in this profile ***in
addition to*** ***<u>all</u>*** of the requirements for the grouped
actor (Column 2) 

<table border="1" borderspacing="0" style='border: 1px solid black; border-collapse: collapse'>
<thead>
<tr class="header">
<th>DSUBm Actor</th>
<th>Actor(s) to be grouped with</th>
<th>Reference</th>
</tr>
</thead>
<tbody>

<tr class="odd">
<td>Mobile Notification Broker</td>
    <td><p><em>ATNA / Secure Node or Secure Application</em></p></td>
    <td>
    <a href="https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html#9.1">ITI TF-1: 9.1</a></td>
</tr>
<tr class="even">
    <td></td>
    <td><em>CT / Time Client</em></td>
    <td>
    <a href="https://profiles.ihe.net/ITI/TF/Volume1/ch-7.html#7.1">ITI TF-1: 7.1</a>
    </td>
</tr>

<tr class="odd">
<td>Mobile Notification Subscriber</td>
    <td><p><em>ATNA / Secure Node or Secure Application</em></p></td>
    <td>
    <a href="https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html#9.1">ITI TF-1: 9.1</a></td>
</tr>
<tr class="even">
    <td></td>
    <td><em>CT / Time Client</em></td>
    <td>
    <a href="https://profiles.ihe.net/ITI/TF/Volume1/ch-7.html#7.1">ITI TF-1: 7.1</a>
    </td>
</tr>

<tr class="odd">
<td>Mobile Notification Publisher</td>
<td><p><em>ATNA / Secure Node or Secure Application</em></p></td>
    <td>
    <a href="https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html#9.1">ITI TF-1: 9.1</a></td>
</tr>
<tr class="even">
    <td></td>
    <td><em>CT / Time Client</em></td>
    <td>
    <a href="https://profiles.ihe.net/ITI/TF/Volume1/ch-7.html#7.1">ITI TF-1: 7.1</a>
    </td>
</tr>

<tr class="odd">
<td>Mobile Notification Recipient</td>
<td><p><em>ATNA / Secure Node or Secure Application</em></p></td>
    <td>
    <a href="https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html#9.1">ITI TF-1: 9.1</a></td>
</tr>
<tr class="even">
    <td></td>
    <td><em>CT / Time Client</em></td>
    <td>
    <a href="https://profiles.ihe.net/ITI/TF/Volume1/ch-7.html#7.1">ITI TF-1: 7.1</a>
    </td>
</tr>
</tbody>
</table>


## 1:XX.4 DSUBm Overview

<a name="overview"> </a>

This section shows how the transactions/content modules of the profile are combined to address the use cases. 

### 1:XX.4.1 Concepts

The DSUBm profile enables mobile subscription for documents.
The subscription mechanism is very flexible and can be adapted to many use cases depending on the type of subscription used and the environment in which DSUBm is implemented.  
In the following use cases are presented different subscription types, such as patient-dependent subscription, patient independent subscription, Folder subscription and other types. 
The use cases cover both a fully mobile environment (MHDS) and an environment in which the main infrastructure is XDS.  
In these use cases are presented also the possibility in which the DUSB and DSUBm coexist and both functionality are available to the users, but also the possibility to extend DSUB with DSUBm for mobile use.
 
### 1:XX.4.2 Use Cases

#### 1:XX.4.2.1 Use Case \#1: Document Subscription for mobile applications in MHDS Environment

The availability of a document is notified to Hospital systems, where the main sharing infrastructure is based on MHDS.

##### 1:XX.4.2.1.1 Document Subscription for mobile applications in MHDS Environment Use Case Description

Mr. Smith, a cardiopathic patient, is hospitalized in the cardiology ward at the Goodcare General Hospital. Dr. Roose, who is the only doctor working in this ward at that moment, prescribes some blood tests to decide which medicine is suitable for the patient.
The medicine will be administrated by Nurse Davis only after Dr. Roose's ePrescription.

In order to be notified when the laboratory report is ready, the software of Dr. Roose submits a subscription for all the laboratory reports that will be produced for Mr. Smith during his hospitalization.
Meanwhile Nurse Davis, that works in the cardiology ward, is waiting to receive the notification of the ePrescription on her tablet, to know what medication has to be given to her patients in her cardiology ward. 

When the laboratory has produced the report for Mr. Smith, Dr. Roose is promptly notified and, once downloaded and examined the report, he can make an ePrescription for the correct medicine that is needed to be given to the patient.
Once the ePrescription has been created a notification is sent to Nurse Davis’s tablet. Now after downloading the ePrescription the nurse can give Mr. Smith the drug that Dr. Roose prescribed.

At the end of Mr. Smith's hospitalization, the software of Dr. Roose automatically unsubscribes for the laboratory documents. 

##### 1:XX.4.2.1.2 Document Subscription for mobile applications in MHDS Environment Process Flow

<div>
{%include usecase1-processflow.svg%}
</div>
<br clear="all">

Figure 1:XX.4.2.1.2-1: Document Subscription for mobile applications in MHDS Environment in DSUBm

**Pre-conditions**:

The assumption is that systems share the information in an MHDS Environment. In the community is implemented Central Infrastructure where the MHDS Registry is grouped by the Mobile Notification Publisher/Mobile Notification Broker. The systems share and retrieve the documents by implementing MHD Document Source and/or MHD Document Consumer.

**Main Flow**:

1. The nurse tablet has already performed a subscription for documents produced in the cardiology field in order to be updated with all the document that involves the cardiology ward operability. (Mobile Subscription [ITI-Y1], patient independent subscription).  
2. After requiring the blood tests to the Laboratory System the Hospital EHR performs a subscription to the Central Infrastructure in order to inform Dr. Roose when the results will be available. (Mobile Subscription [ITI-Y1], indicating the patient and the intendedrecipient).
3. When the Laboratory System has completed the analysis the results are sent to the Central Infrastructure. (Provide Document Bundle [ITI-65]).
4. The Central Infrastructure, having stored the metadata of the medical report, generates a message to inform the broker about the publication event. ([ITI-Y2] Mobile Publish)Since the publication event of the medical report meets the subscription criteria performed by Hospital EHR the  Central Infrastructure will send a notification to the Hospital EHR. ([ITI-Y3] Mobile Notify)
6. After receiving the notification on the Hospital EHR, Dr. Roose can retrieve and consult the analysis results on the Hospital EHR in order to decide which medicine is suitable for the patient (Retrieve Document [ITI-68]).
7. Dr. Roose from the Hospital EHR makes an ePrescription for the chosen drug. A document is submitted to the Central Infrastructure. (Provide  Document Bundle [ITI-65]).
8. The Central Infrastructure, having stored the metadata of the ePrescription, generates a message to inform the broker about the publication event. ([ITI-Y2] Mobile Publish)Since the publication event of the ePrescription meets the subscription criteria performed by Nurse Tablet the Central Infrastructure will send a notification to the Nurse Tablet. ([ITI-Y3] Mobile Notify)
10. The Nurse upon seeing the notification on his tablet can retrieve the document in order to know which drug to prepare for administration. (Retrieve Document [ITI-68]).
11. At the end of the clinical event when the patient is discharged, the Hospital EHR performs an automated unsubscription. (Mobile Subscription [ITI-Y1]).


#### 1:XX.4.2.2 Use Case \#2: Document Subscription for mobile application in MHDS Environment using Folder Subscription

The update of a collection of documents (Folder), using a patient national Electronic Healthcare Record (EHR), is notified to a mobile Diabetological Healthcare Record (DHR).

##### 1:XX.4.2.2.1 Document Subscription for mobile application in MHDS Environment using Folder Subscription Use Case Description

Dr. Rooney is taking charge of Ms. Williams, a chronic diabetic patient. In order to adjust the therapy the doctor and the patient will perform a visit every month for the next 2 years. 
During the first visit, Dr. Rooney uses the mobile DHR application to subscribe to the National Electronic Healthcare Record (EHR) in order to be notified of any updates regarding Ms. Williams's clinical data. After the visit, the patient is sent home with the standard therapy.
Between the first and second visit, the patient is not feeling well and is required an admission to the emergency room where some blood tests are performed and the acute symptoms are taken care of. 
When the blood test are published on the EHR a notification is sent to the mobile DHR used by Dr. Rooney and the new update are retrieved.
 During the second visit, Dr. Rooney uses the latest clinical information and adjust the therapy. 
A few days after the second visit Ms. Williams is forced again into the emergency room. Other tests are performed and the medical report is updated in the EHR a new notification is sent to the mobile DHR used by Dr. Rooney and the new update is retrieved.
During the third visit, Ms. Williams decides that a different medic will take charge of her therapy. Therefore Dr. Rooney closes the position for Ms. Williams on his mobile DHR and the subscription to the EHR is deleted.


##### 1:XX.4.2.2.2 Document Subscription for mobile application in MHDS Environment using Folder Subscription Process Flow

<div>
{%include usecase2-processflow.svg%}
</div>
<br clear="all">

Figure 1:XX.4.2.2.2-2: Document Subscription for mobile application in MHDS Environment using Folder Subscription in DSUBm

**Pre-conditions**:

The assumption is that systems share the information in an MHDS Environment. The national EHR of a patient has been maintained thanks to the implementation of an MHDS Registry and it is grouped by the Mobile Notification Publisher/Mobile Notification Broker. The systems share and retrieve the documents by implementing MHD Document Source and/or MHD Document Consumer.

**Main Flow**:

1. During the first visit, the mobile DHR application performs a folder subscription to the EHR, and therapy A is prescribed to Mr. Williams. ([ITI-Y1] Mobile Subscription)
2. After some days during an emergency a blood test analysis is performed on Mr. Williams and the medical record is produced on the national EHR. ([ITI-65] Provide Document Bundle).
3. The publication of this medical report generates a message to inform the broker regarding the new event. ([ITI-Y2] Mobile Publish)
4. A notification is sent to the DHR since the publication of the medical record generated an updated version of the folder in the EHR. ([ITI-Y3] Mobile Notify)
5. When the DHR receives the notification the mobile application will try to retrieve the resource by sending a Retrieve Document [ITI-68] to the ER system. The clinical data in the DHR is updated. 
6. After some days during the second visit, Dr. Rooney use the updated clinical data to adjust the therapy from A to B.
7. After some days during an emergency event other analyses are performed on Mr. Williams and the medical record is produced on the national EHR. ([ITI-65] Provide Document Bundle).
8. The publication of this medical report generates a message to inform the broker regarding the new event. ([ITI-Y2] Mobile Publish)
9. A notification is sent to the DHR since the publication of the medical record generated an updated version of the folder in the EHR. ([ITI-Y3] Mobile Notify)
10. When the DHR receives the notification the mobile application will try to retrieve the resource by sending a Retrieve Document [ITI-68] to the ER system. The clinical data in the DHR is updated. 
11. During the third visit, the mobile DHR searches for the subscription performed on the folder present on the EHR. ([ITI-Y4] Mobile Subscription Search)
12. The mobile DHR deletes the folder subscription. ([ITI-Y1] Mobile Subscription.)


#### 1:XX.4.2.3 Use Case \#3: Document Subscription for Mobile Device in XDS on FHIR Environment

The availability of a specific document for a Patient shared in an XDS on FHIR infrastructure is notified in his personal mobile device.

##### 1:XX.4.2.3.1 Document Subscription for Mobile Device in XDS on FHIR Environment Use Case Description

Mr. Brown went to see his doctor. During the examination, the doctor decided that he will choose which prescription to make after seeing the blood test results. Meanwhile, Mr. Brown is sent home because he has already submitted a subscription in order to receive a notification on his mobile app when the prescription will be ready.

When the doctor is notified that the blood test results are ready he can retrieve these results and decide which drug will be included in the prescription. 
When the prescription has been made Mr. Brown receives the notification on his phone. From the app, he can now retrieve the prescription required to purchase the drug in the local pharmacy.

##### 1:XX.4.2.3.2 Document Subscription for Mobile Device in XDS on FHIR Environment Process Flow

<div>
{%include usecase3-processflow.svg%}
</div>
<br clear="all">

Figure 1:XX.4.2.3.2-1: Document Subscription for Mobile Device in XDS on FHIR Environment in DSUBm 

**Pre-conditions**:

The assumption is that systems share the information in an XDS on FHIR Environment. In the central infrastructure, the XDS Registry is grouped by the Mobile Notification Publisher/Mobile Notification Broker. The system share and retrieves the documents by implementing MHD Document Source and/or MHD Document Consumer thanks to an MHD interface on XDS (see XDS on FHIR Option of MHD Profile).

**Main Flow**:

1. After the first login, the mobile app for the prescription performs an automatic subscription to the Central Infrastructure in order to be informed when a prescription is ready.([ITI-Y1] Mobile Subscription for patient and typeCode = ePrescription)
2. When the doctor makes the ePrescription a document is produced on the Repository and the metadata are sent to the Central Infrastructure ([ITI-42] Register Document Set-b).
3. The Central Infrastructure, having stored the metadata of the prescription, generates a message to inform the broker about the publication event. (ITI-Y2 Mobile Publish) Since the publication event of the prescription meets the subscription criteria the Central Infrastructure will send a notification to the mobile app. ([ITI-Y3] Mobile Notify)
5. When the user sees the notification on his app it is possible to retrieve the document. The app will try to retrieve the resource by sending a Retrieve Document [ITI-68] to the XDS FHIR interface. 
6. Upon receiving the Retrieve Document [ITI-68] the XDS FHIR interface tries to retrieve the document from the XDS Repository. Retrieve Document Set [ITI-43].
7. With the downloaded ePrescription the patient can now go to the local pharmacy to acquire the prescribed drug showing his mobile device.

#### 1:XX.4.2.4 Use Case \#4: Document Subscription for Mobile Device in XDS on FHIR Environment extending DSUB with DSUBm

The availability of documents for a Patient is notified on a mobile device.

##### 1:XX.4.2.4.1 Document Subscription for Mobile Device in XDS on FHIR Environment extending DSUB with DSUBm Use Case Description

Mr. Wayne has a prescription for a radiographic exam and he needs to book a Radiology Appointment. With a phone call to the local hospital booking site where an appointment is proposed and Mr. Wayne, accepts the slot. After some minutes the radiology booking system produces a document for the booking reservation. 
Since Mr.Wayne is a user of the booking mobile app, a subscription has been already made to the Central Infrastructure in order to receive a notification when the booking reservation is produced.
When the notification arrives on Mr. Wayne's mobile device he can consult the information regarding his appointment. 

##### 1:XX.4.2.4.2 Document Subscription for Mobile Device in XDS on FHIR Environment extending DSUB with DSUBm Process Flow

<div>
{%include usecase4-processflow.svg%}
</div>
<br clear="all">

Figure 1.XX.4.2.4.2-1: Document Subscription for Mobile Device in XDS on FHIR Environment extending DSUB with DSUBm in DSUBm

**Pre-conditions**:

The assumption is that systems share the information in an XDS on FHIR Environment. In the central infrastructure, the XDS Registry is grouped by the DSUB Document Metadata Publisher/Document Metadata Broker. The DSUBm extends the DSUB subscription to mobile systems grouping the Mobile Notification Broker by DSUB Document Metadata Subscriber and DSUB Document Metadata Recipient. The systems share and retrieve the documents by implementing MHD Document Source and/or MHD Document Consumer thanks to an MHD interface on XDS (see XDS on FHIR Option of MHD Profile). 

**Main Flow**:

1. The mobile app performs a patient-dependent subscription specific for a subset of documents that includes the booking reservation documents. ([ITI-Y1] Mobile Subscription)
2. The DSUB interface translates the mobile subscription to a Document Metadata Subscribe [ITI-52] for the booking reservation that will be produced for the patient. 
3. After some time a document for the booking reservation is produced and the metadata are stored in the Central Infrastructure. ([ITI-42] Register Document Set-b).
4. The Central Infrastructure generates a message to inform the document metadata broker about the publication event. ([ITI-54] Document Metadata Publish)Since the publication event meets the subscription criteria the Central Infrastructure will send a notification to the DSUB interface. ([ITI-53] Document Metadata Notify)
6. The DSUB interface translates the notification received in a mobile notification in order to reach the mobile device. (ITI-Y3 mobile Notify)
7. The Mobile Device will try to retrieve the booking reservation in order to display the appointment information. A Retrieve Document [ITI-68] is sent to the DSUB FHIR Interface
8. Upon receiving the Retrieve Document [ITI-68] the  DSUB FHIR Interface will try to recover the document Retrieve Document Set [ITI-43] and will return it to the Mobile Device information.
9. The Mobile Device can now use the appointment information.


#### 1:XX.4.2.5 Use Case \#5: Document Subscription for Mobile Alert System

The availability of a specific document is notified in a Mobile Alert System with a patient-independent subscription.

##### 1:XX.4.2.5.1 Document Subscription for Mobile Alert System Use Case Description

Dr. Gordon is a new medic hired by the geriatric ward of the Goodcare General Hospital. In this facility, there is a Mobile Alert System in order to mitigate the spreading of highly contagious diseases. In order to do this every employee has an app on his personal mobile device that is connected to the mobile Alert System. When a highly contagious disease is reported inside the geriatric ward an alert is spread in order to follow immediately the specific quarantine protocol expected for the reported disease. 

##### 1:XX.4.2.5.2 Document Subscription for Mobile Alert System Process Flow

<div>
{%include usecase5-processflow.svg%}
</div>
<br clear="all">

Figure 1:XX.4.2.5-1: Document Subscription for Mobile Alert System in DSUBm

**Pre-conditions**:

The assumption is that systems share the information in an XDS on FHIR Environment. In the central infrastructure, the XDS Registry is grouped by the DSUB Document Metadata Publisher. The Notification Manager System manages both mobile and nonmobile subscriptions, groping DSUB Document Metadata Broker by the Mobile Notification Broker, The systems share and retrieve the documents by implementing MHD Document Source and/or MHD Document Consumer thanks to an MHD interface on XDS (see XDS on FHIR Option of MHD Profile).

**Main Flow**:

1. After the first login, the mobile app performs an automatic subscription to the Notification Manager in order to be informed when a specific medical report is produced and a highly contagious disease is reported inside the geriatric ward. ([ITI-Y1] Mobile Subscription, patient independent expressed by HealthcareFacilityTypeCode, ClassCode, and list of specific EventCodeList values known and managed by the Mobile Alert System).
2. When an analysis is conducted and a highly contagious disease is reported a specific document is published inside the Central infrastructure. ([ITI-42] Register Document Set-b)
3. The Central Infrastructure produce for every document a publication event and is transmitted to the Notification Manager. ([ITI-54] Document Metadata Publish)
4. The Notification Manager uses internal mapping to translate the publication event into a mobile event. If this publication event satisfies the subscription parameters explained in Step 1. a notification is sent to the Mobile Alert System. ([ITI-Y3] mobile Notify)
5. The Mobile Alert System will try to retrieve the document in order to inform the user of the specific information regarding the exposure and quarantine protocol to be followed. The Mobile Alert System sends a Retrieve Document [ITI-68] to the Central Infrastructure. 
6. Upon receiving the Retrieve Document [ITI-68] the Central Infrastructure will try to recover the document Retrieve Document Set [ITI-43] and will return to the Mobile Alert System the mobile version of the document.
7. The Mobile Alert System uses the information retrieved in order to suggest the specific action detailed in the quarantine protocol.


## 1:XX.5 ToDo Security Considerations

<a name="security-considerations"> </a>

See ITI TF-2x: [Appendix Z.8 “Mobile Security Considerations”](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.8-mobile-security-considerations)

The following is instructions to the editor and this text is not to be included in a publication. 
The material initially from [RFC 3552 "Security Considerations Guidelines" July 2003](https://tools.ietf.org/html/rfc3552).

This section should address downstream design considerations, specifically for: Privacy, Security, and Safety. These might need to be individual header sections if they are significant or need to be referenced.

The editor needs to understand Security and Privacy fundamentals. 
General [Security and Privacy guidance](http://hl7.org/fhir/secpriv-module.html) is provided in the FHIR Specification. 
The FHIR core specification should be leveraged where possible to inform the reader of your specification.

IHE FHIR based profiles should reference the [ITI Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html) section 8 Mobile Security and Privacy Considerations base when appropriate.

IHE Document Content profiles can reference the security and privacy provided by the Document Sharing infrastructure as directly grouped or possibly to be grouped.

   While it is not a requirement that any given specification or system be
   immune to all forms of attack, it is still necessary for authors of specifications to
   consider as many forms as possible.  Part of the purpose of the
   Security and Privacy Considerations section is to explain what attacks have been 
   considered and what countermeasures can be applied to defend against them.
   
   There should be a clear description of the kinds of threats on the
   described specification.  This should be approached as an
   effort to perform "due diligence" in describing all known or
   foreseeable risks and threats to potential implementers and users.

Authors MUST describe:
* which attacks have been considered and addressed in the specification
* which attacks have been considered but not addressed in the specification
* what could be done in system design, system deployment, or user training


   At least the following forms of attack MUST be considered:
   eavesdropping, replay, message insertion, deletion, modification, and
   man-in-the-middle.  Potential denial of service attacks MUST be
   identified as well.  If the specification incorporates cryptographic
   protection mechanisms, it should be clearly indicated which portions
   of the data are protected and what the protections are (i.e.,
   integrity only, confidentiality, and/or endpoint authentication,
   etc.).  Some indication should also be given to what sorts of attacks
   the cryptographic protection is susceptible.  Data which should be
   held secret (keying material, random seeds, etc.) should be clearly
   labeled.

   If the specification involves authentication, particularly user-host
   authentication, the security of the authentication method MUST be
   clearly specified.  That is, authors MUST document the assumptions
   that the security of this authentication method is predicated upon.

   The threat environment addressed by the Security and Privacy Considerations
   section MUST at a minimum include deployment across the global
   Internet across multiple administrative boundaries without assuming
   that firewalls are in place, even if only to provide justification
   for why such consideration is out of scope for the protocol.  It is
   not acceptable to only discuss threats applicable to LANs and ignore
   the broader threat environment.  In
   some cases, there might be an Applicability Statement discouraging
   use of a technology or protocol in a particular environment.
   Nonetheless, the security issues of broader deployment should be
   discussed in the document.

   There should be a clear description of the residual risk to the user
   or operator of that specification after threat mitigation has been
   deployed.  Such risks might arise from compromise in a related
   specification (e.g., IPsec is useless if key management has been
   compromised), from incorrect implementation, compromise of the
   security technology used for risk reduction (e.g., a cipher with a
   40-bit key), or there might be risks that are not addressed by the
   specification (e.g., denial of service attacks on an
   underlying link protocol).  Particular care should be taken in
   situations where the compromise of a single system would compromise
   an entire protocol.  For instance, in general specification designers
   assume that end-systems are inviolate and don't worry about physical
   attack.  However, in cases (such as a certificate authority) where
   compromise of a single system could lead to widespread compromises,
   it is appropriate to consider systems and physical security as well.

   There should also be some discussion of potential security risks
   arising from potential misapplications of the specification or technology
   described in the specification.  
  
This section also include specific considerations regarding Digital Signatures, Provenance, Audit Logging, and De-Identification.

Where audit logging is specified, a StructureDefinition profile(s) should be included, and Examples of those logs might be included.


## 1:XX.6 Cross-Profile Considerations
<a name="other-grouping"> </a>

The DSUBm actor and transaction model is very flexible. Integration with other IHE profiles is possible and highly recommended in order to utilize the subscription/notification mobile feature in different types of environments. In this section, some information about possible cross-profile interaction is presented. 

### 1:XX.6.1. MHDS - Mobile Health Document Sharing 

Within a mobile infrastructure that is implementing the MHDS model:
* MHDS Document Registry will most likely be grouped with a Mobile Notification Publisher because all publication events are submitted to the MHDS Document Registry. 
* MHDS Document Registry will likely be grouped with a Mobile Notification Broker 
* A Document Consumer System, that implements the MHD Document Consumer, will most likely grouped the MHD Document Consumer with a Mobile Notification Recipient. This grouping makes sense since the receiver of the notification is most likely the user of the information.
* A Document Consumer System, that implements the MHD Document Consumer, will likely grouped the MHD Document Consumer with a Mobile Notification Subscriber.

### 1:XX.6.2. MHD - Mobile access to Health Documents as an interface for XDS - Cross-Enterprise Document Sharing

Within an XDS infrastructure that implements a mobile interface with the MHD "XDS on FHIR Option":
* XDS Document Registry will most likely be grouped with a Mobile Notification Publisher because all publication events are submitted to the XDS Document Registry. 
* XDS Document Registry will likely be grouped with a Mobile Notification Broker 
* MHD Document Consumer will most likely be grouped with a Mobile Notification Recipient. This grouping makes sense since the receiver of the notification is most likely the user of the information.
* MHD Document Consumer will likely be grouped with a Mobile Notification Subscriber.

### 1:XX.6.3 DSUB - Document Metadata Subscription 
Within an already functioning DSUB infrastructure, two alternative groupings are presented based on which actors are integrated between DSUB and DSUBm. 

In both these two groupings DSUB and DSUBm can coexist and operate with different consumers both mobile and non-mobile.

#### 1:XX.6.3.1 DSUBm as an interface for DSUB 
* Document Metadata Subscriber and the Document Metadata Notification Recipient will most likely be grouped with a Mobile Notification Broker creating the mobile DSUB interface that translates Mobile Subscription [ITI-Y1] into Document Metadata Subscribe [ITI-52] and Document Metadata Notify [ITI-53] into Mobile Notify [ITI-Y3]. The existing DSUB Document Metadata Broker is unaware of the presence of the functionality introduced by the DSUBm profile and therefore can maintain its already implemented logic.  

<div>
{%include model_DSUBonFHIR.svg%}
</div>
<br clear="all">
Figure 1:XX.6.3.1-1: DSUBm actors grouped with DSUB:  DSUBm as an interface for DSUB 

#### 1:XX.6.3.2 Notification Manager
* Document Metadata Broker will most likely be grouped with a Mobile Notification Broker creating a Notification Manager able to manage both mobile and non-mobile subscriptions. The Notification Manager receives all subscriptions and sends all the notifications in this infrastructure. In this configuration is likely that the set of subscriptions created by Mobile Subscription [ITI-Y1] and Document Metadata Subscribe [ITI-52] may be unique and shared among DSUB and DUSBm broker actors.

<div>
{%include model_DSUB.svg%}
</div>
<br clear="all">
Figure 1:XX.6.3.2-1: DSUBm actors grouped with DSUB: Notification Manager 
