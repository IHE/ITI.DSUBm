
# 1:XX DSUBm

IHE provides more profile for mobile use (e.g. SVCM, MHD, MHDS, NPFS), defining a lot of mobile items (FHIR resource, documents, etc.) that can be shared, searched and retrieved with mobile devices, but doesn’t provide a common framework for subscribing those items.

For documents, IHE provides an excellent tools to search and retrieve them through RESTful capabilities (MHD), but doesn’t address the subscription from a mobile device although it’s possible through non mobile application (DSUB).

**TODO: Provide an end-user friendly overview of what the profile does for them. Keep it brief (a paragraph or two, up to a page). If extensive detail is needed, it should be included in Section XX.4- Use Cases.**

This profile describes the use of document subscription and notification mechanism for mobile application. In a similar way to the DSUB profile a subscription is made in order to receive a notification when a document publication event matches the metadata expressed in the subscription. This profile includes a model that can be applied in a RESTful only environment or it can be coupled with different non mobile profile (eg. XDS.b, DSUB, .. ). 

**TODO: Explicitly state whether this is a Workflow, Transport, or Content Module (or combination) profile. See the IHE Technical Frameworks General Introduction for definitions of these profile types. The IHE Technical Frameworks [General Introduction](https://profiles.ihe.net/GeneralIntro/).**

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

  - [Mobile Publishing [ITI-Y2]](ITI-Y2.html)

  - [Mobile Notify [ITI-Y3]](ITI-Y3.html)

  - [Mobile Subscription Search [ITI-Y4]](ITI-Y4.html)




Figure 1.XX.1-1 shows the actors directly involved in the DSUBm Profile and the relevant transactions between them.

<div>
{%include ActorsAndTransactions.svg%}
</div>
<br clear="all">

**Figure 1.XX.1-1: DSUBm Actor Diagram**

Table 1.XX.1-1 lists the transactions for each actor directly involved in the DSUBm Profile. To claim compliance with this profile, an actor shall support all required transactions (labeled “R”) and may support the optional transactions (labeled “O”).

**Table 1.XX.1-1: DSUBm Profile - Actors and Transactions**

|---------|---------------|------------------------|-----------------|-----------------------------------|
| **Actors**  | **Transactions**  | **Initiator or Responder** | **Optionality**                   | **Reference**  |
| Mobile Notification Broker     | Mobile Subscription [ITI-Y1]             | Responder    | R     | ITI TF-2: 3.Y1 |
|                                | Mobile Publishing [ITI-Y2]               | Responder    | R     | ITI TF-2: 3.Y2 |
|                                | Mobile Notify [ITI-Y3]                   | Initiator    | R     | ITI TF-2: 3.Y3 |
|                                | Mobile Subscription Search [ITI-Y4]      | Responder    | O     | ITI TF-2: 3.Y4 |
| Mobile Notification Subscriber | Mobile Subscription [ITI-Y1]             | Initiator    | R     | ITI TF-2: 3.Y1 |
|                                | Mobile Subscription Search [ITI-Y4]      | Initiator    | O     | ITI TF-2: 3.Y4 |
| Mobile Notification Publisher  | Mobile Publishing [ITI-Y2]               | Initiator    | R     | ITI TF-2: 3.Y2 |
| Mobile Notification Recipient  | Mobile Notify [ITI-Y3]                   | Responder    | R     | ITI TF-2: 3.Y3 |
{: .grid}

Note 1: *For example, a note could specify that at least one of the
transactions shall be supported by an actor or other variations. For
example: Note: Either Transaction Y3 or Transaction Y4 shall be
implemented for Actor E.*

Note 2: *For example, could specify that Transaction Y4 is required
if Actor B supports XYZ Option, see Section XX.3.X.*

### 1.XX.1.1 Actors
The actors in this profile are described in more detail in the sections below.

#### 1.XX.1.1.1 Mobile Notification Broker

<a name="broker"> </a>

The Mobile Notification Broker is the receiver of the Mobile Subscription transaction containing a subscription request, or a subscription cancellation. It keeps track of all subscriptions it receives, including the time limits of subscriptions. Based on the subscription criteria, this actor sends notifications to interested subscribers. This actor may optionally receive Mobile Publishing transactions representing the stream of events against which the existing subscriptions are matched.

FHIR Capability Statement for [broker](CapabilityStatement-IHE.ToDo.client.html)

#### 1.XX.1.1.2 Mobile Notification Subscriber

<a name="subscriber"> </a>

The Mobile Notification Subscriber initiates and terminates subscriptions on behalf of a Mobile Notification Recipient. It also can send a Mobile Subscription Search transaction to the Mobile Notification Broker for existing subscription research.

FHIR Capability Statement for [subscriber](CapabilityStatement-IHE.ToDo.server.html)

#### 1.XX.1.1.3 Mobile Notification Publisher

<a name="publisher"> </a>

The Mobile Notification Publisher sends a Mobile Publishing transaction to the Mobile Notification Broker when an event occurs for which a subscription may exist. This profile does not specify how the Mobile Notification Publisher becomes aware of those events.

FHIR Capability Statement for [publisher](CapabilityStatement-IHE.ToDo.server.html)

#### 1.XX.1.1.4 Mobile Notification Recipient

<a name="recipient"> </a>

The Mobile Notification Recipient receives the notification about an event, when the subscription filters specified for this Document Mobile Notification Recipient are satisfied.

FHIR Capability Statement for [recipient](CapabilityStatement-IHE.ToDo.server.html)


### 1.XX.1.2 Transaction Descriptions
The transactions in this profile are summarized in the sections below.

#### 1.XX.1.2.1 Mobile Subscription [ITI-Y1]

This transaction is used for a subscription requesting, by using a particular set of filters, or for a subscription deleting. 

For more details see the detailed [transaction description](domain-YY.html)

#### 1.XX.1.2.2 Mobile Publishing [ITI-Y2]

This transaction delivers information from the Mobile Notification Publisher to the Mobile Notification Broker about an event which may have a subscription.

For more details see the detailed [transaction description](domain-YY.html)

#### 1.XX.1.2.3 Mobile Notify [ITI-Y3]

This transaction is used for sending notification to a Mobile Notification recipient.

For more details see the detailed [transaction description](domain-YY.html)

#### 1.XX.1.2.4 Mobile Subscription Search [ITI-Y4]

This transaction is used for existing subscription research.

For more details see the detailed [transaction description](domain-YY.html)


## 1.XX.2 ToDo Actor Options

<a name="actor-options"> </a>

Options that may be selected for each actor in this implementation guide, are listed in Table 3.2-1 below. Dependencies 
between options when applicable are specified in notes.

| **Actors** | **Option Name** | **Vol. & Section** |
|---------|-------------|-------------|
| Mobile Notification Subscriber | Subscription Search | ITI TF-1: XX.2.1 |
| Mobile Notification Broker | Subscription Search | ITI TF-1: XX.2.1 |
| Mobile Notification Publisher | none |--|
| Mobile Notification Recipient | none |--|
{: .grid}

#### XX.2.1 Subscription Search

The Mobile Notification Subscriber that supports this option shall implement the Mobile Subscription Search [ITI-Y4] transaction.

The Mobile Notification Broker that supports this option shall accept and process the Mobile Subscription Search [ITI-Y4] transaction.

## 1.XX.3 ToDo Required Actor Groupings

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


## 1.XX.4 ToDo Overview

<a name="overview"> </a>

This section shows how the transactions/content modules of the profile are combined to address the use cases.

Use cases are informative, not normative, and “SHALL” language is not allowed in use cases.

### XX.4.1 Concepts

If needed, this section provides an overview of the concepts that provide necessary background for understanding the profile. If not
needed, state “Not applicable.” For an example of why/how this section may be needed, please see ITI Cross Enterprise Workflow (XDW).

It may be useful in this section but is not necessary, to provide a short list of the use cases described below and explain why they are
different.

### XX.4.2 Use Cases

#### XX.4.2.1 Use Case \#1: Document Subscription for Mobile Device in MHDS Environment with patient indipendent subscription

The availability of a document is notified to a mobile device.

##### XX.4.2.1.1 Document Subscription for Mobile Device in MHDS Environment Use Case Description

Mr Smith, a cardiopathic patient, is hospitalized in the cardiology ward at the Goodcare General Hospital. Dr. Roose, who is the only doctor working in this ward prescribes some blood tests to decide which medicine is suitable for the patient.
The medicine will be administrated by nurse Davis only after Dr. Roose ePrescription.

In order to be notified when the laboratory report is ready, Dr. Roose submits a subscription for all the laboratory Report that will be produced with Mr. Smith as patient during the hospitalization.
Meanwhile nurse Davis who is working only in the cardiology ward uses her tablet to subscribe for documents created by Dr.Roose. 

When the laboratory has produced the report for Mr Smith, Dr Roose is promptly notified and once downloaded and examinated the report can make an ePrescription for the correct medicine that is needed to be given to the patient.
Once the ePrescription has been created another notification is sent to nurse Davis’s tablet. Now after downloading the ePrescription the nurse can give to Mr Smith the drug that Dr. Roose prescribed.

At the end of Mr Smith hospitalization, the software of Dr Roose automatically does the unsubscription for the laboratory documents. 


##### XX.4.2.1.2 Document Subscription for Mobile Device in MHDS Environment Process Flow

<div>
{%include usecase1-processflow.svg%}
</div>
<br clear="all">

Figure XX.4.2.1-1: Document Subscription for Mobile Device in MHDS Environment in Profile Acronym Profile

**Pre-conditions**:

The assumption is that systems share the information in a MHDS Environment.

**Main Flow**:

1. The nurse tablet has already performed a subscription for documents produced in cardiology field in order to be update with all the document that involves the cardiology ward operability. (Mobile Subscription ITI-Y1, patient indipendent subscription with explicit AuthorPerson = Dr. Roose).  
2. After requiring the blood tests to the Laboratory System the Hospital EHR perform a subscription to the Central Infrustructure in order to inform the Dr. Roose when the results will be available. (Mobile Subscription ITI-Y1, using the XDSSubmissionSet.IntendedRecipient = Dr. Roose).
3. When the Laboratory System has completed the analysis the results are sent to the Central Infrastructure. (Provide Document Bundle ITI-65).
4. The Central Infrastructure, having stored the metadata of the medical report, generates a message to inform the broker about the publication event. ([ITI-Y2] Mobile Publishing)
5. Since the  publication event of the medical report meets the subscription criteria performed by Hospital EHR the  Central Infrastructure will send a notification to the Hospital EHR. ([ITI-Y3] Mobile Notify)
6. After receiving the notification on the Hospital EHR, Dr. Roose can retrieve and consult the analysis results on the Hospital EHR in order to deicde which medicine is suitable for the patient (Retrieve Document [ITI-68]).
7. Dr. Roose from the Hospital EHR makes a ePrescription for the chosen drug. A document is submitted to the Central Infrastructure. (Provide  Document Bundle [ITI-65]).
8. The Central Infrastructure, having stored the metadata of the ePrescription, generates a message to inform the broker about the publication event. ([ITI-Y2] Mobile Publishing)
9. Since the the publication event of the ePrescription meets the subscription criteria performed by Nurse Tablet the Central Infrastructure will send a notification to the Nurse Tablet. ([ITI-Y3] Mobile Notify)
10. The Nurse upon seeing the notification on his tablet can retrieve the document in order to know which drug to prepare for the administration. (Retrieve Document [ITI-68]).
11. At the end of the clinical event when the patient is discharged, the Hospital EHR performs an automated unsubcription. (Mobile Subscription [ITI-Y1]).


#### XX.4.2.2 Use Case \#2: Document Subscription for Mobile Device in MHDS Environment using Folder Subscription

The update of a collection of document (Folder) is notified to a mobile Diabetological Healthcare Record (DHR).

##### XX.4.2.2.1 Document Subscription for Mobile Device Mobile Device in MHDS Environment using Folder Subscription Use Case Description

Dr. Rooney is taking charge of Ms. Williams a chronic patient. In order to adjust the therapy the doctor and the patient will perform a visit every month for the next 2 year. 

During the first visit Dr. Rooney uses the mobile DHR application to subscribe to the national Electronic Healthcare Record (EHR) in order to be notified for any update regarding Ms. Williams clinical data. The patient is sent home with the standard therapy.

Between the first and second visit the patient is not feeling well and is required an admission to the emergency room where some blood test are performed and the acute symptoms are taken care. 

When the blood test are published on the EHR a notification is sent to the mobile DHR used by Dr. Rooney and the new update are retrieved.
 
During the second visit Dr. Rooney uses the latest clinical information and adjust the therapy. 

A few days after the second visit Ms. Williams is forced again in the emergency room. Other test are performed and the medical report is updated in the EHR and a new notification is sent to the mobile DHR used by Dr. Rooney and the new update are retrieved.

During the third visit Ms. Williams decides that a different medic will take charge of her therapy. ThereFore Dr. Rooney closes the position on his mobile DHR and the subscription to the EHR is deleted.


##### XX.4.2.2.2 Document Subscription for Mobile Device in MHDS Environment using Folder Subscription Process Flow

<div>
{%include usecase2-processflow.svg%}
</div>
<br clear="all">

Figure XX.4.2.2-1: Document Subscription for Mobile Device in MHDS Environment using Folder Subscription in Profile Acronym Profile

**Pre-conditions**:

The assumption is that systems share the information in a MHDS Environment.

**Main Flow**:

1. During the first visit the mobile DHR application performs a folder subscription to the EHR and the therapy A is prescribed to Mr. Williams. ([ITI-Y1] Mobile Subscription )
2. After some days during an emergency a blood test analysis is performed on Mr. Williams  and the medical record is produced on the national EHR. ([ITI-65] Provide Document Bundle).
3. The publication of this medical report generates a message to inform the broker regarding the new event. ([ITI-Y2] Mobile Publishing)
4. A notification is sent to the DHR since the publication of the medical record generated an updated version of the folder in the EHR. ([ITI-Y3] Mobile Notify)
5. When the DHR receives the notification the mobile application will try to retrieve the resource by sending a Retrieve Document [ITI-68] to the ER.  The clinical data in the DHR is update. 
6. After some days during the second visit the Dr. Rooney use the updated clinical data to adjust the therapy from A to B.
7. After some days during an emergency event other analysis are performed on Mr. Williams and the medical record is produced on the national EHR. ([ITI-65] Provide Document Bundle).
8. The publication of this medical report generates a message to inform the broker regarding the new event. ([ITI-Y2] Mobile Publishing)
9. A notification is sent to the DHR since the publication of the medical record generated an updated version of the folder in the EHR. ([ITI-Y3] Mobile Notify)
10. When the DHR receives the notification the mobile application will try to retrieve the resource by sending a Retrieve Document [ITI-68] to the ER. The clinical data in the DHR is update. 
11. During the third visit the mobile DHR search the subscription performed on the folder present on the EHR. ([ITI-Y4] Mobile Subscription Search)
12. The mobile DHR deletes the folder subscription. ([ITI-Y1] Mobile Subscription.)


#### XX.4.2.3 Use Case \#3: Document Subscription for Mobile Device in XDS on FHIR Environment

The availability of a document for a Patient is notified in a mobile device.

##### XX.4.2.3.1 Document Subscription for Mobile Device in XDS on FHIR Environment Use Case Description

Mr. Brown went to see his doctor. During the examination the doctor decided that he will choose which prescription to make after seeing the blood test results. Meanwhile Mr. Brown is sent home because he has already submitted a subscription in order to receive a notification on his mobile app when the prescription will be ready.

When the doctor is notified that the blood test results are ready he can retrieve these results and decide which drug will be included in the prescription. 
When the prescription has been made Mr. Brown receives the notification on his phone. From the app he can now retrieve the prescription required to purchase the drug in the local pharmacy.

##### XX.4.2.3.2 Document Subscription for Mobile Device in XDS on FHIR Environment Process Flow

<div>
{%include usecase3-processflow.svg%}
</div>
<br clear="all">

Figure XX.4.2.3-1: Document Subscription for Mobile Device in XDS on FHIR Environment in Profile Acronym Profile

**Pre-conditions**:

The assumption is that systems share the information in a XDS on FHIR Environment.

**Main Flow**:

1. After the first login the mobile app performs an automatic subscription to the Central Infrastructure in order to be informed when a prescription is ready.([ITI-Y1] Mobile Subscription for patient and typeCode = ePrescription)
2. When the doctor makes the ePrescription a document is produced on the Repository and the metadata are sent to the Central Infrastructure ([ITI-42] Register Document Set-b).
3. The Central Infrastructure, having stored the metadata of the prescription, generates a message to inform the broker about the publication event. ([ITI-Y2] Mobile Publishing)
4. Since the the publication event of the prescription meets the subscription criteria the Central Infrastructure will send a notification to the mobile app. ([ITI-Y3] Mobile Notify)
5. When the user sees the notification on his app it is possible to retrieve the document. The app will try to retrieve the resource by sending a Retrieve Document [ITI-68] to the XDS FHIR interface. 
6. Upon receiving the Retrieve Document [ITI-68] the XDS FHIR interface tries to retrieve the document from the XDS Repository. Retrieve Document Set [ITI-43].
7. With the downloaded ePrescription the patient can now go to the local pharmacy to acquire the prescribed drug showing his mobile device.


#### XX.4.2.4 Use Case \#4: Document Subscription for Mobile Device in DSUB on FHIR Environment

The availability of a document for a Patient is notified in a mobile device.

##### XX.4.2.4.1 Document Subscription for Mobile Device in DSUB on FHIR Environment Use Case Description

Mr. Wayne has a prescription for a radiographic exam and he needs to book a Radiology Appointment from his mobile app. 
Since at the moment there are no available slots the radiology department will consult other facilities and, after some time, if an available slot is found a booking reservation will be produced. meanwhile the mobile app of Mr.Wayne will perform a subscription to the Central Infrastructure in order to receive a notification when the booking reservation is proposed to Mr. Wayne.
At the first notification the appointment is accepted by the patient and the subscription is cancelled. 


##### XX.4.2.4.2 Document Subscription for Mobile Device in DSUB on FHIR Environment Process Flow

<div>
{%include usecase4-processflow.svg%}
</div>
<br clear="all">

Figure XX.4.2.4-1: Document Subscription for Mobile Device in DSUB on FHIR Environment in Profile Acronym Profile

**Pre-conditions**:

The assumption is that systems share the information in a DSUB on FHIR Environment.

**Main Flow**:

1. The mobile app performs a patient dependent subscription specific for booking reservation. ([ITI-Y1] Mobile Subscription for patient and typeCode = booking reservation)
2. The DSUB interface translates the mobile subcription to a Document Metadata Subscribe [ITI-52] for the booking reservation that will produced for the patient. 
3. After some time a document for the booking reservation is produced and the metadata are stored in the Central Infrastructure.([ITI-42] Register Document Set-b).
4. The Central Infrastructure generates a message to inform the broker about the publication event. ([ITI-54] Document Metadata Publish)
5. Since the the publication event meets the subscription criteria the Central Infrastructure will send a notification to the DSUB interface. ([ITI-53] Document Metadata Notify)
6. The DSUb interface translates the notification received in a mobile notification for the mobile device ([ITI-Y3] mobile Notify)
7. The mobile device will try to retrieve the booking reservation. Retrieve Document Set [ITI-43]
8. When the user accept the appointment proposed the mobile device will unsubscribe the previous subscription made at step 1.  ([ITI-Y1] Mobile Subscription)


#### XX.4.2.5 Use Case \#5: Document Subscription for Mobile Device in DSUB Environment

The availability of a specific document for a Patient is notified in a mobile device.

##### XX.4.2.5.1 Document Subscription for Mobile Device in DSUB Environment Use Case Description

Dr. Gordon is a new medic hired by the geriatric ward of the Goodcare General Hospital. In this facility there is an app on every mobile device of any employee that acts as an active alert system. When a highly contagious disease is reported inside the geriatric ward an alert is spread in order to follow immediately quarantine protocols. 
When an analysis is conducted and is reported a highly contagious disease a specific document is produced to inform the department employees. 

##### XX.4.2.5.2 Document Subscription for Mobile Device in DSUB Process Flow

<div>
{%include usecase5-processflow.svg%}
</div>
<br clear="all">

Figure XX.4.2.5-1: Document Subscription for Mobile Device in DSUB Environment in Profile Acronym Profile

**Pre-conditions**:

The assumption is that systems share the information in a DSUB Environment.

**Main Flow**:

1. After the first login the mobile app performs an automatic subscription to the Broker in order to be informed when a specific medical report is produced and a highly contagious disease is reported inside the geriatric ward.([ITI-Y1] Mobile Subscription, patient indipendent by HealthcareFacilityTypeCode, ClassCode and EventCodeList)
2. When an analysis is conducted and a highly contagious disease is reported a specific document is published inside the Central Infrustructure.([ITI-42] Register Document Set-b)
3. The Central Infrastructure produce for every document a publication event and is trasmitted to the Notification Broker.([ITI-54] Document Metadata Publish)
4. The Notification Broker use internal mapping to translate the publication event in a mobile event. If this publication event satisfies the subsciption parameters explicited in step 1. a notification is sent to every mobile device. ([ITI-Y3] mobile Notify)
5. The Mobile Device will try to retrieve the document in order to inform the user with the specific location of the possible exposition. Quarantine protocols will be initiated.


## 1.XX.5 ToDo Security Considerations

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


## 1.XX.6 ToDo Cross-Profile Considerations

<a name="other-grouping"> </a>

This section is informative, not normative. It is intended to put
this profile in context with other profiles. Any required groupings
should have already been described above. Brief descriptions can go
directly into this section; lengthy descriptions should go into an
appendix. Examples of this material include ITI Cross Community Access
(XCA) Grouping Rules (Section 18.2.3), the Radiology associated profiles
listed at wiki.ihe.net, or ITI Volume 1 Appendix E “Cross Profile
Considerations”, and the “See Also” sections Radiology Profile
descriptions on the wiki such as
<http://wiki.ihe.net/index.php/Scheduled_Workflow#See_Also>. If this
section is left blank, add “Not applicable.”

Consider using a format such as the following:

other profile acronym - other profile name

A other profile actor name in other profile name might
be grouped with a this profile actor name to describe
benefit/what is accomplished by grouping.
