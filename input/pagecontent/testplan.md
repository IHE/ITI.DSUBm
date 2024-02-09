<div markdown="1" class="stu-note">

This Test Plan page is a prototype. We expect the maturity of the content will improve over time.  For now, we summarize high level testing scope and available tools. Comments are welcome.
</div>

The Test Plan builds upon quality testing of Document Subscription for Mobile actors functionalities when subscribing for patient document The transaction between actors specify semantics of the data exchanged. The DSUBm test plan focuses on these semantics and on the expected actions on both client-side and server-side actors

## Introduction

Overall test plan leverages the Profiles and Examples shown on the [Artifacts Summary](artifacts.html). The [Profiles](artifacts.html#structures-resource-profiles) listed are describing the constraints that would be adhered to by actors claiming conformance to this implementation guide. Thus any applicable Resources that are known to have been published by an app or server REQUIRED be conformant to these profiles as appropriate.

The Examples listed in [Example Instances](artifacts.html#example-example-instances) are example instances. Some are conformant to the profiles. Other examples that either assist with the structure of the examples (e.g., Patient and Encounter) or are examples that SHOULD be able to handle in various ways. 

Based on the IHE Integration Statement for the System Under Test (SUT), the following integration SHALL be tested: 
- integration between the DSUBm and Document Sharing infrastructure (XDS or MHD) 
- integration between the DSUBm and the DSUB 

In the first case it SHALL be able to show that it produce notifications when triggered by the Document Registry.
In the second case case it SHALL be able to show that a notification is produced after receiving a DSUB notification and the receiving DSUBm transaction [ITI-110](ITI-110.html) are propagated to the DSUB Document Metadata Notification Broker 

When the Resource Notification Broker is coupled directly with a Document Registry (XDS Document Registry or MHD DOcument Registry) as indicated [here](volume-1.html#15463-dsubm-as-an-interface-for-dsub) or is coupled directly with a DSUB/FHIR interface as indicated [here](volume-1.html#15463-dsubm-as-an-interface-for-dsub) it COULD not support the transaction [ITI-111](ITI-111.html).

When the Resource Notification Subscriber is coupled with a Document Consumer it shall be able to show that it can use the DSUBm transactions to be alerted when a document is available to be consumed. For example see [here](volume-1.html#154421-use-case-1-document-subscription-for-mobile-applications-in-mhds-environment)

When coupled directly with a Document Registry (XDS Document  Registry or MHD DOcument Registry), the Resource Notification Publisher SHALL be able to show that it produces [ITI-111](ITI-111.html) when coupled with a document Registrsy ( XDS Document Registry or MHD DOcument Registry). For example see [here](volume-1.html#154423-use-case-3-document-subscription-for-mobile-device-in-xds-on-fhir-environment) for an XDS example or [here](volume-1.html#154611-mhds---mobile-health-document-sharing-grouping-1) for MHD example.

### High-level Test Scope


##### Resource Subscription [ITI-110](ITI-110.html) transaction

###### Resource Notification Subscriber

The Resource Notification Subscriber SHALL be able to show that is able to communicate to a Resource Notification Broker to creating or update subscriptions as indicated in [ITI-110](ITI-110.html), for all the subscription topic defined for the basic implementation (i.e. no option supported).

###### Resource Notification Broker

The Resource Notification Broker SHALL be able to show that is able to respond to a Resource Notification Subscriber that is creating or updating subscriptions as indicated in [ITI-110](ITI-110.html), for all the subscription topic defined for the basic implementation (i.e. no option supported).

##### Resource Publish [ITI-111](ITI-111.html) transaction

###### Resource Notification Publisher

The Resource Notification Publisher SHALL be able to show that is able to communicate to a Resource Notification Broker indicating that an event as occurred, as indicated in [ITI-111](ITI-111.html).

###### Resource Notification Broker


The Resource Notification Broker, if support the transaction [ITI-111](ITI-111.html) SHALL be able to show that is able to respond to a Resource Notification Publisher that is communicating a publish event as indicated in [ITI-111](ITI-111.html).

##### Resource Notify [ITI-112](ITI-112.html) transaction

###### Resource Notification Broker

The Resource Notification Broker SHALL be able to show that is able to send the notifications messages to a Resource Notification Recipient as indicated in [ITI-112](ITI-112.html).

###### Resource Notification Recipient

The Resource Notification Recipient SHALL be able to show that is able to respond to a Resource Notification Broker that is sending notification messagges as indicated in [ITI-112](ITI-112.html).

##### Resource Subscription Search [ITI-113](ITI-113.html) transaction

###### Resource Notification Subscriber

The Resource Notification Subscriber SHALL be able to show that is able to communicate to a Resource Notification Broker for  searching the existing subscriptions  as indicated in [ITI-113](ITI-113.html).

###### Resource Notification Broker

The Resource Notification Broker SHALL be able to show that is able to respond to a Resource Notification Subscriber that is searching the existing subscriptions  as indicated in [ITI-113](ITI-113.html).

##### Resource SubscriptionTopic Search [ITI-114](ITI-114.html) transaction

###### Resource Notification Subscriber

The Resource Notification Subscriber SHALL be able to show that is able to communicate to a Resource Notification Broker for searching the subscription topics available as indicated in [ITI-114](ITI-114.html).

###### Resource Notification Broker

The Resource Notification Broker SHALL be able to show that is able to respond to a Resource Notification Subscriber that is searching the subscription topics available as indicated in [ITI-114](ITI-114.html).

#### Option

blblbl se un attore dichiara di supportare una option il test deve verificare che l'attore supporti tutto le subscription topic per quella option, nelle transazioni interessate dalla option.

### Unit Test Procedure

Unit Tests in this context is where a SUT is tested against a simulator or validator.  A simulator is a implementation of an actor that is designed specifically to test the opposite pair actor. The simulator might be a reference implementation or MAY be a specially designed test-bench. Where a reference implementation is used the negative tests are harder to simulate. A validator is a implementation that can check conformance. A validator MAY be a simulator, but MAY also be a standalone tool used to validate only a message encoding. Some reference implementations MAY be able to validate to a StructureDefinition profile, but often these do not include sufficient constraints given the overall actor conformance criteria. 


### Integration Test Procedure

Integration Tests in this context is where two SUT of paired actors test against each other. In this case the subset of tests that can be tested is the intersection. Testing only this intersection is necessary but not sufficient. The testing required also include the capability of the client to exercise the test scenarios that this SUT can test, to determine that failure-modes are handled properly by both SUT.


