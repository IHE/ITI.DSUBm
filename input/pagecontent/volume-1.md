
# 1:XX DSUBm

IHE provides more profile for mobile use (e.g. SVCM, MHD, MHDS, NPFS), defining a lot of mobile items (FHIR resource, documents, etc.) that can be shared, searched and retrieved with mobile devices, but doesn’t provide a common framework for subscribing those items.

For documents, IHE provides an excellent tools to search and retrieve them through RESTful capabilities (MHD), but doesn’t address the subscription from a mobile device although it’s possible through non mobile application (DSUB).


**TODO: Provide an end-user friendly overview of what the profile does for them. Keep it brief (a paragraph or two, up to a page). If extensive detail is needed, it should be included in Section XX.4- Use Cases.**

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
implemented for Actor E. *

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

This transaction is used for a subscription requesting, by using a particular set of filters, or for a subscription deleting.. 

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

|         |             |
|---------|-------------|
| Actor   | Option Name |
| Actor A | Option AB  |
| Actor B | none |
{: .grid}

#### XX.2.1 AB Option

**TODO: describe this option and the Volume 1 requirements for this option

## 1.XX.3 ToDo Required Actor Groupings

<a name="required-groupings"> </a>

*Describe any requirements for actors in this profile to be grouped
with other actors.*

*This section specifies all REQUIRED Actor Groupings (although
“required” sometimes allows for a selection of one of several). To
SUGGEST other profile groupings or helpful references for other profiles
to consider, use Section XX.6 Cross Profile Considerations. Use Section
X.5 for security profile recommendations.*

An actor from this profile (Column 1) shall implement all of the
required transactions and/or content modules in this profile ***in
addition to*** ***<u>all</u>*** of the requirements for the grouped
actor (Column 2) (Column 3 in alternative 2).

If this is a content profile, and actors from this profile are grouped
with actors from a workflow or transport profile, the Reference column
references any specifications for mapping data from the content module
into data elements from the workflow or transport transactions.

In some cases, required groupings are defined as at least one of an
enumerated set of possible actors; this is designated by merging column
one into a single cell spanning multiple potential grouped actors. Notes
are used to highlight this situation.

Section XX.5 describes some optional groupings that may be of interest
for security considerations and Section XX.6 describes some optional
groupings in other related profiles.

Two alternatives for Table XX.3-1 are presented below.

-   If there are no required groupings for any actor in this profile,
    use alternative 1 as a template.

-   If an actor in this profile (with no option), has a required
    grouping, use alternative 1.

-   If any required grouping is associated with an actor/option
    combination in this profile, use alternative 2.

alternative 1 Table XX.3-1: Profile Name - Required Actor
Groupings

All actors from this profile should be listed in Column 1, even if
none of the actors has a required groupings. If no required grouping
exists, “None” should be indicated in Column 2. If an actor in a content
profile is required to be grouped with an actor in a transport or
workflow profile, it will be listed **with at least one** required
grouping. Do not use “XD\*” as an actor name.

In some cases, required groupings are defined as at least one of an
enumerated set of possible actors; to designate this, create a row for
each potential actor grouping and merge column one to form a single cell
containing the profile actor which should be grouped with at least one
of the actors in the spanned rows. In addition, a note should be
included to explain the enumerated set. See example below showing
Document Consumer needing to be grouped with at least one of XDS.b
Document Consumer, XDR Document Recipient or XDM Portable Media
Importer

The author should pay special consideration to security profiles in
this grouping section. Consideration should be given to Consistent Time
(CT) Client, ATNA Secure Node or Secure Application, as well as other
profiles. For the sake of clarity and completeness, even if this table
begins to become long, a line should be added for each actor for each of
the required grouping for security. Also see the ITI document titled
‘Cookbook: Preparing the IHE Profile Security Section’ at
<http://ihe.net/Technical_Frameworks/#IT> for a list of suggested IT and
security groupings.

