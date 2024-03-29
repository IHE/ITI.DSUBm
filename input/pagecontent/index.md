The Document Subscription for Mobile (DSUBm) Profile describes the use of document subscription and notification mechanisms for RESTful applications. In a similar way to the [DSUB](https://profiles.ihe.net/ITI/TF/Volume1/ch-26.html) Profile, a subscription is made in order to receive a notification when a document publication event matches the criteria expressed in the subscription. 

This profile can be applied in a RESTful-only environment as [MHDS](https://profiles.ihe.net/ITI/TF/Volume1/ch-50.html#50) but it can also be used with different non-mobile profiles such as [XDS.b](https://profiles.ihe.net/ITI/TF/Volume1/ch-10.html) and [DSUB](https://profiles.ihe.net/ITI/TF/Volume1/ch-26.html). This profile intends to grant the same functionality as the [DSUB](https://profiles.ihe.net/ITI/TF/Volume1/ch-26.html) Profile and its supplements regarding Document subscription but also adding some other functionalities (e.g., Subscription Search).

This profile intends to be compliant with [Subscriptions R5 Backport](http://hl7.org/fhir/uv/subscriptions-backport/STU1.1/).


<div markdown="1" class="stu-note">

| [Significant Changes, Open and Closed Issues](issues.html) |
{: .grid}

</div>

### Organization of This Guide
This guide is organized into the following sections:

- Volume 1: Actors, Transactions and Use Cases
   - [Actors, Transactions, and Content](volume-1.html#1541-dsubm-actors-transactions-and-content-modules)
   - [Actor Options](volume-1.html#1542-actor-options)
   - [Actor Required Groupings](volume-1.html#1543-required-actor-groupings)
   - [Overview](volume-1.html#1544-dsubm-overview)
   - [Security Considerations](volume-1.html#1545-security-considerations)
   - [Cross Profile Considerations](volume-1.html#1546-cross-profile-considerations)
- Volume 2: Transaction Detail
   - [Resource Subscription [ITI-110]](ITI-110.html)
   - [Resource Publish [ITI-111]](ITI-111.html)
   - [Resource Notify [ITI-112]](ITI-112.html)
   - [Resource Subscription Search [ITI-113]](ITI-113.html)
   - [Resource SubscriptionTopic Search [ITI-114]](ITI-114.html)

- Other
   - [Changes to Other IHE Specifications](other.html)
   - [Download and Analysis](download.html)
   - [Test Plan](testplan.html)   

See also the [Table of Contents](toc.html) and the index of [Artifacts](artifacts.html) defined as part of this implementation guide.

### Conformance Expectations

IHE uses the normative words: “REQUIRED”, “REQUIRED NOT”, “REQUIRED”, “SHALL”, “SHALL NOT”, “SHOULD”, “SHOULD NOT”, “recommended”, “MAY”, and “OPTIONAL” according to [standards conventions](https://profiles.ihe.net/GeneralIntro/ch-E.html).

#### Required Support

The use of ```RequiredSupport``` in StructureDefinition profiles equivalent to the IHE use of **R2** as defined in [Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.10-profiling-conventions-for-constraints-on-fhir).

RequiredSupport of true - only has a meaning on items that are minimal cardinality of zero (0), and applies only to the source actor populating the data. The source actor SHALL populate the elements marked with RequiredSupport, if the concept is supported by the actor, a value exists, and security and consent rules permit. 
The consuming actors SHOULD handle these elements being populated or being absent/empty. 
Note that sometimes RequiredSupport will appear on elements with a minimal cardinality greater than zero (0), this is due to inheritance from a less constrained profile.
