<a name="introduction"> </a>
IHE provides multiple profiles for [mobile use](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html) (e.g. [SVCM](https://profiles.ihe.net/ITI/SVCM/index.html), [MHD](https://profiles.ihe.net/ITI/MHD/index.html), [MHDS](https://profiles.ihe.net/ITI/MHDS/index.html), [NPFS](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_NPFS.pdf)), defining many mobile items (FHIR resource, documents, etc.) that can be shared, searched, and retrieved a technical interoperability suited to limited resources, but doesn’t provide a common framework for subscribing those items.

For documents, IHE provides an excellent tool to search and retrieve them through RESTful capabilities [Mobile Access to Health Documents (MHD)](https://profiles.ihe.net/ITI/MHD/index.html) but doesn’t address the subscription from a mobile device although it’s possible through a nonmobile application ([DSUB](https://profiles.ihe.net/ITI/TF/Volume1/ch-26.html)).

This profile describes the use of document subscription and notification mechanisms for mobile applications. In a similar way to the DSUB profile, a subscription is made in order to receive a notification when a document publication event matches the metadata expressed in the subscription. This profile includes a model that can be applied in a RESTful-only environment or it can be grouped with different nonmobile profiles (eg. [XDS.b](https://profiles.ihe.net/ITI/TF/Volume1/ch-10.html), [DSUB](https://profiles.ihe.net/ITI/TF/Volume1/ch-26.html) ).

<a name="actors-and-transactions"> </a>

## 1:54.1 DSUBm Actors, Transactions, and Content Modules

This section defines the actors and transactions in this implementation guide.

- Actors
  - [Resource Notification Broker](#broker)
  - [Resource Notification Subscriber](#subscriber)
  - [Resource Notification Publisher](#publisher)
  - [Resource Notification Recipient](#recipient)  
- Transactions
  - [Resource Subscription [ITI-110]](ITI-110.html)
  - [Resource Publish [ITI-111]](ITI-111.html)
  - [Resource Notify [ITI-112]](ITI-112.html)
  - [Resource Subscription Search [ITI-113]](ITI-113.html)
  - [Resource SubscriptionTopic Search [ITI-114]](ITI-114.html)

Figure 1.54.1-1 shows the actors directly involved in the DSUBm Profile and the relevant transactions between them.

<figure>
{%include ActorsAndTransactions.svg%}
<figcaption><b>Figure 1:54.1-1: DSUBm Actor Diagram</b></figcaption>
</figure>
<br clear="all">

Table 1.54.1-1 lists the transactions for each actor directly involved in the DSUBm Profile. To claim compliance with this profile, an actor shall support all required transactions (labeled “R”) and may support the optional transactions (labeled “O”).

**Table 1:54.1-1: DSUBm Profile - Actors and Transactions**

|---------|---------------|------------------------|-----------------|-----------------------------------|
| **Actors**  | **Transactions**  | **Initiator or Responder** | **Optionality**                   | **Reference**  |
| Resource Notification Broker     | Resource Subscription [ITI-110]             | Responder    | R     | ITI TF-2: 3.110 |
|                                | Resource Publish [ITI-111]               | Responder    | O     | ITI TF-2: 3.111 |
|                                | Resource Notify [ITI-112]                   | Initiator    | R     | ITI TF-2: 3.112 |
|                                | Resource Subscription Search [ITI-113]      | Responder    | R | ITI TF-2: 3.113 |
|                                | Resource SubscriptionTopic Search [ITI-114]      | Responder    | R | ITI TF-2: 3.113 |
| Resource Notification Subscriber | Resource Subscription [ITI-110]             | Initiator    | R     | ITI TF-2: 3.110 |
|                                | Resource Subscription Search [ITI-113]      | Initiator    | O (Note 1) | ITI TF-2: 3.113 |
|                                | Resource SubscriptionTopic Search [ITI-114]      | Initiator    | O (Note 2) | ITI TF-2: 3.113 |
| Resource Notification Publisher  | Resource Publish [ITI-111]               | Initiator    | R     | ITI TF-2: 3.111 |
| Resource Notification Recipient  | Resource Notify [ITI-112]                   | Responder    | R     | ITI TF-2: 3.112 |
{: .grid}


*Note 1: Transaction Resource Subscription Search [ITI-113] is required if Actor Resource Notification Subscriber supports  the option "Subscription Search", see Section_ 54.2 Actor Options.*

*Note 2: Transaction Resource SubscriptionTopic Search [ITI-114] is required if Actor Resource Notification Subscriber supports  the option "_SubscriptionTopic Search", see Section_ 54.2 Actor Options.*

### 1:54.1.1 Actors

The actors in this profile are described in more detail in the following sections.

<a name="broker"> </a>

#### 1:54.1.1.1 Resource Notification Broker

The Resource Notification Broker is the receiver of the Resource Subscription transaction containing a subscription request, or a subscription cancellation. It keeps track of all subscriptions it receives, including the time limits of subscriptions. Based on the subscription criteria, this actor sends notifications to interested subscribers. This actor may optionally receive Resource Publish transactions representing the stream of events against which the existing subscriptions are matched.

FHIR Capability Statement for [broker](CapabilityStatement-IHE.ToDo.client.html)

<a name="subscriber"> </a>

#### 1:54.1.1.2 Resource Notification Subscriber

The Resource Notification Subscriber initiates and terminates subscriptions on behalf of a Resource Notification Recipient. It also can send a Resource Subscription Search transaction to the Resource Notification Broker for existing subscription research.

FHIR Capability Statement for [subscriber](CapabilityStatement-IHE.ToDo.server.html)

<a name="publisher"> </a>

#### 1:54.1.1.3 Resource Notification Publisher

The Resource Notification Publisher sends a Resource Publish transaction to the Resource Notification Broker when an event occurs for which a subscription may exist. Note that this profile does not specify how the Resource Notification Publisher becomes aware of those events.

FHIR Capability Statement for [publisher](CapabilityStatement-IHE.ToDo.server.html)

<a name="recipient"> </a>

#### 1:54.1.1.4 Resource Notification Recipient

The Resource Notification Recipient receives the notification about an event when the subscription filters specified for this Document Resource Notification Recipient are satisfied.

FHIR Capability Statement for [recipient](CapabilityStatement-IHE.ToDo.server.html)

### 1:54.1.2 Transaction Descriptions

The transactions in this profile are summarized in the sections below.

#### 1:54.1.2.1 Resource Subscription [ITI-110]

This transaction is used for a subscription request, by using a particular set of filters, or for a subscription deletion. 

For more details see the detailed [transaction description](ITI-110.html)

#### 1:54.1.2.2 Resource Publish [ITI-111]

This transaction delivers information from the Resource Notification Publisher to the Resource Notification Broker about an event that may have a subscription.

For more details see the detailed [transaction description](ITI-111.html)

#### 1:54.1.2.3 Resource Notify [ITI-112]

This transaction is used for sending notifications to a Resource Notification recipient.

For more details see the detailed [transaction description](ITI-112.html)

#### 1:54.1.2.4 Resource Subscription Search [ITI-113]

This transaction is used for searching existing subscriptions.

For more details see the detailed [transaction description](ITI-113.html)

#### 1:54.1.2.5 Resource SubscriptionTopic Search [ITI-114]

This transaction is used for existing subscriptionTopic search.

For more details see the detailed [transaction description](ITI-114.html)

<a name="actor-options"> </a>

## 1:54.2 Actor Options

Options that may be selected for each actor in this implementation guide, are listed in Table 3.2-1 below. Dependencies 
between options when applicable are specified in notes.

| **Actors** | **Option Name** | **Vol. & Section** |
|---------|-------------|-------------|
| Resource Notification Broker | Subscription Search | ITI TF-1: 54.2.1 |
| Resource Notification Subscriber | Subscription Search | ITI TF-1: 54.2.1 |
| Resource Notification Publisher | none |--|
| Resource Notification Recipient | none |--|
{: .grid}

#### 1:54.2.1 Subscription Search

The Resource Notification Subscriber that supports this option shall implement the Resource Subscription Search [ITI-113] transaction.

#### 1:54.2.2 SubscriptionTopic Search

The Resource Notification Subscriber that supports this option shall implement the Resource SubscriptionTopic Search [ITI-114] transaction.

<a name="required-groupings"> </a>

## 1:54.3 Required Actor Groupings

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
<td>Resource Notification Broker</td>
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
<td>Resource Notification Subscriber</td>
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
<td>Resource Notification Publisher</td>
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
<td>Resource Notification Recipient</td>
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

<a name="overview"> </a>

## 1:54.4 DSUBm Overview

This section shows how the transactions/content modules of the profile are combined to address the use cases. 

### 1:54.4.1 Concepts

The DSUBm profile enables mobile subscriptions for documents.
The subscription mechanism is very flexible and can be adapted to many use cases depending on the type of subscription used and the environment in which DSUBm is implemented.  
In the following use cases are presented different subscription types such as: patient-dependent subscription, patient-independent subscription, Folder subscription and other types. 
The use cases cover both a fully mobile environment (MHDS) and an environment in which the main infrastructure is XDS.  
These use cases present also the possibility in which the DUSB and DSUBm coexist and both functionality are available to the users, but also the possibility to extend DSUB with DSUBm for mobile use.
 
### 1:54.4.2 Use Cases

#### 1:54.4.2.1 Use Case \#1: Document Subscription for mobile applications in MHDS Environment

The availability of a document is notified to Hospital systems, where the main sharing infrastructure is based on MHDS.

##### 1:54.4.2.1.1 Document Subscription for mobile applications in MHDS Environment Use Case Description

Mr. Smith, a cardiopathic patient, is hospitalized in the cardiology ward at the Goodcare General Hospital. Dr. Roose, who is the only doctor working in this ward at that moment, prescribes some blood tests to decide which medicine is suitable for the patient.
The medicine will be administrated by Nurse Davis only after Dr. Roose's ePrescription.

In order to be notified when the laboratory report is ready, the software of Dr. Roose submits a subscription for all the laboratory reports that will be produced for Mr. Smith during his hospitalization.
Meanwhile Nurse Davis, that works in the cardiology ward, is waiting to receive the notification of the ePrescription on her tablet, to know what medication has to be given to her patients in her cardiology ward. 

When the laboratory has produced the report for Mr. Smith, Dr. Roose is promptly notified and, once downloaded and examined the report, he can make an ePrescription for the correct medicine that is needed to be given to the patient.
Once the ePrescription has been created a notification is sent to Nurse Davis’s tablet. Now after downloading the ePrescription the nurse can give Mr. Smith the drug that Dr. Roose prescribed.

At the end of Mr. Smith's hospitalization, the software of Dr. Roose automatically unsubscribes for the laboratory documents. 

##### 1:54.4.2.1.2 Document Subscription for mobile applications in MHDS Environment Process Flow

<figure>
{%include usecase1-processflow.svg%}
<figcaption><b>1:54.4.2.1.2-1: Document Subscription for mobile applications in MHDS Environment in DSUBm</b></figcaption>
</figure>
<br clear="all">

**Pre-conditions**:

The assumption is that systems share the information in an MHDS Environment. In the community is implemented Central Infrastructure where the MHDS Registry is grouped by the Resource Notification Publisher/Resource Notification Broker. The systems share and retrieve the documents by implementing MHD Document Source and/or MHD Document Consumer.

**Main Flow**:

1. The nurse tablet has already performed a subscription for documents produced in the cardiology field in order to be updated with all the document that involves the cardiology ward operability. (Resource Subscription [ITI-110], patient independent subscription with the following criteria:
"/DocumentReference?patient:missing=true&facility=cardiologyWard").  
2. After requiring the blood tests to the Laboratory System the Hospital EHR performs a subscription to the Central Infrastructure in order to inform Dr. Roose when the results will be available. (Resource Subscription [ITI-110], indicating the patient and the typeCode with the following criteria "/DocumentReference?patient=12345&type=http://loinc.org&#124;1234-5").
3. When the Laboratory System has completed the analysis, the results are sent to the Central Infrastructure. (Provide Document Bundle [ITI-65]).
4. The Central Infrastructure, having stored the metadata of the medical report, generates a message to inform the broker about the publication event. ([ITI-111] Resource Publish)
5. Since the publication event of the medical report meets the subscription criteria performed by Hospital EHR the  Central Infrastructure will send a notification to the Hospital EHR. ([ITI-112] Resource Notify)
6. After receiving the notification on the Hospital EHR, Dr. Roose can retrieve and consult the analysis results on the Hospital EHR in order to decide which medicine is suitable for the patient (Retrieve Document [ITI-68]).
7. Dr. Roose from the Hospital EHR makes an ePrescription for the chosen drug. A document is submitted to the Central Infrastructure. (Provide  Document Bundle [ITI-65]).
8. The Central Infrastructure, having stored the metadata of the ePrescription, generates a message to inform the broker about the publication event. ([ITI-111] Resource Publish)
9. Since the publication event of the ePrescription meets the subscription criteria performed by Nurse Tablet the Central Infrastructure will send a notification to the Nurse Tablet. ([ITI-112] Resource Notify)
10. The Nurse upon seeing the notification on his tablet can retrieve the document in order to know which drug to prepare for administration. (Retrieve Document [ITI-68]).
11. At the end of the clinical event when the patient is discharged, the Hospital EHR performs an automated unsubscription. (Resource Subscription [ITI-110]).


#### 1:54.4.2.2 Use Case \#2: Document Subscription for mobile application in MHDS Environment using Folder Subscription

The update of a collection of documents (Folder), using a patient national Electronic Healthcare Record (EHR), is notified to a mobile Diabetological Healthcare Record (DHR).

##### 1:54.4.2.2.1 Document Subscription for mobile application in MHDS Environment using Folder Subscription Use Case Description

Dr. Rooney is taking charge of Ms. Williams, a chronic diabetic patient. In order to adjust the therapy the doctor and the patient will perform a visit every month for the next 2 years. 
During the first visit, Dr. Rooney uses the mobile DHR application to subscribe to the National Electronic Healthcare Record (EHR) in order to be notified of any updates regarding Ms. Williams's clinical data. After the visit, the patient is sent home with the standard therapy.
Between the first and second visit, the patient is not feeling well and is required an admission to the emergency room where some blood tests are performed and the acute symptoms are taken care of. 
When the blood test are published on the EHR a notification is sent to the mobile DHR used by Dr. Rooney and the new update are retrieved.
 During the second visit, Dr. Rooney uses the latest clinical information and adjust the therapy. 
A few days after the second visit Ms. Williams is forced again into the emergency room. Other tests are performed and the medical report is updated in the EHR a new notification is sent to the mobile DHR used by Dr. Rooney and the new update is retrieved.
During the third visit, Ms. Williams decides that a different medic will take charge of her therapy. Therefore Dr. Rooney closes the position for Ms. Williams on his mobile DHR and the subscription to the EHR is deleted.


##### 1:54.4.2.2.2 Document Subscription for mobile application in MHDS Environment using Folder Subscription Process Flow

<figure>
{%include usecase2-processflow.svg%}
<figcaption><b>1:54.4.2.2.2-2: Document Subscription for mobile application in MHDS Environment using Folder Subscription in DSUBm</b></figcaption>
</figure>
<br clear="all">

**Pre-conditions**:

The assumption is that systems share the information in an MHDS Environment. The national EHR of a patient has been maintained thanks to the implementation of an MHDS Registry and it is grouped by the Resource Notification Publisher/Resource Notification Broker. The systems share and retrieve the documents by implementing MHD Document Source and/or MHD Document Consumer. The Resource Notification Subscriber has implemented the ["Subscription Search"](#actor-options) and ["SubscriptionTopic Search"](#actor-options) options. 

**Main Flow**:

1.  During the first visit a document subscription is needed. The mobile DHR application needs to discover the SubscriptioTopic supported by the Resource Notification Broke in order to choose the parameter for the new subscription. ([ITI-114] Resource SubscriptionTopic Search)  
2. At the end of the first visit, the mobile DHR application performs a folder subscription to the EHR, and therapy A is prescribed to Mr. Williams. ([ITI-110] Resource Subscription with the following criteria:
"/List?patient=12345&code=folder" )
3. After some days during an emergency a blood test analysis is performed on Mr. Williams and the medical record is produced on the national EHR. ([ITI-65] Provide Document Bundle).
4. The publication of this medical report generates a message to inform the broker regarding the new event. ([ITI-111] Resource Publish)
5. A notification is sent to the DHR since the publication of the medical record generated an updated version of the folder in the EHR. ([ITI-112] MobResourceile Notify)
6. When the DHR receives the notification, the mobile application will try to retrieve the resource by sending a Retrieve Document [ITI-68] to the ER system. The clinical data in the DHR is updated. 
7. After some days during the second visit, Dr. Rooney use the updated clinical data to adjust the therapy from A to B.
8. After some days during an emergency event other analyses are performed on Mr. Williams and the medical record is produced on the national EHR. ([ITI-65] Provide Document Bundle).
9. The publication of this medical report generates a message to inform the broker regarding the new event. ([ITI-111] Resource Publish)
10. A notification is sent to the DHR since the publication of the medical record generated an updated version of the folder in the EHR. ([ITI-112] Resource Notify)
11. When the DHR receives the notification, the mobile application will try to retrieve the resource by sending a Retrieve Document [ITI-68] to the ER system. The clinical data in the DHR is updated. 
12. During the third visit, the mobile DHR searches for the subscription performed on the folder present on the EHR. ([ITI-113] Resource Subscription Search)
13. The mobile DHR deletes the folder subscription. ([ITI-110] Resource Subscription.)


#### 1:54.4.2.3 Use Case \#3: Document Subscription for Mobile Device in XDS on FHIR Environment

The availability of a specific document for a Patient shared in an XDS on FHIR infrastructure is notified in his personal mobile device.

##### 1:54.4.2.3.1 Document Subscription for Mobile Device in XDS on FHIR Environment Use Case Description

Mr. Brown went to see his doctor. During the examination, the doctor decided that he will choose which prescription to make after seeing the blood test results. Meanwhile, Mr. Brown is sent home because he has already submitted a subscription in order to receive a notification on his mobile app when the prescription will be ready.

When the doctor is notified that the blood test results are ready he can retrieve these results and decide which drug will be included in the prescription. 
When the prescription has been made Mr. Brown receives the notification on his phone. From the app, he can now retrieve the prescription required to purchase the drug in the local pharmacy.

##### 1:54.4.2.3.2 Document Subscription for Mobile Device in XDS on FHIR Environment Process Flow

<figure>
{%include usecase3-processflow.svg%}
<figcaption><b>Figure 1:54.4.2.3.2-1: Document Subscription for Mobile Device in XDS on FHIR Environment in DSUBm</b></figcaption>
</figure>
<br clear="all">

**Pre-conditions**:

The assumption is that systems share the information in an XDS on FHIR Environment. In the central infrastructure, the XDS Registry is grouped by the Resource Notification Publisher/Resource Notification Broker. The system shares and retrieves the documents by implementing MHD Document Source and/or MHD Document Consumer thanks to an MHD interface on XDS (see XDS on FHIR Option of MHD Profile).

**Main Flow**:

1. After the first login, the mobile app for the prescription performs an automatic subscription to the Central Infrastructure in order to be informed when a prescription is ready.([ITI-110] Resource Subscription for patient and typeCode with the following criteria:
"/DocumentReference?patient=222333&type=ePrescription")
2. When the doctor makes the ePrescription a document is produced on the Repository and the metadata are sent to the Central Infrastructure ([ITI-42] Register Document Set-b).
3. The Central Infrastructure, having stored the metadata of the prescription, generates a message to inform the broker about the publication event. ([ITI-111] Resource Publish).
4. Since the publication event of the prescription meets the subscription criteria the Central Infrastructure will send a notification to the mobile app. ([ITI-112] Resource Notify)
5. When the user sees the notification on his app it is possible to retrieve the document. The app will try to retrieve the resource by sending a Retrieve Document [ITI-68] to the XDS FHIR interface. 
6. Upon receiving the Retrieve Document [ITI-68] the XDS FHIR interface tries to retrieve the document from the XDS Repository. Retrieve Document Set [ITI-43].
7. With the downloaded ePrescription the patient can now go to the local pharmacy to acquire the prescribed drug showing his mobile device.

#### 1:54.4.2.4 Use Case \#4: Document Subscription for Mobile Device in XDS on FHIR Environment extending DSUB with DSUBm

The availability of documents for a Patient is notified on a mobile device.

##### 1:54.4.2.4.1 Document Subscription for Mobile Device in XDS on FHIR Environment extending DSUB with DSUBm Use Case Description

Mr. Wayne has a prescription for a radiographic exam and he needs to book a Radiology Appointment. With a phone call to the local hospital, an appointment is proposed and Mr. Wayne accepts the slot. After some minutes the radiology booking system produces a document for the booking reservation. 
Since Mr.Wayne is a user of the booking mobile app, a subscription has been already made to the Central Infrastructure in order to receive a notification when the booking reservation is produced.
When the notification arrives on Mr. Wayne's mobile device he can consult the information regarding his appointment. 

##### 1:54.4.2.4.2 Document Subscription for Mobile Device in XDS on FHIR Environment extending DSUB with DSUBm Process Flow

<figure>
{%include usecase4-processflow.svg%}
<figcaption><b>Figure 1.54.4.2.4.2-1: Document Subscription for Mobile Device in XDS on FHIR Environment extending DSUB with DSUBm in DSUBm</b></figcaption>
</figure>
<br clear="all">


**Pre-conditions**:

The assumption is that systems share the information in an XDS on FHIR Environment. In the central infrastructure, the XDS Registry is grouped by the DSUB Document Metadata Publisher/Document Metadata Broker. The DSUBm extends the DSUB subscription to mobile systems grouping the Resource Notification Broker by DSUB Document Metadata Subscriber and DSUB Document Metadata Recipient. The systems share and retrieve the documents by implementing MHD Document Source and/or MHD Document Consumer thanks to an MHD interface on XDS (see XDS on FHIR Option of MHD Profile). 

**Main Flow**:

1. The mobile app performs a patient-dependent subscription specific for a subset of documents that includes the booking reservation documents. ([ITI-110] Resource Subscription with the following criteria:
"/DocumentReference?patient=98765&type=ePrescription")
2. The DSUB interface translates the mobile subscription to a Document Metadata Subscribe [ITI-52] for the booking reservation that will be produced for the patient. 
3. After some time a document for the booking reservation is produced and the metadata are stored in the Central Infrastructure. ([ITI-42] Register Document Set-b).
4. The Central Infrastructure generates a message to inform the document metadata broker about the publication event. ([ITI-54] Document Metadata Publish)
5. Since the publication event meets the subscription criteria the Central Infrastructure will send a notification to the DSUB interface. ([ITI-53] Document Metadata Notify)
6. The DSUB interface translates the notification received in a mobile notification in order to reach the mobile device. ([ITI-112] Resource Notify)
7. The Mobile Device will try to retrieve the booking reservation in order to display the appointment information. A Retrieve Document [ITI-68] is sent to the DSUB FHIR Interface
8. Upon receiving the Retrieve Document [ITI-68] the  DSUB FHIR Interface will try to recover the document Retrieve Document Set [ITI-43] and will return it to the Resource Device information.
9. The Mobile Device can now use the appointment information.


#### 1:54.4.2.5 Use Case \#5: Document Subscription for Mobile Alert System

The availability of a specific document is notified in a Mobile Alert System with a patient-independent subscription.

##### 1:54.4.2.5.1 Document Subscription for Mobile Alert System Use Case Description

Dr. Gordon is a new medic hired by the geriatric ward of the Goodcare General Hospital. In this facility, there is a Mobile Alert System in order to mitigate the spreading of highly contagious diseases. In order to do this every employee has an app on his personal mobile device that is connected to the mobile Alert System. When a highly contagious disease is reported inside the geriatric ward an alert is spread in order to follow immediately the specific quarantine protocol expected for the reported disease. 

##### 1:54.4.2.5.2 Document Subscription for Mobile Alert System Process Flow

<figure>
{%include usecase5-processflow.svg%}
<figcaption><b>Figure 1:54.4.2.5-1: Document Subscription for Mobile Alert System in DSUBm</b></figcaption>
</figure>
<br clear="all">

**Pre-conditions**:

The assumption is that systems share the information in an XDS on FHIR Environment. In the central infrastructure, the XDS Registry is grouped by the DSUB Document Metadata Publisher. The Notification Manager System manages both mobile and nonmobile subscriptions, groping DSUB Document Metadata Broker by the Resource Notification Broker, The systems share and retrieve the documents by implementing MHD Document Source and/or MHD Document Consumer thanks to an MHD interface on XDS (see XDS on FHIR Option of MHD Profile).

**Main Flow**:

1. The Mobile Alert System performs a subscription to the Notification Manager in order to be informed when a specific medical report is produced and a highly contagious disease is reported inside the geriatric ward. (ITI-110 Resource Subscription, patient independent expressed with the following criteria:
"/DocumentReference?patient:missing=true&category=urn:oid:1.3.6.1.4.1.19376.1.2.6.1&#x7c;REPORTS&facility=geriatricWard&event=A,B,C") The list of known and managed diseases is represented by the list of eventCodeList values submitted in the subscription by the Mobile Alert System.
2. When an analysis is conducted and a highly contagious disease is reported a specific document is published inside the Central infrastructure. ([ITI-42] Register Document Set-b)
3. The Central Infrastructure produce for every document a publication event and is transmitted to the Notification Manager. ([ITI-54] Document Metadata Publish)
4. The Notification Manager uses internal mapping to translate the publication event into a mobile event. If this publication event satisfies the subscription parameters explained in Step 1 a notification is sent to the Mobile Alert System. ([ITI-112] Resource Notify)
5. The Mobile Alert System will try to retrieve the document in order to inform the user of the specific information regarding the exposure and quarantine protocol to be followed. The Mobile Alert System sends a Retrieve Document [ITI-68] to the Central Infrastructure. 
6. Upon receiving the Retrieve Document [ITI-68] the Central Infrastructure will try to recover the document Retrieve Document Set [ITI-43] and will return to the Mobile Alert System the mobile version of the document.
7. The Mobile Alert System uses the information retrieved in order to send a Mobile Report Alert [ITI-84] to the Mobile device.
8. The Mobile Alert System is updated in order to respond to a new disease. The existing subscription is updated including the new disease with eventCodeList = D. ([ITI-110] Resource Subscription, patient independent expressed with the following criteria:
"/DocumentReference?patient:missing=true&category=urn:oid:1.3.6.1.4.1.19376.1.2.6.1&#x7c;REPORTS&facility=geriatricWard&event=A,B,C,D")


#### 1:54.4.2.6 Use Case \#6: Document Subscription for Mobile Device in XDS on FHIR Environment with document metadata update

The availability of an updated metadata document (shared in an XDS on FHIR infrastructure) for a Patient is notified to a personal mobile device.

##### 1:54.4.2.6.1 Document Subscription for Mobile Device in XDS on FHIR Environment with document metadata update Use Case Description

Ms. Fox uses an app on her phone to consult her diagnostic reports, emitted after doctor visits or diagnostics exams. 
After one radiographic exam, a report has been produced but the doctor that produced the report wanted to have a consultation with a specialist before letting it visible to the patient.
So that, after the consultation of the report by the specialist and sure that there are no further issues, the report lets be visible to the patient.
Thus, Ms. Fox receives the notification on her app and consults the reports.

##### 1:54.4.2.6.2 Document Subscription for Mobile Device in XDS on FHIR Environment with document metadata update Process Flow

<figure>
{%include usecase6-processflow.svg%}
<figcaption><b>1:54.4.2.6.2-1: Document Subscription for Mobile Device in XDS on FHIR Environment with document metadata update in DSUBm</b></figcaption>
</figure>
<br clear="all">

**Pre-conditions**:

The assumption is that systems share the information in an XDS on FHIR Environment. In the central infrastructure, the XDS Registry is grouped by the Resource Notification Publisher/Resource Notification Broker. The system share and retrieves the documents by implementing MHD Document Source and/or MHD Document Consumer thanks to an MHD interface on XDS (see XDS on FHIR Option of MHD Profile).

**Main Flow**:

1. The mobile app performs a patient-dependent subscription specific for reports and specifing a list of possible confidentiality codes, based on the community accordance, in this case, equal to "N". ([ITI-110] Resource Subscription with the following criteria:
"/DocumentReference?patient=98765&type=reports&security-label=N")
2. When the doctor makes the report, not visible to the patient, a document is produced on the Repository and the metadata are sent to the Central Infrastructure, in this case with a confidentiality code different from "N" ([ITI-42] Register Document Set-b).
3. The Central Infrastructure, having stored the metadata of the report, generates a message to inform the broker about the publication event. ([ITI-111] Resource Publish), but since the publication event doesn't match any active subscription criteria, any notification is sent.
4. After the consultation, the confidentiality code metadata of the report is updated "N" to the Central Infrastructure ([ITI-57] Update Document Set)
5. The Central Infrastructure, having updated the metadata of the document, generates a message to inform the broker about the update event. ([ITI-111] Resource Publish).
6. Since the metadata update event meets the subscription criteria, the Central Infrastructure will send a notification to the mobile app. ([ITI-112] Resource Notify)
7. When the user sees the notification on his app it is possible to retrieve the document. The app will try to retrieve the resource by sending a Retrieve Document [ITI-68] to the XDS FHIR interface.
8. Upon receiving the Retrieve Document [ITI-68] the XDS FHIR interface tries to retrieve the document from the XDS Repository. Retrieve Document Set [ITI-43].
9. Downloaded the document, Ms. Fox can view the report.

<a name="security-considerations"> </a>

## 1:54.5 Security Considerations

See ITI TF-2x: [Appendix Z.8 “Mobile Security Considerations”](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.8-mobile-security-considerations)

<a name="other-grouping"> </a>

## 1:54.6 Cross-Profile Considerations

The DSUBm actor and transaction model is very flexible. Integration with other IHE profiles is possible and highly recommended in order to utilize the subscription/notification mobile feature in different types of environments. In this section, some information about possible cross-profile interaction is presented. 

### 1:54.6.1. MHDS - Mobile Health Document Sharing 

Within a mobile infrastructure that is implementing the MHDS model:
* MHDS Document Registry will most likely be grouped with a Resource Notification Publisher because all publication events are submitted to the MHDS Document Registry. 
* MHDS Document Registry will likely be grouped with a Resource Notification Broker 
* A Document Consumer System, that implements the MHD Document Consumer, will most likely grouped the MHD Document Consumer with a Resource Notification Recipient. This grouping makes sense since the receiver of the notification is most likely the user of the information.
* A Document Consumer System, that implements the MHD Document Consumer, will likely grouped the MHD Document Consumer with a Resource Notification Subscriber.

<figure>
{%include model_MHDS.svg%}
<figcaption><b>Figure 1:54.6.1.1-1: DSUBm actors grouped with MHDS actors
</b></figcaption>
</figure>
<br clear="all">

### 1:54.6.2. MHD - Mobile access to Health Documents as an interface for XDS - Cross-Enterprise Document Sharing

Within an XDS infrastructure that implements a mobile interface with the MHD "XDS on FHIR Option":
* XDS Document Registry will most likely be grouped with a Resource Notification Publisher because all publication events are submitted to the XDS Document Registry. 
* XDS Document Registry will likely be grouped with a Resource Notification Broker 
* MHD Document Consumer will most likely be grouped with a Resource Notification Recipient. This grouping makes sense since the receiver of the notification is most likely the user of the information.
* MHD Document Consumer will likely be grouped with a Resource Notification Subscriber.

<figure>
{%include model_MHD.svg%}
<figcaption><b>Figure 1:54.6.2.1-1: DSUBm actors grouped with MHD actors
</b></figcaption>
</figure>
<br clear="all">

### 1:54.6.3 DSUB - Document Metadata Subscription 
Within an already functioning DSUB infrastructure, two alternative groupings are presented based on which actors are integrated between DSUB and DSUBm. 

In both these two groupings DSUB and DSUBm can coexist and operate with different consumers both mobile and non-mobile.

#### 1:54.6.3.1 DSUBm as an interface for DSUB 
* Document Metadata Subscriber and the Document Metadata Notification Recipient will most likely be grouped with a Resource Notification Broker creating the mobile DSUB interface that translates Resource Subscription [ITI-110] into Document Metadata Subscribe [ITI-52] and Document Metadata Notify [ITI-53] into Resource Notify [ITI-112]. The existing DSUB Document Metadata Broker is unaware of the presence of the functionality introduced by the DSUBm profile and therefore can maintain its already implemented logic.  
<figure>
{%include model_DSUBonFHIR.svg%}
<figcaption><b>Figure 1:54.6.3.1-1: DSUBm actors grouped with DSUB:  DSUBm as an interface for DSUB 
</b></figcaption>
</figure>
<br clear="all">

#### 1:54.6.3.2 Notification Manager
* Document Metadata Broker will most likely be grouped with a Resource Notification Broker creating a Notification Manager able to manage both mobile and non-mobile subscriptions. The Notification Manager receives all subscriptions and sends all the notifications in this infrastructure. In this configuration is likely that the set of subscriptions created by Resource Subscription [ITI-110] and Document Metadata Subscribe [ITI-52] may be unique and shared among DSUB and DUSBm broker actors.

<figure>
{%include model_DSUB.svg%}
<figcaption><b>Figure 1:54.6.3.2-1: DSUBm actors grouped with DSUB: Notification Manager 
</b></figcaption>
</figure>
<br clear="all">