<table border="1" borderspacing="0" style='border: 1px solid black; border-collapse: collapse'>
<thead>
<tr class="header">
<th>this Profile Acronym Actor</th>
<th>Actor(s) to be grouped with</th>
<th>Reference</th>
<th>Content Bindings Reference</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Actor A</td>
<td><p><em>external Domain Acronym or blank</em></p>
<p><em>profile acronym/Actor</em></p>
<p><em>e.g., ITI CT / Time Client</em></p></td>
<td><p><em>TF Reference; typically from Vol 1</em></p>
<p><em>e.g., ITI-TF-1: 7.1</em></p></td>
<td>--</td>
</tr>
<tr class="even">
<td>Actor B</td>
<td>None</td>
<td>--</td>
<td>--</td>
</tr>
<tr class="odd">
<td><p>Actor C</p>
<p><em>In this example, Actor C shall be grouped with all three actors listed in column 2</em></p></td>
<td><p><em>external Domain Acronym or blank</em></p>
<p><em>profile acronym/Actor</em></p></td>
<td>--</td>
<td>See Note 1</td>
</tr>
<tr class="even">
<td></td>
<td><em>external Domain Acronym or blank profile acronym/Actor</em></td>
<td>--</td>
<td>See Note 1</td>
</tr>
<tr class="odd">
<td></td>
<td><p><em>external Domain Acronym or blank</em></p>
<p><em>profile acronym/Actor</em></p></td>
<td>--</td>
<td>See Note 1</td>
</tr>
<tr class="even">
<td><p>Actor D <em>(See note 1)</em></p>
<p><em>In this example, the note is used to indicate that the Actor D shall be grouped with one or more of the two actors of the two actors in column 2.</em></p></td>
<td><p><em>external Domain Acronym or blank</em></p>
<p><em>profile acronym/Actor</em></p></td>
<td>--</td>
<td>See Note 1</td>
</tr>
<tr class="odd">
<td></td>
<td><p><em>external Domain Acronym or blank</em></p>
<p><em>profile acronym/Actor</em></p></td>
<td>--</td>
<td>See Note 1</td>
</tr>
<tr class="even">
<td><p>Actor E</p>
<p><em>In rare cases, the actor to be grouped with must implement an option. An example is in column 2.)</em></p></td>
<td><p><em>external Domain Acronym or blank</em></p>
<p><em>profile acronym Actor</em></p>
<p><em>e.g., ITI RFD Form Filler with the Archive Form Option</em></p></td>
<td><p><em>TF Reference to the Option definition; typically from Vol 1</em></p>
<p><em>(e.g., ITI TF-1: 17.3.11)</em></p></td>
<td></td>
</tr>
<tr class="odd">
<td><em>e.g., Content Consumer (See Note 1)</em></td>
<td><em>ITI XDS.b / Document Consumer</em></td>
<td><em>ITI TF-1: 10.1</em></td>
<td><em>PCC TF-2:4.1 (See Note 2)</em></td>
</tr>
<tr class="even">
<td></td>
<td><em>ITI XDR / Document Recipient</em></td>
<td><em>ITI TF-1: 15.1</em></td>
<td><em>PCC TF-2:4.1 (See Note 2)</em></td>
</tr>
<tr class="odd">
<td></td>
<td><em>ITI XDM / Portable Media Importer</em></td>
<td><em>ITI TF-1: 16.1</em></td>
<td><em>PCC TF-2:4.1 (See Note 2)</em></td>
</tr>
<tr class="even">
<td><em>e.g., Content Consumer</em></td>
<td><em>ITI CT / Time Client</em></td>
<td><em>ITI TF-1: 7.1</em></td>
<td>--</td>
</tr>
</tbody>
</table>

Note 1: *This is a short note. It may be used to describe situations
where an actor from this profile may be grouped with one of several
other profiles/actors.*

Note 2: *A note could also be used to explain why the grouping is
required, if that is still not clear from the text above.*

alternative 2 Table XX.3-1: this Profile Acronym Profile
- Required Actor Groupings

