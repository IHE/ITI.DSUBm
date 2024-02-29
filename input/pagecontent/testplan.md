<div markdown="1" class="stu-note">

This Test Plan page is a prototype. We expect the maturity of the content will improve over time. For now, we summarize high level testing scope and available tools. Comments are welcome.
</div>

DSUBm specifies actors and transactions to grant functionalities for subscribing for patient document for RESTfull application. The transactions between actors specify semantics of the data exchanged. The DSUBm test plan focuses on these semantics and on the expected actions on both client-side and server-side actors.

## Introduction

The DSUBm implementation could occur in Document Sharing environments like MHDS and XDS, as far as an interface for DSUB, as shown in Section [1:54.6 Cross-Profile Considerations](volume-1.html#1546-cross-profile-considerations). But DSUBm is not limited to these profiles. Also, the systems implementation of DSUBm actors could be different according with their own implementation scenario.

Some possible scenarios of DSUBm implementation are presented in the [Use Case Section in Volume 1](volume-1.html#1544-dsubm-overview).

Overall test plan leverages the Profiles and Examples shown on the [Artifacts Summary](artifacts.html). The [Profiles](artifacts.html#structures-resource-profiles) listed are describing the constraints that would be adhered to by actors claiming conformance to this implementation guide. Thus, any applicable Resources that are known to have been published by an app or server REQUIRED be conformant to these profiles as appropriate.

The Examples listed in [Example Instances](artifacts.html#example-example-instances) are example instances. Some are conformant to the profiles. Other examples that either assist with the structure of the examples (e.g., Patient and Encounter) or are examples that SHOULD be able to handle in various ways. 

### High-level Test Scope

##### Resource Subscription [ITI-110](ITI-110.html) Transaction

###### Resource Notification Subscriber

The Resource Notification Subscriber SHALL be able to show that is able to communicate to a Resource Notification Broker to create or update subscriptions as indicated in [ITI-110](ITI-110.html), for all the subscription topic defined in the basic implementation (i.e., no option supported).
The Resource Notification Subscriber SHALL send a message defined in accordance to the message semantics, process the response message and follow the expected actions defined for the messages in the following [interactions](ITI-110.html#231104-messages):
- Subscribe
- Update  

###### Resource Notification Broker

The Resource Notification Broker SHALL be able to show that it is able to respond to a Resource Notification Subscriber that is creating or updating subscriptions as indicated in [ITI-110](ITI-110.html), for all the subscription topics defined in the basic implementation (i.e., no option supported).
The Resource Notification Broker SHALL process the request message received, follow the expected actions defined and produce a related response message in accordance to the message semantics for the messages in the following [interactions](ITI-110.html#231104-messages):
- Subscribe
- Update  

##### Resource Publish [ITI-111](ITI-111.html) Transaction

###### Resource Notification Publisher

The Resource Notification Publisher SHALL be able to show that it is able to communicate to a Resource Notification Broker indicating that an event as occurred, as indicated in [ITI-111](ITI-111.html).
The Resource Notification Publisher SHALL send a message defined in accordance to the message semantics, process the response message and follow the expected actions defined for the messages in the [interaction](ITI-111.html#231114-messages).

###### Resource Notification Broker

The Resource Notification Broker, if supporting transaction [ITI-111](ITI-111.html), SHALL be able to show that is able to respond to a Resource Notification Publisher that is communicating a publish event as indicated in [ITI-111](ITI-111.html).
The Resource Notification Broker SHALL process the request message received, follow the expected actions defined and produce a related response message in accordance to the message semantics for the messages in the [interaction](ITI-111.html#231114-messages).

##### Resource Notify [ITI-112](ITI-112.html) Transaction

###### Resource Notification Broker

The Resource Notification Broker SHALL be able to show that it is able to send the notifications messages to a Resource Notification Recipient as indicated in [ITI-112](ITI-112.html).
The Resource Notification Broker SHALL send a message defined in accordance to the message semantics, process the response message and follow the expected actions defined for the messages in the following [interactions](ITI-112.html#231124-messages):
- Event Notification  
- Handshake Notification
and if supported:
- Heartbeat Notification
- Subscription Deactivation Notification

The Resource Notification Broker SHOULD demonstrate to follow what is indicated in [Handling Errors in Notification](ITI-112.html#2311249-handling-errors-in-notification) or if something more specific is implemented.

###### Resource Notification Recipient
The Resource Notification Recipient SHALL be able to show that it is able to respond to a Resource Notification Broker that is sending notification messages as indicated in [ITI-112](ITI-112.html).
The Resource Notification Recipient SHALL process the request message received, follow the expected actions defined and produce a related response message in accordance to the message semantics for the messages in the following [interactions](ITI-112.html#231124-messages):
- Event Notification  
- Handshake Notification
- Heartbeat Notification
- Subscription Deactivation Notification

##### Resource Subscription Search [ITI-113](ITI-113.html) Transaction

###### Resource Notification Subscriber

The Resource Notification Subscriber SHALL be able to show that it is able to communicate to a Resource Notification Broker for searching the existing subscriptions as indicated in [ITI-113](ITI-113.html).
The Resource Notification Subscriber SHALL send a message defined in accordance to the message semantics, process the response message and follow the expected actions defined for the messages in the following [interactions](ITI-113.html#231134-messages):
- Subscription Search
- Subscription Read
and if supported:
- Subscription Status Search
- Subscription Events Search

###### Resource Notification Broker

The Resource Notification Broker SHALL be able to show that it is able to respond to a Resource Notification Subscriber that is searching the existing subscriptions as indicated in [ITI-113](ITI-113.html).
The Resource Notification Broker SHALL process the request message received, follow the expected actions defined and produce a related response message in accordance to the message semantics for the messages in the following [interactions](ITI-113.html#231134-messages):
- Subscription Search
- Subscription Read
- Subscription Status Search
and if supported:
- Subscription Events Search

##### Resource SubscriptionTopic Search [ITI-114](ITI-114.html) Transaction

###### Resource Notification Subscriber

The Resource Notification Subscriber SHALL be able to show that it is able to communicate to a Resource Notification Broker for searching the subscription topics available as indicated in [ITI-114](ITI-114.html).
The Resource Notification Subscriber SHALL send a message defined in accordance to the message semantics, process the response message and follow the expected actions defined for the messages in the following [interactions](ITI-114.html#231144-messages):
- SubscriptionTopic Search
- SubscriptionTopic Read

###### Resource Notification Broker

The Resource Notification Broker SHALL be able to show that it is able to respond to a Resource Notification Subscriber that is searching the subscription topics available as indicated in [ITI-114](ITI-114.html).
The Resource Notification Broker SHALL process the request message received, follow the expected actions defined and produce a related response message in accordance to the message semantics for the messages in the following [interactions](ITI-114.html#231144-messages):
- SubscriptionTopic Search
- SubscriptionTopic Read

#### Option

In case that an actor declares support to one or more [option](volume-1.html#1542-actor-options), then the test plan SHALL include for every transaction a specific test for every topic and every event for each topic inside that supported option. 

### Unit Test Procedure

Unit Tests in this context is where an SUT is tested against a simulator or validator. A simulator is a implementation of an actor that is designed specifically to test the opposite pair actor. The simulator might be a reference implementation or MAY be a specially designed test-bench. Where a reference implementation is used the negative tests are harder to simulate. A validator is a implementation that can check conformance. A validator MAY be a simulator, but MAY also be a standalone tool used to validate only a message encoding. Some reference implementations MAY be able to validate to a StructureDefinition profile, but often these do not include sufficient constraints given the overall actor conformance criteria. 

### Integration Test Procedure

Integration Tests in this context is where two SUT of paired actors test against each other. In this case, the subset of tests that can be tested is the intersection. Testing only this intersection is necessary but not sufficient. The testing required also include the capability of the client to exercise the test scenarios that this SUT can test, to determine that failure-modes are handled properly by both SUT.


