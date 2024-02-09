## 1:54.1 DSUBm Actors, Transactions, and Content Modules

This section defines the actors and transactions in this implementation guide.

- Actors
  - [Resource Notification Broker](#154111-resource-notification-broker)
  - [Resource Notification Subscriber](#154112-resource-notification-subscriber)
  - [Resource Notification Publisher](#154113-resource-notification-publisher)
  - [Resource Notification Recipient](#154114-resource-notification-recipient)  
- Transactions
  - [Resource Subscription [ITI-110]](ITI-110.html)
  - [Resource Publish [ITI-111]](ITI-111.html)
  - [Resource Notify [ITI-112]](ITI-112.html)
  - [Resource Subscription Search [ITI-113]](ITI-113.html)
  - [Resource SubscriptionTopic Search [ITI-114]](ITI-114.html)

Figure 1:54.1-1 shows the actors directly involved in the DSUBm Profile and the relevant transactions between them.

<figure>
{%include ActorsAndTransactions.svg%}
<figcaption><b>Figure 1:54.1-1: DSUBm Actor Diagram</b></figcaption>
</figure>
<br clear="all">

Table 1:54.1-1 lists the transactions for each actor directly involved in the DSUBm Profile. To claim compliance with this profile, an actor SHALL support all REQUIRED transactions (labeled "R") and MAY support the optional transactions (labeled "O").

**Table 1:54.1-1: DSUBm Profile - Actors and Transactions**

|---------|---------------|------------------------|-----------------|-----------------------------------|
| **Actors**  | **Transactions**  | **Initiator or Responder** | **Optionality**                   |
| [Resource Notification Broker](#154111-resource-notification-broker)     | [Resource Subscription [ITI-110]](ITI-110.html)     | Responder    | R      | 
|                                | [Resource Publish [ITI-111]](ITI-111.html)           | Responder    | O     |
|                                | [Resource Notify [ITI-112]](ITI-112.html)           | Initiator    | R      | 
|                                | [Resource Subscription Search [ITI-113]](ITI-113.html)      | Responder    | R | 
|                                | [Resource SubscriptionTopic Search [ITI-114]](ITI-114.html)  | Responder    | R | 
| [Resource Notification Subscriber](#154112-resource-notification-subscriber) | [Resource Subscription [ITI-110]](ITI-110.html)             | Initiator    | R  | 
|                                | [Resource Subscription Search [ITI-113]](ITI-113.html)      | Initiator    | O   |
|                                | [Resource SubscriptionTopic Search [ITI-114]](ITI-114.html)  | Initiator    | O | 
| [Resource Notification Publisher](#154113-resource-notification-publisher)  | [Resource Publish [ITI-111]](ITI-111.html)               | Initiator    | R     |
| [Resource Notification Recipient](#154114-resource-notification-recipient)  | [Resource Notify [ITI-112]](ITI-112.html)             | Responder    | R     | 
{: .grid}

### 1:54.1.1 Actors

The actors in this profile are described in more detail in the following sections.

#### 1:54.1.1.1 Resource Notification Broker

The Resource Notification Broker is the receiver of the Resource Subscription transaction containing a subscription request or a subscription cancellation. It keeps track of all subscriptions it receives, including the time limits of subscriptions. Based on the subscription criteria, this actor sends notifications to interested subscribers when events occur. This actor MAY optionally receive Resource Publish transactions representing the stream of events against which the existing subscriptions are matched. It supports the search and retrieve of Subscription and SubscriptionTopic resource.

The following CapabilityStatements define the actor capabilities given the various Options:

- FHIR Capability Statement for [Resource Notification Broker](CapabilityStatement-IHE.DSUBm.ResourceNotificationBroker.html)

- FHIR Capability Statement for [Resource Notification Broker](CapabilityStatement-IHE.DSUBm.ResourceNotificationBroker.DocRef.MinUpd.html) that supports the [DocumentReference Subscription for Minimal Update](volume-1.html#15421-documentreference-subscription-for-minimal-update-option) option

- FHIR Capability Statement for [Resource Notification Broker](CapabilityStatement-IHE.DSUBm.ResourceNotificationBroker.DocRef.FullEvents.html) that supports the [DocumentReference Subscription for Full Events](volume-1.html#15422-documentreference-subscription-for-full-events-option) option

- FHIR Capability Statement for [Resource Notification Broker](CapabilityStatement-IHE.DSUBm.ResourceNotificationBroker.Folder.Basic.html) that supports the [Basic Folder Subscription](#15423-basic-folder-subscription-option) option

- FHIR Capability Statement for [Resource Notification Broker](CapabilityStatement-IHE.DSUBm.ResourceNotificationBroker.Folder.MinUpd.html) that supports the [Folder Subscription for Minimal Update option](#15424-folder-subscription-for-minimal-update-option) option

- FHIR Capability Statement for [Resource Notification Broker](CapabilityStatement-IHE.DSUBm.ResourceNotificationBroker.Folder.Upd.html) that supports the [Folder Subscription for Update option](#15425-folder-subscription-for-update-option) option

- FHIR Capability Statement for [Resource Notification Broker](CapabilityStatement-IHE.DSUBm.ResourceNotificationBroker.Folder.FullEvents.html) that supports the [Folder Subscription for Full Events option](#15426-folder-subscription-for-full-events-option) option

#### 1:54.1.1.2 Resource Notification Subscriber

The Resource Notification Subscriber initiates and terminates subscriptions on behalf of a Resource Notification Recipient. It can perform a Resource Subscription Search transaction to the Resource Notification Broker for existing subscription search. It also can perform a Resource SubscriptionTopic Search transaction to the Resource Notification Broker for searching the SubscriptionTopic.

The following CapabilityStatements define the actor capabilities given the various Options:

- FHIR Capability Statement for [Resource Notification Subscriber](CapabilityStatement-IHE.DSUBm.ResourceNotificationSubscriber.html)

- FHIR Capability Statement for [Resource Notification Subscriber](CapabilityStatement-IHE.DSUBm.ResourceNotificationSubscriber.DocRef.MinUpd.html) that supports the [DocumentReference Subscription for Minimal Update](volume-1.html#15421-documentreference-subscription-for-minimal-update-option) option

- FHIR Capability Statement for [Resource Notification Subscriber](CapabilityStatement-IHE.DSUBm.ResourceNotificationSubscriber.DocRef.FullEvents.html) that supports the [DocumentReference Subscription for Full Events](volume-1.html#15422-documentreference-subscription-for-full-events-option) option

- FHIR Capability Statement for [Resource Notification Subscriber](CapabilityStatement-IHE.DSUBm.ResourceNotificationSubscriber.Folder.Basic.html) that supports the [Basic Folder Subscription](#15423-basic-folder-subscription-option) option

- FHIR Capability Statement for [Resource Notification Subscriber](CapabilityStatement-IHE.DSUBm.ResourceNotificationSubscriber.Folder.MinUpd.html) that supports the [Folder Subscription for Minimal Update option](#15424-folder-subscription-for-minimal-update-option) option

- FHIR Capability Statement for [Resource Notification Subscriber](CapabilityStatement-IHE.DSUBm.ResourceNotificationSubscriber.Folder.Upd.html) that supports the [Folder Subscription for Update option](#15425-folder-subscription-for-update-option) option

- FHIR Capability Statement for [Resource Notification Subscriber](CapabilityStatement-IHE.DSUBm.ResourceNotificationSubscriber.Folder.FullEvents.html) that supports the [Folder Subscription for Full Events option](#15426-folder-subscription-for-full-events-option) option

#### 1:54.1.1.3 Resource Notification Publisher

The Resource Notification Publisher sends a Resource Publish transaction to the Resource Notification Broker when an event occurs for which a subscription MAY exist. Note that this profile does not specify how the Resource Notification Publisher becomes aware of those events.

The following CapabilityStatements define the actor capabilities given the various Options:

- FHIR Capability Statement for [Resource Notification Publisher](CapabilityStatement-IHE.DSUBm.ResourceNotificationPublisher.html)

- FHIR Capability Statement for [Resource Notification Publisher](CapabilityStatement-IHE.DSUBm.ResourceNotificationPublisher.DocRef.MinUpd.html) that supports the [DocumentReference Subscription for Minimal Update](volume-1.html#15421-documentreference-subscription-for-minimal-update-option) option

- FHIR Capability Statement for [Resource Notification Publisher](CapabilityStatement-IHE.DSUBm.ResourceNotificationPublisher.DocRef.FullEvents.html) that supports the [DocumentReference Subscription for Full Events](volume-1.html#15422-documentreference-subscription-for-full-events-option) option

- FHIR Capability Statement for [Resource Notification Publisher](CapabilityStatement-IHE.DSUBm.ResourceNotificationPublisher.Folder.Basic.html) that supports the [Basic Folder Subscription](#15423-basic-folder-subscription-option) option

- FHIR Capability Statement for [Resource Notification Publisher](CapabilityStatement-IHE.DSUBm.ResourceNotificationPublisher.Folder.MinUpd.html) that supports the [Folder Subscription for Minimal Update option](#15424-folder-subscription-for-minimal-update-option) option

- FHIR Capability Statement for [Resource Notification Publisher](CapabilityStatement-IHE.DSUBm.ResourceNotificationPublisher.Folder.Upd.html) that supports the [Folder Subscription for Update option](#15425-folder-subscription-for-update-option) option

- FHIR Capability Statement for [Resource Notification Publisher](CapabilityStatement-IHE.DSUBm.ResourceNotificationPublisher.Folder.FullEvents.html) that supports the [Folder Subscription for Full Events option](#15426-folder-subscription-for-full-events-option) option

#### 1:54.1.1.4 Resource Notification Recipient

The Resource Notification Recipient receives the notification about an event when the subscription filters specified for this Document Resource Notification Recipient are satisfied.

FHIR Capability Statement for [Resource Notification Recipient](CapabilityStatement-IHE.DSUBm.ResourceNotificationRecipient.html).

### 1:54.1.2 Transaction Descriptions

The transactions in this profile are summarized in the sections below.

#### 1:54.1.2.1 Resource Subscription [ITI-110]

This transaction is used for subscribing Documents, by using a particular set of filters, or for unsubscribe, using `Subscription` resources.

For more details see the detailed [[ITI-110] transaction description](ITI-110.html).

#### 1:54.1.2.2 Resource Publish [ITI-111]

This transaction delivers information from the Resource Notification Publisher to the Resource Notification Broker about an event that MAY have a subscription.

For more details see the detailed [[ITI-111] transaction description](ITI-111.html).

#### 1:54.1.2.3 Resource Notify [ITI-112]

This transaction is used for sending notifications to a Resource Notification Recipient related to a subscription.

For more details see the detailed [[ITI-112] transaction description](ITI-112.html).

#### 1:54.1.2.4 Resource Subscription Search [ITI-113]

This transaction is used for searching existing `Subscription` Resources.

For more details see the detailed [[ITI-113] transaction description](ITI-113.html).

#### 1:54.1.2.5 Resource SubscriptionTopic Search [ITI-114]

This transaction is used for searching existing `SubscriptionTopic` Resources.

For more details see the detailed [[ITI-114] transaction description](ITI-114.html).

## 1:54.2 Actor Options

Optional functionality that MAY be implemented for each actor in this implementation guide are listed in Table 1:54.2-1 below. Dependencies 
between options when applicable are specified in notes.

**Table 1:54.2-1: Actor Options**

| **Actors** | **Option Name** |
|---------|-------------|-------------|
| [Resource Notification Broker](#154111-resource-notification-broker) | [DocumentReference Subscription for Minimal Update](#15421-documentreference-subscription-for-minimal-update-option) |
|                              | [DocumentReference Subscription for Full Events](#15422-documentreference-subscription-for-full-events-option) |
|                              | [Basic Folder Subscription](#15423-basic-folder-subscription-option) |
|                              | [Folder Subscription for Minimal Update](#15424-folder-subscription-for-minimal-update-option) |
|                              | [Folder Subscription for Update](#15425-folder-subscription-for-update-option) |
|                              | [Folder Subscription for Full Events](#15426-folder-subscription-for-full-events-option) |
| [Resource Notification Subscriber](#154112-resource-notification-subscriber) | [DocumentReference Subscription for Minimal Update](#15421-documentreference-subscription-for-minimal-update-option) |
|                              | [DocumentReference Subscription for Full Events](#15422-documentreference-subscription-for-full-events-option) |
|                              | [Basic Folder Subscription](#15423-basic-folder-subscription-option) |
|                              | [Folder Subscription for Minimal Update](#15424-folder-subscription-for-minimal-update-option) |
|                              | [Folder Subscription for Update](#15425-folder-subscription-for-update-option) |
|                              | [Folder Subscription for Full Events](#15426-folder-subscription-for-full-events-option) |
| [Resource Notification Publisher](#154113-resource-notification-publisher) |  [DocumentReference Subscription for Minimal Update](#15421-documentreference-subscription-for-minimal-update-option) |
|                              | [DocumentReference Subscription for Full Events](#15422-documentreference-subscription-for-full-events-option) |
|                              | [Basic Folder Subscription](#15423-basic-folder-subscription-option) |
|                              | [Folder Subscription for Minimal Update](#15424-folder-subscription-for-minimal-update-option) |
|                              | [Folder Subscription for Update](#15425-folder-subscription-for-update-option) |
|                              | [Folder Subscription for Full Events](#15426-folder-subscription-for-full-events-option) |
| [Resource Notification Recipient](#154114-resource-notification-recipient) | none |
{: .grid}


#### 1:54.2.1 DocumentReference Subscription for Minimal Update option

This option extends the basic trigger events considered for a DocumentReference Subscription.  


This option extends the triggers for the creation of a DocumentReference resource to also include updates of the document “status” and delete events of a DocumentReference Resource.


This option limited the Update events because Resource Notification Brokers that are not operating as native FHIR servers might not have the ability to notify for all possible update events.

The Resource Notification Broker that declares support for this option SHALL implement the Subscription defined in Section [2:3.110.4.1.2.1.1 Subscription with DocumentReference Subscription for Minimal Update option](ITI-110.html#2311041211-subscription-with-documentreference-subscription-for-minimal-update-option) and the related SubscriptionTopic, accepting these type of Subscription sent from a Resource Notification Subscriber.

The Resource Notification Subscriber that declares support for this option SHALL implement the Subscription defined in Section [2:3.110.4.1.2.1.1 Subscription with DocumentReference Subscription for Minimal Update option](ITI-110.html#2311041211-subscription-with-documentreference-subscription-for-minimal-update-option).

The Resource Notification Publisher that declares support for this option SHALL implements the Resource Publish [ITI-111] transaction for the triggers events defined in Section [2:3.111.4.1.1.1 DocumentReference Subscription for Minimal Update option Trigger Events](ITI-111.html#231114111-documentreference-subscription-for-minimal-update-option-trigger-events) and to communicate the stream of events to the Resource Notification Broker as defined in Section [2:3.111.4.1.2.1 DocumentReference Subscription for Minimal Update option Bundle](ITI-111.html#231114121-documentreference-subscription-for-minimal-update-option-bundle).

#### 1:54.2.2 DocumentReference Subscription for Full Events option

This option extends the basic trigger events considered for a DocumentReference Subscription.  

This option extends the triggers for the creation of a DocumentReference resource to include all possible update events and delete events of a DocumentReference Resource.

The Resource Notification Broker that declares support for this option SHALL implement the Subscription defined in Section [2:3.110.4.1.2.1.2 Subscription with DocumentReference Subscription for Full Events option](ITI-110.html#2311041212-subscription-with-documentreference-subscription-for-), and the related SubscriptionTopic, accepting these type of Subscription sent from a Resource Notification Subscriber.

The Resource Notification Subscriber that declares support for this option SHALL support the Subscription defined in Section [2:3.110.4.1.2.1.2 Subscription with DocumentReference Subscription for Full Events option](ITI-110.html#2311041212-subscription-with-documentreference-subscription-for-).

The Resource Notification Publisher that declares support for this option SHALL implements the Resource Publish [ITI-111] transaction for the triggers events defined in Section in Section [2:3.111.4.1.1.2 DocumentReference Subscription for Full Events option Trigger Events](ITI-111.html#231114112-documentreference-subscription-for-full-events-option-trigger-events) and to communicate the stream of events to the Resource Notification Broker as defined in Section [2:3.111.4.1.2.2 DocumentReference Subscription for Full Events option Bundle](ITI-111.html#231114122-documentreference-subscription-for-full-events-option-bundle).

#### 1:54.2.3 Basic Folder Subscription option

This option permits to subscribe for Folder type List Resource and describe the basic trigger events considered for a Folder Subscription.

This option includes triggers about the creation and limited update events on a Folder type List Resource. The limited update event considered is the insertion of a new document in the Folder. 

This option limits the update events to reduce the effort on the Resource Notification Broker. This limitations has been introduced because the Resource Notification Broker that are not operating as native FHIR servers might not have the ability to notify for all the possible update events.

The Resource Notification Broker that declares support for this option SHALL implement the Subscription defined in Section [2:3.110.4.1.2.1.3 Subscription with Basic Folder Subscription option](ITI-110.html#2311041213-subscription-with-basic-folder-subscription-option), and the related SubscriptionTopic, accepting these type of Subscription sent from a Resource Notification Subscriber.

The Resource Notification Subscriber that declares support for this option SHALL implement the Subscription defined in Section [2:3.110.4.1.2.1.3 Subscription with Basic Folder Subscription option](ITI-110.html#2311041213-subscription-with-basic-folder-subscription-option).

The Resource Notification Publisher that declares support for this option SHALL also implement in the Resource Publish [ITI-111] transaction the triggers events defined in Section [2:3.111.4.1.1.3 Basic Folder Subscription option Trigger Events](ITI-111.html#231114113-basic-folder-subscription-option-trigger-events) and to communicate the stream of events to the Resource Notification Broker as defined in Section [2:3.111.4.1.2.3 Subscription with Basic Folder Subscription option Bundle](ITI-111.html#231114123-subscription-with-basic-folder-subscription-option-bundle).

#### 1:54.2.4 Folder Subscription for Minimal Update option

This option permits to subscribe for Folder type List Resource and extends the basic trigger events considered for a Folder Subscription.  

This option includes triggers about the creation of a Folder type List Resource and the update of a Folder type List Resource. The update of this resource consider only the following possible events: 
- The insertion of a new document in the Folder 
- The removal of a document from the Folder 
- The update of the "status"

This option limits the triggers related to update events for Folder Subscription in order to reduce the effort on the Resource Notification Brokers considering only the most common update events on Folder objects. This limitation has been introduced because the Resource Notification Brokers that are not operating as native FHIR servers might not have the ability to notify for all Updates events.

The Resource Notification Broker that declares support for this option SHALL implement the Subscription defined in Section [2:3.110.4.1.2.1.4 Subscription with Folder Subscription for Minimal Update option](ITI-110.html#2311041214-subscription-with-folder-subscription-for-minimal-update-option), and the related SubscriptionTopic, accepting these type of Subscription sent from a Resource Notification Subscriber.

The Resource Notification Subscriber that declares support for this option SHALL implement the Subscription defined in Section [2:3.110.4.1.2.1.4 Subscription with Folder Subscription for Minimal Update option](ITI-110.html#2311041214-subscription-with-folder-subscription-for-minimal-update-option).

The Resource Notification Publisher that declares support for this option SHALL also implement in the Resource Publish [ITI-111] transaction the triggers events defined in Section [2:3.111.4.1.1.4 Folder Subscription for Minimal Update option Trigger Events](ITI-111.html#231114114-folder-subscription-for-minimal-update-option-trigger-events) and to communicate the stream of events to the Resource Notification Broker as defined in Section [2:3.111.4.1.2.4 Folder Subscription for Minimal Update option Bundle](ITI-111.html#231114124-folder-subscription-for-minimal-update-option-bundle).

#### 1:54.2.5 Folder Subscription for Update option

This option permits to subscribe for Folder type List Resource and extends the trigger events considered for a Folder Subscription.  

This option includes the creation of a Folder type List Resource and all possible update events of a Folder type List Resource events. (The delete event of a Folder is not considered.)

The Resource Notification Broker that declares support for this option SHALL implement the Subscription defined in Section [2:3.110.4.1.2.1.5 Subscription with Folder Subscription for Update option](ITI-110.html#2311041215-subscription-with-folder-subscription-for-update-option), and the related SubscriptionTopic, accepting these type of Subscription sent from a Resource Notification Subscriber.

The Resource Notification Subscriber that declares support for this option SHALL implement the Subscription defined in Section [2:3.110.4.1.2.1.5 Subscription with Folder Subscription for Update option](ITI-110.html#2311041215-subscription-with-folder-subscription-for-update-option).

The Resource Notification Publisher that declares support for this option SHALL also implement in the Resource Publish [ITI-111] transaction the triggers events defined in Section [2:3.111.4.1.1.5 Folder Subscription for Update option Trigger Events](ITI-111.html#231114115-folder-subscription-for-update-option-trigger-events) and to communicate the stream of events to the Resource Notification Broker as defined in Section [2:3.111.4.1.2.5 Folder Subscription for Update option Bundle](ITI-111.html#231114125-folder-subscription-for-update-option-bundle).

#### 1:54.2.6 Folder Subscription for Full Events option

This option permits to subscribe for Folder type List Resource and extends the trigger events considered for a Folder Subscription.  

This option includes as triggers all the possible events on a Folder resource.
This option includes as triggers: the creation of a Folder type List Resource, all possible update events of a Folder type List Resource events and the delete event of a Folder type List Resource.

The Resource Notification Broker that declares support for this option SHALL implement the Subscription defined in Section [2:3.110.4.1.2.1.6 Subscription with Folder Subscription for Full Events option](ITI-110.html#2311041216-subscription-with-folder-subscription-for-full-events-option), and the related SubscriptionTopic, accepting these type of Subscription sent from a Resource Notification Subscriber.

The Resource Notification Subscriber that declares support for this option SHALL implement the Subscription defined in Section [2:3.110.4.1.2.1.6 Subscription with Folder Subscription for Full Events option](ITI-110.html#2311041216-subscription-with-folder-subscription-for-full-events-option).

The Resource Notification Publisher that declares support for this option SHALL also implement in the Resource Publish [ITI-111] transaction the triggers events defined in Section [2:3.111.4.1.1.6 Folder Subscription for Full Events option Trigger Events](ITI-111.html#231114116-folder-subscription-for-full-events-option-trigger-events) and to communicate the stream of events to the Resource Notification Broker as defined in Section [2:3.111.4.1.2.6 Folder Subscription for Full Events option Bundle](ITI-111.html#231114126-folder-subscription-for-full-events-option-bundle).


#### 1:54.2.7 Overview on Events and Options

In this section is reported a practical overview about the events on patient documents that are considered in this profile and the Options that consent these events to be notified. Plus, it is enlightened the transactions which concur to these events in the principal document sharing environment, [Mobile Health Document Sharing](https://profiles.ihe.net/ITI/TF/Volume1/ch-50.html#50) and [XDS.b](https://profiles.ihe.net/ITI/TF/Volume1/ch-10.html).

In Table 1:54.2.7-1 are reported the event related to the DocumentReference and SubmissionSet type List resources. In Table 1:54.2.7-2 are reported the event related to the Folder type List resources. 

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-c3ow{border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-fymr{border-color:inherit;font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-fymr">Event</th>
    <th class="tg-fymr">MHDS environment transaction</th>
    <th class="tg-fymr">XDS environment transaction</th>
    <th class="tg-fymr">Default implementation</th>
    <th class="tg-fymr"> DocumentReference Subscription for Minimal Update option</th>
    <th class="tg-fymr">DocumentReference Subscription for Full Events option</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0pky">Creation of a new SubmissionSet (i.e. the creation of a SubmissionSet type List resource)</td>
    <td class="tg-0pky">Provide Document Bundle <a href="https://profiles.ihe.net/ITI/MHD/ITI-65.html"><span>[ITI-65]</span></a></td>
    <td class="tg-0pky">Register Document Set-b <a href="https://profiles.ihe.net/ITI/TF/Volume2/ITI-42.html"><span>[ITI-42]</span></a><br><br>Register On-Demand Document Entry <a href="https://profiles.ihe.net/ITI/TF/Volume2/ITI-61.html"><span>[ITI-61]</span></a></td>
    <td class="tg-c3ow">X</td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
  </tr>
  <tr>
    <td class="tg-0pky">New document available (i.e. creation of a DocumentReference resource)</td>
    <td class="tg-0pky">Provide Document Bundle <a href="https://profiles.ihe.net/ITI/MHD/ITI-65.html"><span>[ITI-65]</span></a></td>
    <td class="tg-0pky">Register Document Set-b <a href="https://profiles.ihe.net/ITI/TF/Volume2/ITI-42.html"><span>[ITI-42]</span></a><br><br>Register On-Demand Document Entry <a href="https://profiles.ihe.net/ITI/TF/Volume2/ITI-61.html"><span>[ITI-61]</span></a></td>
    <td class="tg-c3ow">X</td>
    <td class="tg-c3ow">X</td>
    <td class="tg-c3ow">X</td>
  </tr>
  <tr>
    <td class="tg-0pky">Update of the metadata status of a document (i.e. update of the DocumentReference status)</td>
    <td class="tg-0pky">Provide Document Bundle <a href="https://profiles.ihe.net/ITI/MHD/ITI-65.html"><span>[ITI-65]</span></a></td>
    <td class="tg-0pky">Register Document Set-b <a href="https://profiles.ihe.net/ITI/TF/Volume2/ITI-42.html"><span>[ITI-42]</span></a><br><br><br><br>Register On-Demand Document Entry <a href="https://profiles.ihe.net/ITI/TF/Volume2/ITI-61.html"><span>[ITI-61]</span></a><br><br>Update Document Set <a href="https://profiles.ihe.net/ITI/TF/Volume2/ITI-57.html"><span>[ITI-57]</span></a></td>
    <td class="tg-0pky"></td>
    <td class="tg-c3ow">X</td>
    <td class="tg-c3ow">X</td>
  </tr>
  <tr>
    <td class="tg-0pky">Delete of a document (i.e. delete of a DocumentReference resource)</td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky">Remove Metadata <a href="https://profiles.ihe.net/ITI/TF/Volume2/ITI-62.html"><span>[ITI-62]</span></a></td>
    <td class="tg-0pky"></td>
    <td class="tg-c3ow">X</td>
    <td class="tg-c3ow">X</td>
  </tr>
  <tr>
    <td class="tg-0pky">Update of all the metadata of a document (i.e. update of the DocumentReference resource)</td>
    <td class="tg-0pky">Provide Document Bundle <a href="https://profiles.ihe.net/ITI/MHD/ITI-65.html"><span>[ITI-65]</span></a></td>
    <td class="tg-0pky">Register Document Set-b <a href="https://profiles.ihe.net/ITI/TF/Volume2/ITI-42.html"><span>[ITI-42]</span></a><br><br><br><br>Register On-Demand Document Entry <a href="https://profiles.ihe.net/ITI/TF/Volume2/ITI-61.html"><span>[ITI-61]</span></a><br><br>Update Document Set <a href="https://profiles.ihe.net/ITI/TF/Volume2/ITI-57.html"><span>[ITI-57]</span></a><br><br>Restricted Update Document Set <a href="https://profiles.ihe.net/ITI/TF/Volume2/ITI-92.html"><span>[ITI-92]</span></a></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-c3ow">X</td>
  </tr>
</tbody>
</table>

**Table 1:54.2.7-2: Events and Options overview for Folder type List resource**

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-c3ow{border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-fymr{border-color:inherit;font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-fymr">Event</th>
    <th class="tg-fymr">MHDS environment transaction</th>
    <th class="tg-fymr">XDS environment transaction</th>
    <th class="tg-fymr">Basic Folder Subscription option</th>
    <th class="tg-fymr">Folder Subscription for Minimal Update option</th>
    <th class="tg-fymr">Folder Subscription for Update option</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0pky">Creation of a new Folder (i.e. the creation of a Folder type List resource)</td>
    <td class="tg-0pky">Provide Document Bundle <a href="https://profiles.ihe.net/ITI/MHD/ITI-65.html"><span>[ITI-65]</span></a></td>
    <td class="tg-0pky">Register Document Set-b <a href="https://profiles.ihe.net/ITI/TF/Volume2/ITI-42.html"><span>[ITI-42]</span></a><br><br>Register On-Demand Document Entry <a href="https://profiles.ihe.net/ITI/TF/Volume2/ITI-61.html"><span>[ITI-61]</span></a></td>
    <td class="tg-c3ow">X</td>
    <td class="tg-c3ow">X</td>
    <td class="tg-c3ow">X</td>
  </tr>
  <tr>
    <td class="tg-0pky">Insert a new document in a Folder (i.e. update a Folder type List resource with a new DocumentReference link)</td>
    <td class="tg-0pky">Provide Document Bundle <a href="https://profiles.ihe.net/ITI/MHD/ITI-65.html"><span>[ITI-65]</span></a></td>
    <td class="tg-0pky">Register Document Set-b <a href="https://profiles.ihe.net/ITI/TF/Volume2/ITI-42.html"><span>[ITI-42]</span></a><br><br>Update Document Set <a href="https://profiles.ihe.net/ITI/TF/Volume2/ITI-57.html"><span>[ITI-57]</span></a><br><br>Register On-Demand Document Entry <a href="https://profiles.ihe.net/ITI/TF/Volume2/ITI-61.html"><span>[ITI-61]</span></a></td>
    <td class="tg-c3ow">X</td>
    <td class="tg-c3ow">X</td>
    <td class="tg-c3ow">X</td>
  </tr>
  <tr>
    <td class="tg-0pky">Removal of a document from a Folder (i.e. update a Folder type List resource erasing a DocumentReference link)</td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky">Update Document Set <a href="https://profiles.ihe.net/ITI/TF/Volume2/ITI-57.html"><span>[ITI-57]</span></a><br><br>Remove Metadata <a href="https://profiles.ihe.net/ITI/TF/Volume2/ITI-62.html"><span>[ITI-62]</span></a></td>
    <td class="tg-0pky"></td>
    <td class="tg-c3ow">X</td>
    <td class="tg-c3ow">X</td>
  </tr>
  <tr>
    <td class="tg-0pky">Update of the metadata status of a Folder (i.e. update of the Folder type List status)</td>
    <td class="tg-0pky">Provide Document Bundle <a href="https://profiles.ihe.net/ITI/MHD/ITI-65.html"><span>[ITI-65]</span></a></td>
    <td class="tg-0pky">Update Document Set <a href="https://profiles.ihe.net/ITI/TF/Volume2/ITI-57.html"><span>[ITI-57]</span></a></td>
    <td class="tg-0pky"></td>
    <td class="tg-c3ow">X</td>
    <td class="tg-c3ow">X</td>
  </tr>
  <tr>
    <td class="tg-0pky">Update of a Folder (i.e. the update of a Folder type List resource</td>
    <td class="tg-0pky">Provide Document Bundle <a href="https://profiles.ihe.net/ITI/MHD/ITI-65.html"><span>[ITI-65](https://profiles.ihe.net/ITI/MHD/ITI-65.html)</span></a></td>
    <td class="tg-0pky">Register Document Set-b <a href="https://profiles.ihe.net/ITI/TF/Volume2/ITI-42.html"><span>[ITI-42](https://profiles.ihe.net/ITI/TF/Volume2/ITI-42.html)</span></a><br><br>Update Document Set <a href="https://profiles.ihe.net/ITI/TF/Volume2/ITI-57.html"><span>[ITI-57](https://profiles.ihe.net/ITI/TF/Volume2/ITI-57.html)</span></a><br><br>Register On-Demand Document Entry <a href="https://profiles.ihe.net/ITI/TF/Volume2/ITI-61.html"><span>[ITI-61](https://profiles.ihe.net/ITI/TF/Volume2/ITI-61.html)</span></a></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-c3ow">X</td>
  </tr>
</tbody>
</table>

## 1:54.3 Required Actor Groupings
This profile does not mandate grouping with other actors.

## 1:54.4 DSUBm Overview

This section shows how the transactions and content modules of the profile are combined to address the use cases.

### 1:54.4.1 Concepts

The DSUBm profile enables mobile subscriptions for patient documents.
The subscription mechanism is very flexible and can be adapted to many use cases depending on the type of subscription used and the environment in which DSUBm is implemented, especially where that environment works for sharing these documents. Other IHE profiles, chiefly [Cross-Enterprise Document Sharing (XDS.b)](https://profiles.ihe.net/ITI/TF/Volume1/ch-10.html) and [Mobile access to Health Documents (MHD)](https://profiles.ihe.net/ITI/MHD), describe sharing of patient document, and many of the sharing documents concepts used in this profile are explained there. Also, for more information on IHE Document Sharing, see [Health Information Exchange: Enabling Document Sharing Using IHE Profiles](https://profiles.ihe.net/ITI/HIE-Whitepaper/index.html) White Paper.

In the following use cases, different subscription types are presented. These subscriptions can be explicit for a specific patient (patient-dependent subscription) or can be expressed without a specific patient; hence, covering all patients (in this case they are referred as multi-patient subscriptions). 
The use cases cover both a fully mobile environment, for example MHDS implementations (see [Mobile Health Document Sharing](https://profiles.ihe.net/ITI/TF/Volume1/ch-50.html#50)) and environments in which the main infrastructure is [XDS.b](https://profiles.ihe.net/ITI/TF/Volume1/ch-10.html).
These use cases present also the possibility in which DSUB and DSUBm coexist and both are available to the users.

### 1:54.4.2 Use Cases

#### 1:54.4.2.1 Use Case \#1: Document Subscription for mobile applications in MHDS Environment

The availability of a document is notified to Hospital systems, where the main sharing infrastructure is based on MHDS.

##### 1:54.4.2.1.1 Document Subscription for mobile applications in MHDS Environment Use Case Description

Mr. Smith, a cardiac patient, is hospitalized in the cardiology ward at the Goodcare General Hospital. Dr. Roose, who is the only doctor working in this ward at that moment, prescribes some blood tests to decide which medicine is suitable for the patient.
The medicine will be administrated by Nurse Davis only after Dr. Roose's ePrescription.

In order to be notified when the laboratory report is ready, the software of Dr. Roose submits a subscription for all the laboratory reports that will be produced for Mr. Smith during his hospitalization.
Meanwhile Nurse Davis, that works in the cardiology ward, is waiting to receive the notification of the ePrescription on her tablet, to know what medication has to be given to her patients in her cardiology ward. 

When the laboratory has produced the report for Mr. Smith, Dr. Roose is promptly notified and, once downloaded and examined the report, he can make an ePrescription for the correct medicine that is needed to be given to the patient.
Once the ePrescription has been created a notification is sent to Nurse Davis’s tablet. After downloading the ePrescription, the nurse can give Mr. Smith the drug that Dr. Roose prescribed.

At the end of Mr. Smith's hospitalization, the software of Dr. Roose automatically unsubscribes for the laboratory documents. 

##### 1:54.4.2.1.2 Document Subscription for mobile applications in MHDS Environment Process Flow

<figure>
{%include usecase1-processflow.svg%}
<figcaption><b>1:54.4.2.1.2-1: Document Subscription for mobile applications in MHDS Environment in DSUBm</b></figcaption>
</figure>
<br clear="all">

**Pre-conditions**:

The assumption is that systems share the information in an MHDS Environment. In the environment is implemented Central Infrastructure where the MHDS Registry is grouped by the DSUBm Resource Notification Broker. The systems share and retrieve the documents by implementing MHD Document Source and/or MHD Document Consumer.

**Main Flow**:

1. The nurse tablet has already performed a subscription for documents produced in the cardiology field in order to be updated with all the documents that involve the cardiology ward operability. (Resource Subscription [ITI-110], multi-patient DocumentReference Subscription.)
2. After requiring the blood tests to the Laboratory System the Hospital EHR performs a subscription to the Central Infrastructure in order to inform Dr. Roose when the results will be available. (Resource Subscription [ITI-110], indicating the patient and the typeCode in the criteria.)
3. When the Laboratory System has completed the analysis, the results are sent to the Central Infrastructure. (Provide Document Bundle [ITI-65]).
4. Since the publication event of the medical report meets the subscription criteria performed by Hospital EHR, the  Central Infrastructure will send a notification to the Hospital EHR. ([ITI-112] Resource Notify)
5. After receiving the notification on the Hospital EHR, Dr. Roose can retrieve and consult the analysis results on the Hospital EHR in order to decide which medicine is suitable for the patient (Retrieve Document [ITI-68]).
6. Dr. Roose from the Hospital EHR makes an ePrescription for the chosen drug. A document is submitted to the Central Infrastructure. (Provide  Document Bundle [ITI-65]).
7. Since the publication event of the ePrescription meets the subscription criteria performed by Nurse Tablet, the Central Infrastructure will send a notification to the Nurse Tablet. ([ITI-112] Resource Notify)
8. The Nurse upon, seeing the notification on his tablet, can retrieve the document in order to know which drug to prepare for administration. (Retrieve Document [ITI-68]).
9. At the end of the clinical event when the patient is discharged, the Hospital EHR performs an automated un-subscription. (Resource Subscription [ITI-110]).


#### 1:54.4.2.2 Use Case \#2: Document Subscription for mobile application in MHDS Environment using Folder Subscription

The update of a collection of documents (Folder), using a patient national Electronic Healthcare Record (EHR), is notified to a mobile Diabetological Healthcare Record (DHR).

##### 1:54.4.2.2.1 Document Subscription for mobile application in MHDS Environment using Folder Subscription Use Case Description

Dr. Rooney is taking care of Ms. Williams, a newly discovered type 2 diabetic patient. In order to start and adjust over time the therapy the doctor and the patient will perform a visit every month for the next 2 years. 
During the first visit, Dr. Rooney uses the mobile DHR application to create a Folder for the patient and makes a subscription on it to the National Electronic Healthcare Record (EHR) in order to be notified of any updates regarding Ms. Williams's clinical data. After the visit, the patient is sent home with the standard therapy.
Between the first and second visit, the patient is not feeling well and is admitted in the emergency department where some blood tests are performed and the acute symptoms are taken care of. 
When the blood tests are published on the EHR a notification is sent to the mobile DHR used by Dr. Rooney and the new update is retrieved.
During the second visit, Dr. Rooney uses the latest clinical information and adjust the therapy. 
A few days after the second visit Ms. Williams is admitted again into the emergency room. Other tests are performed and the medical report is updated in the EHR. A new notification is sent to the mobile DHR used by Dr. Rooney and the new update is retrieved.
During the third visit, Ms. Williams decides that a different physician will take charge of her therapy. Therefore, Dr. Rooney closes the episode of care for Ms. Williams on his mobile DHR and the subscription to the EHR is deleted.

##### 1:54.4.2.2.2 Document Subscription for mobile application in MHDS Environment using Folder Subscription Process Flow

<figure>
{%include usecase2-processflow.svg%}
<figcaption><b>1:54.4.2.2.2-2: Document Subscription for mobile application in MHDS Environment using Folder Subscription in DSUBm</b></figcaption>
</figure>
<br clear="all">

**Pre-conditions**:

The assumption is that systems share the information in an MHDS Environment. The national EHR of a patient has been maintained thanks to the implementation of an MHDS Registry and it is grouped by the DSUBm Resource Notification Broker. The systems share and retrieve the documents by implementing MHD Document Source and/or MHD Document Consumer. The Resource Notification Subscriber has implemented the Resource Subscription Search [ITI-113] transaction. The Resource Notification Subscriber and the Resource Notification Broker support the [Folder Subscription for Minimal Update option](#15424-folder-subscription-for-minimal-update-option).

**Main Flow**:

1. During the first visit a document subscription is needed. The mobile DHR application search on the Resource Notification Broker for the supported SubscriptionTopic resource.([ITI-114] Resource SubscriptionTopic Search). 
2. At the end of the first visit, the mobile DHR application performs a Folder Subscription to the EHR, and therapy A is prescribed to Ms. Williams. ([ITI-110] Resource Subscription). 
3. After some days during an emergency a blood test analysis is performed on Ms. Williams and the medical record is produced on the national EHR. ([ITI-65] Provide Document Bundle).
4. A notification is sent to the DHR since the publication of the medical record generated an updated version of the folder in the EHR. ([ITI-112] Resource Notify)
5. When the DHR receives the notification, the mobile application retrieves the resource by sending a Retrieve Document [ITI-68] to the Electronic HealthCare Record. The clinical data in the DHR is updated. 
6. After some days during the second visit, Dr. Rooney uses the updated clinical data to adjust the therapy from A to B.
7. After some days during an emergency event other analyses are performed on Ms. Williams and the medical record is produced on the national EHR. ([ITI-65] Provide Document Bundle).
8. A notification is sent to the DHR since the publication of the medical record generated an updated version of the folder in the EHR. ([ITI-112] Resource Notify)
9. When the DHR receives the notification, the mobile application retrieves the resource by sending a Retrieve Document [ITI-68] to the Electronic HealthCare Record. The clinical data in the DHR is updated. 
10. During the third visit, the mobile DHR searches for the subscription performed on the folder present on the EHR. ([ITI-113] Resource Subscription Search)
11. The mobile DHR unsubscribes from the folder subscription. ([ITI-110] Resource Subscription.)

#### 1:54.4.2.3 Use Case \#3: Document Subscription for Mobile Device in XDS on FHIR Environment

The availability of a specific document for a Patient shared in an XDS on FHIR infrastructure is notified in his personal mobile device.

##### 1:54.4.2.3.1 Document Subscription for Mobile Device in XDS on FHIR Environment Use Case Description

Mr. Brown went to see his doctor. During the examination, the doctor considered important to check the blood test results before making a medication prescription. Meanwhile, Mr. Brown is sent home because he has already submitted a subscription in order to receive a notification on his mobile app when the prescription will be ready.

When the doctor was notified that the blood test results were ready, he retrieved them and, after checking them, the doctor prescribed the drug to Mr. Brown. Mr. Brown receives a notification on his phone when the prescription is ready (created). From the app, he can now retrieve the prescription required to purchase the drug in the local pharmacy.

##### 1:54.4.2.3.2 Document Subscription for Mobile Device in XDS on FHIR Environment Process Flow

<figure>
{%include usecase3-processflow.svg%}
<figcaption><b>Figure 1:54.4.2.3.2-1: Document Subscription for Mobile Device in XDS on FHIR Environment in DSUBm</b></figcaption>
</figure>
<br clear="all">

**Pre-conditions**:
The assumption is that systems share the information in an XDS on FHIR Environment. In the central infrastructure, the XDS Registry is grouped by the DSUBm Resource Notification Publisher. The system shares and retrieves the documents by implementing MHD Document Source and/or MHD Document Consumer thanks to an MHD interface on XDS (see XDS on FHIR Option of MHD Profile). Since the Mobile Device is interested in only the creation of DocumentReference resources no additional option is supported by the DSUBm actors.

**Main Flow**:

1. After the first login, the mobile app for the prescription performs an automatic patient-dependent DocumentReference Subscription to the Central Infrastructure in order to be informed when a prescription is ready.([ITI-110] Resource Subscription with the following criteria: patient and typeCode) 
2. When the doctor makes the ePrescription a document is produced on the Repository and the metadata are sent to the Central Infrastructure ([ITI-42] Register Document Set-b).
3. The Central Infrastructure, having stored the metadata of the prescription, generates a message to inform the broker about the publication event. ([ITI-111] Resource Publish).
4. Since the publication event of the prescription meets the subscription criteria the Central Infrastructure will send a notification to the mobile app. ([ITI-112] Resource Notify)
5. When the user sees the notification on his app it is possible to retrieve the document. The app retrieves the resource by sending a Retrieve Document [ITI-68] to the XDS FHIR interface. 
6. Upon receiving the Retrieve Document [ITI-68] the XDS FHIR interface retrieves the document from the XDS Repository. Retrieve Document Set [ITI-43].
7. With the downloaded ePrescription the patient can now go to the local pharmacy to acquire the prescribed drug showing his mobile device.

#### 1:54.4.2.4 Use Case \#4: Document Subscription for Mobile Device in XDS on FHIR Environment extending DSUB with DSUBm

The availability of documents for a Patient is notified on a mobile device.

##### 1:54.4.2.4.1 Document Subscription for Mobile Device in XDS on FHIR Environment extending DSUB with DSUBm Use Case Description

Mr. Wayne has a prescription for a radiographic exam and he needs to book a Radiology Appointment. With a phone call to the local hospital, an appointment is proposed and Mr. Wayne accepts the slot. After some minutes, the radiology booking system produces a document for the booking reservation. 
Since Mr. Wayne is a user of the booking mobile app, a subscription has been already made to the Central Infrastructure in order to receive a notification when the booking reservation is produced.
When the notification arrives on Mr. Wayne's mobile device, he can consult the information regarding his appointment. 

##### 1:54.4.2.4.2 Document Subscription for Mobile Device in XDS on FHIR Environment extending DSUB with DSUBm Process Flow

<figure>
{%include usecase4-processflow.svg%}
<figcaption><b>Figure 1.54.4.2.4.2-1: Document Subscription for Mobile Device in XDS on FHIR Environment extending DSUB with DSUBm in DSUBm</b></figcaption>
</figure>
<br clear="all">

**Pre-conditions**:

The assumption is that systems share the information in an XDS on FHIR Environment. In the central infrastructure, the XDS Registry is grouped by the DSUB Document Metadata Publisher/Document Metadata Broker. The DSUBm extends the DSUB subscription to mobile systems grouping the Resource Notification Broker by DSUB Document Metadata Subscriber and DSUB Document Metadata Recipient. The systems share and retrieve the documents by implementing MHD Document Source and/or MHD Document Consumer thanks to an MHD interface on XDS (see XDS on FHIR Option of MHD Profile). 

**Main Flow**:

1. The mobile app performs a patient-dependent DocumentReference subscription specific for a subset of documents that includes the booking reservation documents. ([ITI-110] Resource Subscription).
2. The DSUB interface translates the mobile subscription to a Document Metadata Subscribe [ITI-52] for the booking reservation that will be produced for the patient. 
3. After some time a document for the booking reservation is produced and the metadata are stored in the Central Infrastructure. ([ITI-42] Register Document Set-b).
4. Since the publication event meets the subscription criteria the Central Infrastructure will send a notification to the DSUB interface. ([ITI-53] Document Metadata Notify)
5. The DSUB interface translates the notification received in a mobile notification in order to reach the mobile device. ([ITI-112] Resource Notify)
6. The Mobile Device will try to retrieve the booking reservation in order to display the appointment information. A Retrieve Document [ITI-68] is sent to the DSUB FHIR Interface
7. Upon receiving the Retrieve Document [ITI-68] the  DSUB FHIR Interface will try to recover the document Retrieve Document Set [ITI-43] and will return it to the Resource Device information.
8. The Mobile Device can now use the appointment information.

#### 1:54.4.2.5 Use Case \#5: Document Subscription for Mobile Alert System

The availability of a specific document is notified in a Mobile Alert System with a multi-patient subscription.

##### 1:54.4.2.5.1 Document Subscription for Mobile Alert System Use Case Description

Dr. Gordon is a new medic hired by the geriatric ward of the Goodcare General Hospital. In this facility, there is a Mobile Alert System in order to mitigate the spreading of highly contagious diseases. In order to do this, each employee has an app on his personal mobile device that is connected to the mobile Alert System. When a highly contagious disease is reported inside the geriatric ward, an alert is spread to follow immediately the specific quarantine protocol expected for the reported disease. 

##### 1:54.4.2.5.2 Document Subscription for Mobile Alert System Process Flow

<figure>
{%include usecase5-processflow.svg%}
<figcaption><b>Figure 1:54.4.2.5-1: Document Subscription for Mobile Alert System in DSUBm</b></figcaption>
</figure>
<br clear="all">

**Pre-conditions**:

The assumption is that systems share the information in an XDS on FHIR Environment. In the central infrastructure, the XDS Registry is grouped with the DSUB Document Metadata Publisher. The Notification Manager System manages both mobile and non-mobile subscriptions, grouping DSUB Document Metadata Broker with the Resource Notification Broker. The systems share and retrieve the documents by implementing MHD Document Source and/or MHD Document Consumer thanks to an MHD interface on XDS (see XDS on FHIR Option of MHD Profile).

**Main Flow**:

1. The Mobile Alert System performs a multi-patient DocumentReference subscription to the Notification Manager in order to be informed when a specific medical report is produced and a highly contagious disease is reported inside the geriatric ward. ([ITI-110] Resource Subscription, using a multi-patient Subscription with the indication of the related eventCodeList to the disease of interest).
2. When an analysis is conducted and a highly contagious disease is reported a specific document is published inside the Central infrastructure. ([ITI-42] Register Document Set-b)
3. The Central Infrastructure produces for every document a publication event and is transmitted to the Notification Manager. ([ITI-54] Document Metadata Publish)
4. The Notification Manager uses internal mapping to translate the publication event into a mobile event. If this publication event satisfies the subscription parameters explained in Step 1 a notification is sent to the Mobile Alert System. ([ITI-112] Resource Notify)
5. The Mobile Alert System will try to retrieve the document in order to inform the user of the specific information regarding the exposure and quarantine protocol to be followed. The Mobile Alert System sends a Retrieve Document [ITI-68] to the Central Infrastructure. 
6. Upon receiving the Retrieve Document [ITI-68] the Central Infrastructure will try to recover the document Retrieve Document Set [ITI-43] and will return to the Mobile Alert System the mobile version of the document.
7. The Mobile Alert System uses the information retrieved in order to send a Mobile Report Alert [ITI-84] to the Mobile device.
8. The Mobile Alert System is updated in order to respond to a new disease that is not included in the current subscription. The system is updated by: 
  - deactivating the existing subscription ([ITI-110] Resource Subscription - Update Subscription).
  - a new subscription is sent to  the Notification Manager in order to be informed for all the disease including the new one recently discovered. ([ITI-110] Resource Subscription, multi-patient expressed with the updated eventCodeList for two diseases of interest).

#### 1:54.4.2.6 Use Case \#6: Document Subscription for Mobile Device in XDS on FHIR Environment with availabilityStatus update 

The availability of a new document containing an error in the metadata is notified to a personal mobile device. The author of the document deprecates the document and a new notification is sent to communicate the update.

##### 1:54.4.2.6.1 Document Subscription for Mobile Device in XDS on FHIR Environment with availabilityStatus update Use Case Description

Mr. Adam uses an app on his phone to consult his diagnostic reports emitted after doctor visits or diagnostics exams during his hospitalization. 
After one radiographic exam a report has been produced. Due to a human error, this report contains some errors and is notified to Mr. Adam's phone. When Mr. Adam looks at the information related to this document he understands that an error has occurred. After a couple seconds Mr. Adam receives a second notification generated by the update of the metadata of the document that was previously submitted. Mr. Adam understand that it was a mistake made by the doctor and now the document has been deprecated so there is no need to ask the hospital for more information regarding the first notification. 

##### 1:54.4.2.6.2 Document Subscription for Mobile Device in XDS on FHIR Environment with availabilityStatus update Process Flow

<figure>
{%include usecase6-processflow.svg%}
<figcaption><b>1:54.4.2.6.2-1: Document Subscription for Mobile Device in XDS on FHIR Environment with availabilityStatus update in DSUBm</b></figcaption>
</figure>
<br clear="all">

**Pre-conditions**:

The assumption is that systems share the information in an XDS on FHIR Environment. In the central infrastructure, the XDS Registry is grouped by the Resource Notification Publisher/Resource Notification Broker. The system shares and retrieves the documents by implementing MHD Document Source and/or MHD Document Consumer thanks to an MHD interface on XDS (see XDS on FHIR Option of MHD Profile). The Resource Notification Broker, Resource Notification Publisher and Resource Notification Subscriber are supporting the [DocumentReference Subscription for Minimal Update option](#15421-documentreference-subscription-for-minimal-update-option).

**Main Flow**:

1. The app performs a patient-dependent DocumentReference subscription specific for reports by specifying a list of possible classCodes and considering creation and update of documents.([ITI-110] Resource Subscription).
2. The Radiographic System produces a report containing an error. ([ITI-41] Provide and Register Document Set-b).
3. The Central Infrastructure, having stored the metadata of the report, generates a message to inform the broker about the publication event. ([ITI-111] Resource Publish)
4. The publication event matches the subscription criteria of the subscription created at step 1. The first notification is sent. ([ITI-112] Resource Notify) 
5. When the user sees the notification on his app it is possible to retrieve the document. The app will try to retrieve the resource by sending a Retrieve Document [ITI-68] to the XDS FHIR interface.
6. Upon receiving the Retrieve Document [ITI-68] the XDS FHIR interface tries to retrieve the document from the XDS Repository. Retrieve Document Set [ITI-43].
7. Mr. Adam notices that the report contains an error.
8. After a couple of seconds, the Radiographic System changes the availabilityStatus of the document. ([ITI-57] Update Document Set-b).
9. The Central Infrastructure, having stored the metadata of the report, generates a message and inform the broker about the second publication event. ([ITI-111] Resource Publish)
10. The second publication event is an update of the document metadata and it matches the subscription criteria reqeusted at step 1. The second notification is sent to Mr.Adam that now has the confirmation that the first notification was wrong. ([ITI-112] Resource Notify). 

#### 1:54.4.2.7 Use Case \#7: Document Subscription for Mobile Device in XDS on FHIR Environment with document metadata update

The availability of an updated metadata document (shared in an XDS on FHIR infrastructure) for a Patient is notified to a personal mobile device.

##### 1:54.4.2.7.1 Document Subscription for Mobile Device in XDS on FHIR Environment with document metadata update Use Case Description

Ms. Fox uses an app on her phone to consult her diagnostic reports, emitted after doctor visits or diagnostics exams. 
After one radiographic exam, a report has been produced but the doctor that produced the report wants to have a consultation with a specialist before letting it be visible to the patient.
So that, after the consultation of the report by the specialist and sure that there are no further issues, the report is visible to the patient.
Thus, Ms. Fox receives the notification on her app and consults the reports.

##### 1:54.4.2.7.2 Document Subscription for Mobile Device in XDS on FHIR Environment with document metadata update Process Flow

<figure>
{%include usecase7-processflow.svg%}
<figcaption><b>1:54.4.2.7.2-1: Document Subscription for Mobile Device in XDS on FHIR Environment with document metadata update in DSUBm</b></figcaption>
</figure>
<br clear="all">

**Pre-conditions**:

The assumption is that systems share the information in an XDS on FHIR Environment. In the central infrastructure, the XDS Registry is grouped by the Resource Notification Publisher/Resource Notification Broker. The system shares and retrieves the documents by implementing MHD Document Source and/or MHD Document Consumer thanks to an MHD interface on XDS (see XDS on FHIR Option of MHD Profile). The Resource Notification Broker, Resource Notification Publisher and Resource Notification Subscriber are supporting the [DocumentReference Subscription for Full Events option](#15422-documentreference-subscription-for-full-events-option).

**Main Flow**:

1. The mobile app performs a patient-dependent DocumentReference subscription specific for reports by specifying a list of possible confidentiality codes, based on the community accordance, in this case, equal to "N". ([ITI-110] Resource Subscription).
2. When the doctor makes the report, not visible to the patient, a document is produced on the Repository and the metadata are sent to the Central Infrastructure, in this case with a confidentiality code different from "N" ([ITI-42] Register Document Set-b).
3. The Central Infrastructure, having stored the metadata of the report, generates a message to inform the broker about the publication event. ([ITI-111] Resource Publish), but since the publication event doesn't match any active subscription criteria, any notification is sent.
4. After the consultation, the confidentiality code metadata of the report is updated "N" to the Central Infrastructure ([ITI-57] Update Document Set)
5. The Central Infrastructure, having updated the metadata of the document, generates a message to inform the broker about the update event. ([ITI-111] Resource Publish).
6. Since the metadata update event meets the subscription criteria, the Central Infrastructure will send a notification to the mobile app. ([ITI-112] Resource Notify)
7. When the user sees the notification on his app it is possible to retrieve the document. The app will try to retrieve the resource by sending a Retrieve Document [ITI-68] to the XDS FHIR interface.
8. Upon receiving the Retrieve Document [ITI-68] the XDS FHIR interface tries to retrieve the document from the XDS Repository. Retrieve Document Set [ITI-43].
9. Downloaded the document, Ms. Fox can view the report.

#### 1:54.4.2.8 Use Case \#8: SubmissionSet Subscription in a XDS Environment where DSUBm is Grouped with DSUB

In this use case, a system desires to subscribe to a submissionSet with a specific intended recipient of clinical information. A source of clinical content can identify the intended target for a submissionSet using the XDSSubmissionSet.IntendedRecipient metadata attribute.

##### 1:54.4.2.8.1 Patient-dependent SubmissionSet Subscription in an Infrastructure where DSUBm is Grouped with DSUB Use Case Description

Dr. Brown is a clinician and can request exams for many patients. He works in multiple hospital and due to his obligations he is not always connected and available to review the document that are produced from other hospitals. So the doctor uses a mobile app in order to get notifications for documents produced from other hospital that are intended for him (the subscription created has the intendedRecipient as Subscription criteria). 
Mr. White attends a consultation with Dr. Brown, who requests a Laboratory Report for the patient. The app that the doctor is using creates a mobile subscription with an intendedRecipient of Dr. Brown. This mobile subscription is replicated by a middleware (DSUB/FHIR interfare) in order to intercept XDS documents with the same filter criteria of the mobile susbcritpion created by the app. 
The patient receives the exam in a Clinical Laboratory. The Laboratory Information System produces a report and submits the document in the Document Sharing Infrastructure identifying Dr. Brown as the intended Recipient for the submission. This publishing event matches the existing subscription performed by the middleware and a notification is sent to the middleware. 
The middleware converts the notification in a mobile notification that is sent to  Dr. Brown’s mobile system (identified as the Resource Notification Recipient in the mobile subscription created). 
Dr. Brown, after seeing the notification on his app, can access to the EMR system and retrieve the laboratory report and can quickly analyze the report published and can make other clinical decisions in an efficient way. 

##### 1:54.4.2.8.2 Patient-dependent SubmissionSet Subscription in an Infrastructure where DSUBm is Grouped with DSUB Process Flow

<figure>
{%include usecase8-processflow.svg%}
<figcaption><b>1:54.4.2.8.2-1: Patient-dependent SubmissionSet Subscription in a infrastructure where DSUBm is grouped with DSUB</b></figcaption>
</figure>
<br clear="all">

**Pre-conditions**:

The assumption is that systems share the information in an XDS Environment where a DSUB and DSUBm are used a the same time. In the central infrastructure, the XDS Registry is grouped with XDS document Repository and the Document Notification Publisher. The DSUB Document Metadata Subscriber and the DSUB Document Metadata Recipient are grouped with a DSUBm Resource Notification Broker. 

**Main Flow**:

1. The mobile app performs a patient-dependent SubmissionSet subscription specific for document produced for Mr.White that have Dr.Brown as the intended Recipient. ([ITI-110] Resource Subscription)  
2. When the DSUB/FHIR interface receives the Subscrption creates a DSUB subscription with equivalent filter criteria. ([ITI-52] Document Metadata Subscribe)
3. The Laboratory Information System produce the report for Mr. White exams  ([ITI-41] Provide and Register Document Set-b )
4. The Central Infrastracture propagetes to the DSUB Broker a Publication Event.  ([ITI-54] Document Metdata Publish)
5. The DSUB Broker matches the publication with all the available subscriptions and a notification is triggered for the subscription created at step 2 ([ITI-53] Document Metdata Notify).
6. The DSUB/FHIR interface receives the notification and the subscription created at step 1 is triggered since the document had Dr.Brown as the intended recipient. ([ITI-112] Resource Notify)  
7. When Dr.Brown receives the notification he access to his system in order to consult the new document produced. 
8. From his system Dr.Brown searches for the document that has been submitted with the submissionSet that he has been notified. ([ITI-18] Registry Stored Query) 
9. The doctor can now retrieve the document and consult it.([ITI-43] Retrieve Document Set-b) 

## 1:54.5 Security Considerations

This profile requires actors to audit the transactions that create subscriptions and send notifications, grouping with an [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html) Secure Node or Secure Application is strongly RECOMMENDED in order to track the subscriptions and the notification sent.
For further considerations about Audit record refer to [BALP profile](https://profiles.ihe.net/ITI/BALP/).
User authentication/authorization represents another important factor to consider in order to avoid malicious creation/updating of subscriptions. Grouping DSUBm actors with actors in the Internet User Authorization (IUA) Profile enables deployments to mitigate these security issues.
See ITI TF-2x: [Appendix Z.8 “Mobile Security Considerations”](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.8-mobile-security-considerations). 

The reader SHOULD also consider the information included in [Safety and Security](https://build.fhir.org/ig/HL7/fhir-subscription-backport-ig/safety_security.html) section of the Subscription Backport IG.

## 1:54.6 Cross-Profile Considerations

The DSUBm actor and transaction model is very flexible. Integration with other IHE profiles is possible and highly RECOMMENDED in order to utilize the subscription/notification mobile feature in different types of environments. In this section, some information about possible cross-profile interaction is presented. 

### 1:54.6.1 MHDS - Mobile Health Document Sharing 

Within a RESTfull infrastructure that is implementing the MHDS model there are two possible groupings. 

#### 1:54.6.1.1 MHDS - Mobile Health Document Sharing Grouping 1
In the first proposed grouping:

- MHDS Document Registry will most likely be grouped with a Resource Notification Publisher because all publication events are submitted to the MHDS Document Registry. 
- The MHD Document Consumer will most likely be grouped with a Resource Notification Recipient. This grouping makes sense since the receiver of the notification is most likely the user of the information.

<a name="fig_MHDS"> </a>
<figure>
{%include model_MHDS.svg%}
<figcaption><b>Figure 1:54.6.1.1-1: DSUBm actors grouped with MHDS actors showing the first of the two possible groupings. 
</b></figcaption>
</figure>
<br clear="all">

#### 1:54.6.1.2 MHDS - Mobile Health Document Sharing Grouping 2
In the second proposed grouping:

- MHDS Document Registry will likely be grouped with a Resource Notification Broker.
- The MHD Document Consumer, will likely be grouped with a Resource Notification Subscriber.

<a name="fig_MHDS2"> </a>
<figure>
{%include model_MHDS2.svg%}
<figcaption><b>Figure 1:54.6.1.2-1: DSUBm actors grouped with MHDS actors showing the second of the two possible groupings. 
</b></figcaption>
</figure>
<br clear="all">

### 1:54.6.2 XDS.b - Cross-Enterprise Document Sharing

Within an XDS infrastructure there are two possible groupings. 

### 1:54.6.2.1 XDS.b - Cross-Enterprise Document Sharing Grouping 1

In the first proposed grouping:

- XDS Document Registry will most likely be grouped with a Resource Notification Publisher because all publication events are submitted to the XDS Document Registry. 
- XDS Document Consumer will most likely be grouped with a Resource Notification Recipient. This grouping makes sense since the receiver of the notification is most likely the user of the information.

If in the infrastructure is also implemented the "XDS on FHIR Option" of MHD for a mobile interface:

- MHD Document Consumer will most likely be grouped with a Resource Notification Recipient. This grouping makes sense since the receiver of the notification is most likely the user of the information.
- MHD Document Consumer will likely be grouped with a Resource Notification Subscriber.

<a name="fig_MHD"> </a>
<figure>
{%include model_MHD.svg%}
<figcaption><b>Figure 1:54.6.2.1-1: DSUBm actors grouped with XDS actors and MHD actors
</b></figcaption>
</figure>
<br clear="all">

Note that in this scenario, developers SHOULD be aware about what events on DocumentEntry, Folder, Association, and SubmissionSet Objects could determine events on DocumentReference, Folder type List, and SubmissionSet type List resources and the supporting of "Updates to document sharing resources" option.

### 1:54.6.2.2 XDS.b - Cross-Enterprise Document Sharing Grouping 2
In the second proposed grouping:

- XDS Document Registry will likely be grouped with a Resource Notification Broker.
- XDS Document Consumer will likely be grouped with a Resource Notification Subscriber.

<a name="fig_MHD2"> </a>
<figure>
{%include model_MHD2.svg%}
<figcaption><b>Figure 1:54.6.2.2-1: DSUBm actors grouped with XDS actors 
</b></figcaption>
</figure>
<br clear="all">

Note that in this scenario, developers SHOULD be aware about what events on DocumentEntry, Folder, Association, and SubmissionSet Objects could determine events on DocumentReference, Folder type List, and SubmissionSet type List resources and the supporting of "Updates to document sharing resources" option.

### 1:54.6.3 DSUBm as an Interface for DSUB 
Document Metadata Subscriber and the Document Metadata Notification Recipient will most likely be grouped with a Resource Notification Broker creating the mobile DSUB interface that translates Resource Subscription [ITI-110] into Document Metadata Subscribe [ITI-52] and Document Metadata Notify [ITI-53] into Resource Notify [ITI-112]. The existing DSUB Document Metadata Notification Broker is unaware of the presence of the functionality introduced by the DSUBm profile and therefore can maintain its already implemented logic.  
<figure>
{%include model_DSUBonFHIR.svg%}
<figcaption><b>Figure 1:54.6.3-1: DSUBm actors grouped with DSUB:  DSUBm as an interface for DSUB 
</b></figcaption>
</figure>
<br clear="all">

Note that in this scenario, developers SHOULD be aware about the usage of `status` parameter in the Subscriptions and about implementation of DSUB supplement Folder Subscription Option and Patient-Independent Subscription Option.