All actors from this profile should be listed in Column 1. If no
required grouping exists, “None” should be indicated in Column 3. 

Guidance on using the “Grouping Condition” column:

-   If an actor has no required grouping, Column 2 should contain “--“.
    See Actor A below.

-   If an actor has a required grouping that is not associated with a
    profile option (i.e., it has no condition), column 2 should contain
    “Required”. See Actor B below.

-   Sometimes an option requires that an actor in this profile be
    grouped with an actor in another profile. That condition is
    specified in Column 2. See Actor C below.

<table border="1" borderspacing="0" style='border: 1px solid black; border-collapse: collapse'>
<tbody>
<tr class="odd">
<td>this Profile Acronym Actor</td>
<td>Grouping Condition</td>
<td>Actor(s) to be grouped with</td>
<td>Reference</td>
</tr>
<tr class="even">
<td>Actor A</td>
<td>--</td>
<td>None</td>
<td>--</td>
</tr>
<tr class="odd">
<td>Actor B</td>
<td>Required</td>
<td><p><em>external Domain Acronym or blank profile acronym/Actor</em></p>
<p><em>e.g., ITI CT / Time Client</em></p></td>
<td><p><em>TF Reference; typically from Vol 1</em></p>
<p><em>(e.g., ITI TF-1: 7.1)</em></p></td>
</tr>
<tr class="even">
<td>Actor C</td>
<td>With the <em>Option name in this profile</em> Option</td>
<td><em>external Domain Acronym or blank profile acronym/Actor</em></td>
<td><em>Where the Option is defined in this profile Section XX.3 z</em></td>
</tr>
<tr class="odd">
<td><p>Actor D</p>
<p><em>if an actor has both required and conditional groupings, list the Required grouping first</em></p></td>
<td>Required</td>
<td><em>external Domain Acronym or blank profile acronym/Actor</em></td>
<td><em>TF Reference; typically from Vol 1</em></td>
</tr>
<tr class="even">
<td></td>
<td>If the <em>Option name in this profile</em> Option is supported.</td>
<td><em>external Domain Acronym or blank profile acronym/Actor</em></td>
<td><em>TF Reference; typically from Vol 1</em></td>
</tr>
<tr class="odd">
<td></td>
<td>If the <em>other Option name in this profile</em> Option is supported.</td>
<td><em>external Domain Acronym or blank profile acronym/Actor</em></td>
<td><em>TF Reference; typically from Vol 1</em></td>
</tr>
<tr class="even">
<td><p>Actor E</p>
<p><em>(In rare cases, the actor to be grouped with must implement an option, an example is in column 3)</em></p></td>
<td>Required</td>
<td><p><em>external Domain Acronym or blank profile acronym/Actor</em> with the <em>option name</em></p>
<p><em>e.g. ITI RFD Form Filler with the Archive Form Option</em></p></td>
<td><p><em>TF Reference to the Option definition; typically from Vol 1</em></p>
<p><em>(eg ITI TF-1:17.3.11)</em></p></td>
</tr>
</tbody>
</table>


## 1.XX.4 ToDo Overview

<a name="overview"> </a>

This section shows how the transactions/content modules of the profile
are combined to address the use cases.

Use cases are informative, not normative, and “SHALL” language is
not allowed in use cases.

### XX.4.1 Concepts

If needed, this section provides an overview of the concepts that
provide necessary background for understanding the profile. If not
needed, state “Not applicable.” For an example of why/how this section
may be needed, please see ITI Cross Enterprise Workflow (XDW).

It may be useful in this section but is not necessary, to provide a
short list of the use cases described below and explain why they are
different.

### XX.4.2 Use Cases

#### XX.4.2.1 Use Case \#1: Document Subscription for Mobile Device in MHDS Enviroment

The availability of a document for a Patient is notified in a mobile device.

Note that Section XX.4.2.1 repeats in its entirety for additional use
cases (replicate as Section XX.4.2.2, XX.4.2.3, etc.).

