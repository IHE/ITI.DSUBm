
<!--**This Implementation Guide template includes skeleton pages for each part of an IHE supplement. The instructions for how to fill out these sections can be found in the included [Supplement Template](https://github.com/IHE/supplement-template/blob/master/suppl_template.md). This supplement template should not be included in your github repo or publication. It is included here for easy reference.**

**TODO: Write your executive overview here. Usually a one paragraph explanation of what problem this implementation guide solves.**-->
<a name="introduction"> </a>
IHE provides multiple profiles for [mobile use](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html) (e.g. [SVCM](https://profiles.ihe.net/ITI/SVCM/index.html), [MHD](https://profiles.ihe.net/ITI/MHD/index.html), [MHDS](https://profiles.ihe.net/ITI/MHDS), [NPFS](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_NPFS.pdf)), defining many items (FHIR resource, Documents, etc.) that can be shared, searched, and retrieved with devices, but doesn’t provide a common framework for subscribing those items.

For documents, IHE provides an excellent tool to search and retrieve them through RESTful capabilities [Mobile Access to Health Documents (MHD)](https://profiles.ihe.net/ITI/MHD/index.html) but doesn’t address the subscription from a mobile device although it’s possible through a nonmobile application ([DSUB](https://profiles.ihe.net/ITI/TF/Volume1/ch-26.html)).

The Document Subscription for Mobile (DSUBm) profile describes the use of document subscription and notification mechanisms for RESTful applications. In a similar way to the [DSUB](https://profiles.ihe.net/ITI/TF/Volume1/ch-26.html) profile, a subscription is made in order to receive a notification when a document publication event matches the criteria expressed in the subscription. 

This profile can be applied in a RESTful-only environment as [MHDS](https://profiles.ihe.net/ITI/MHDS) but it can also be used with different nonmobile profiles as [XDS.b](https://profiles.ihe.net/ITI/TF/Volume1/ch-10.html) and [DSUB](https://profiles.ihe.net/ITI/TF/Volume1/ch-26.html). This profile intends to grants the same funtionality as the [DSUB](https://profiles.ihe.net/ITI/TF/Volume1/ch-26.html) profile and its supplements regarding documents subscription but also adding some other functionalities (e.g. Subscription Search). This profile can be also used only to add the Subscription Search functionality to the [DSUB](https://profiles.ihe.net/ITI/TF/Volume1/ch-26.html) profile.

This profile intends to be compliant with [Subscriptions R5 Backport](http://hl7.org/fhir/uv/subscriptions-backport/STU1.1/).


<div markdown="1" class="stu-note">

| [Significant Changes, Open and Closed Issues](issues.html) |
{: .grid}

</div>

### Organization of This Guide
This guide is organized into the following sections:

- Volume 1:
   1. [Introduction](index.html)
   1. [Actors, Transactions, and Content](volume-1.html#actors-and-transactions)
   1. [Actor Options](volume-1.html#actor-options)
   1. [Actor Required Groupings](volume-1.html#required-groupings)
   1. [Overview](volume-1.html#overview)
   1. [Security Considerations](volume-1.html#security-considerations)
   1. [Cross Profile Considerations](volume-1.html#other-grouping)
- Volume 2: Transaction Detail
   1. [Resource Subscription [ITI-110]](ITI-110.html)
   1. [Resource Subscription [ITI-111]](ITI-111.html)
   1. [Resource Notify [ITI-112]](ITI-112.html)
   1. [Resource Subscription Search [ITI-113]](ITI-113.html)
   1. [Resource SubscriptionTopic Search [ITI-114]](ITI-114.html)

- Other
   1. [Changes to Other IHE Specifications](other.html)
   1. [Download and Analysis](download.html) 

See also the [Table of Contents](toc.html) and the index of [Artifacts](artifacts.html) defined as part of this implementation guide.

### Conformance Expectations

IHE uses the normative words: Shall, Should, and May according to [standards conventions](https://profiles.ihe.net/GeneralIntro/ch-E.html).

#### Must Support

The use of ```mustSupport``` in StructureDefinition profiles equivalent to the IHE use of **R2** as defined in [Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.10-profiling-conventions-for-constraints-on-fhir).

mustSupport of true - only has a meaning on items that are minimal cardinality of zero (0), and applies only to the source actor populating the data. The source actor shall populate the elements marked with MustSupport, if the concept is supported by the actor, a value exists, and security and consent rules permit. 
The consuming actors should handle these elements being populated or being absent/empty. 
Note that sometimes mustSupport will appear on elements with a minimal cardinality greater than zero (0), this is due to inheritance from a less constrained profile.
