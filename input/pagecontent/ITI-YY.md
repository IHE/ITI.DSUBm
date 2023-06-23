This section corresponds to transaction ITI-YY Resource Subscription Search of the IHE Technical Framework. Transaction [ITI-YY] Resource Subscription Search is used by the the Resource Notification Subscriber and Resource Notification Broker actors. The Resource Subscription Search [ITI-YY] transaction is used to query Subscription or SubscriptionTopic and get back the results.

### Scope

The Resource Subscription Search [ITI-YY] transaction passes a Resource Subscription Search or Resource SubscriptionTopic Search from a Resource Notification Subscriber to a Resource Notification Broker.

### Actors Roles

**Table: Actor Roles**

|Actor | Role |
|-------------------+--------------------------|
| [Resource Notification Subscriber](volume-1.html#subscriber)     | Sends the query request to the Resource Notification Broker |
| [Resource Notification Broker](volume-1.html#broker) | Receives the query and responds |

### Referenced Standards

**FHIR-R4B** [HL7 FHIR Release 4.3.0](http://www.hl7.org/FHIR/R4B)

### Interactions

<figure>
{%include ITI-YY-SubscriptionTopic-seq.svg%}
<figcaption><b>Figure 2:3.YY: ITI-YY interactions</b></figcaption>
</figure>
<br clear="all">

#### Resource Notification Subscriber Request Message
The Resource Notification Subscriber Request Message is a parametrized HTTP GET that allows to search for a list of SubscriptionTopic resources managed by the Resource Notification Broker, based on a set of search parameters.

##### Trigger Events

A Resource Notification Subscriber sends this message to the Resource Notification Broker when it needs to discover SubscriptionTopic Resource resource.  

##### Message Semantics

The Resource Notification Subscriber sends a HTTP GET request to the Resource Notification Broker. This request shall comply with requirements specified in the HL7<sup>®</sup>
FHIR<sup>®</sup> standard <http://hl7.org/fhir/R4/http.html#search>.

The search target URL follows the FHIR HTTP specification <http://hl7.org/fhir/R4B/http.html>, addressing the resource type that the Resource Notification Subscriber is interested to discorver. 

The Resource Notification Subscriber Request Message can be expressed by addressing the  SubscriptionTopic Resource:
> GET \[base\]/SubscriptionTopic?\[Parameters\]

The Resource Notification Subscriber may provide the optional parametr "_format" to specify the desiderd MIME-types in the response message. The Resource Notification Broker should accept "application/fhir+xml" and "application/fhir+json" as _format parameter.  For example, indicating application/fhir+json could result in the response from the Resource Notification Broker being a json FHIR Bundle with all the content encoded as FHIR resources.

##### Expected Actions

The Resource Notification Broker

#### Go Response Message

##### Trigger Events

''TODO: define the triggers''

##### Message Semantics

''TODO: define the message -- usually with a StructureDefintion''

##### Expected Actions

''TODO: define expected actions''


### CapabilityStatement Resource

Server implementing this transaction shall provide a CapabilityStatement Resource as described in ITI TF-2x: Appendix Z.3 indicating the transaction has been implemented. 
* Requirements CapabilityStatement for [Client](CapabilityStatement-IHE.ToDo.client.html)
* Requirements CapabilityStatement for [Server](CapabilityStatement-IHE.ToDo.server.html)

### Security Considerations

See [MHD Security Considerations](volume-1.html#security-considerations)

#### Security Audit Considerations

''TODO: The security audit criteria ''

##### Client Audit 

''TODO: the specifics''

##### Server Audit 

''TODO: the specifics''