##### XX.4.2.1.1 Document Subscription for Mobile Device in MHDS Enviroment Use Case Description

Mr Smith, a cardiopathic patient, is hospitalized at the Goodcare General Hospital. During his admission he is assisted by Dr. Roose who prescribes some blood tests to decide which medicine is suitable for the patient.

In order to be notified when the laboratory report is ready, dr Roose submit a subscription for all the laboratory Report that will be produced while Mr Smith is hospitalized.
Nurse Davis who is taking care of Mr Smith also uses her tablet to subscribe for ePrescriptions of the drugs that must be administered to the patient.

In this way when the laboratory has produced the report for Mr Smith, Dr Roose is promptly notified and once downloaded and exminated the report can make an ePrescription for the correct medicine that is needed to be given to the patient.
Once the ePrescription has been created a notification is also created and nurse Davis’s tablet receives the notification and once she has downloaded the ePrescription can give to Mr Smith the right drug.

At the end of Mr Smith hospitalization, the software of Dr Roose automatically does the unsubscription for the laboratory documents. Nurse Davis from her tablet searches for the subscription and does the unsubscription.



##### XX.4.2.1.2 Document Subscription for Mobile Device in MHDS Enviroment Process Flow

<div>
{%include usecase1-processflow.svg%}
</div>
<br clear="all">

Figure XX.4.2.1-1: Document Subscription for Mobile Device in MHDS Enviroment in Profile Acronym Profile

**Pre-conditions**:

The assumption is that systems share the information in a MHDS Enviroment.

**Main Flow**:

Typically in an enumerated list, describe the clinical workflow
when, where, and how this content module would be used.

**Post-conditions:**

Very briefly (typically one sentence) describe the state of the
clinical scenario after this content module has been created including
examples of potential next steps.

#### XX.4.2.2 Use Case \#2: Document Subscription for Mobile Device in XDS on FHIR Enviroment

The availability of a document for a Patient is notified in a mobile device.

Note that Section XX.4.2.1 repeats in its entirety for additional use
cases (replicate as Section XX.4.2.2, XX.4.2.3, etc.).

##### XX.4.2.2.1 Document Subscription for Mobile Device in XDS on FHIR Enviroment Use Case Description

Mr Smith, a cardiopathic patient, is hospitalized at the Goodcare General Hospital. During his admission he is assisted by Dr. Roose who prescribes some blood tests to decide which medicine is suitable for the patient.

In order to be notified when the laboratory report is ready, dr Roose submit a subscription for all the laboratory Report that will be produced while Mr Smith is hospitalized.
Nurse Davis who is taking care of Mr Smith also uses her tablet to subscribe for ePrescriptions of the drugs that must be administered to the patient.

In this way when the laboratory has produced the report for Mr Smith, Dr Roose is promptly notified and once downloaded and exminated the report can make an ePrescription for the correct medicine that is needed to be given to the patient.
Once the ePrescription has been created a notification is also created and nurse Davis’s tablet receives the notification and once she has downloaded the ePrescription can give to Mr Smith the right drug.

At the end of Mr Smith hospitalization, the software of Dr Roose automatically does the unsubscription for the laboratory documents. Nurse Davis from her tablet searches for the subscription and does the unsubscription.


##### XX.4.2.2.2 Document Subscription for Mobile Device in XDS on FHIR Enviroment Process Flow

<div>
{%include usecase2-processflow.svg%}
</div>
<br clear="all">

Figure XX.4.2.2-1: Document Subscription for Mobile Device in XDS on FHIR Enviroment in Profile Acronym Profile

**Pre-conditions**:

The assumption is that systems share the information in a XDS on FHIR Enviroment.

**Main Flow**:

Typically in an enumerated list, describe the clinical workflow
when, where, and how this content module would be used.

**Post-conditions:**

Very briefly (typically one sentence) describe the state of the
clinical scenario after this content module has been created including
examples of potential next steps.

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




