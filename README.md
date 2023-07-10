
CI Build - http://build.fhir.org/ig/IHE/ITI.DSUBm/branches/master/index.html


Summmary list of major considerations during the previous meets:
- the scope intends to consider subscription for documents, not other sharing resources (e.g. file)
- take consideration on DUSB and its supplement but, at the beginning, not consider the "pull" method describes in the suppl.
- according with the cross-profile consideration in DSUB, mantain the same logic for DSUBm and not consider the grouping as option but explain the most desiderable grouping in the cross-profile paragraph
- Decided to implement Subscriptions R5 Backport IG and use R4b FHIR version.  
LINK: https://build.fhir.org/ig/HL7/fhir-subscription-backport-ig/index.html
It follows that
1. Resource Notification Broker SHALL support search of Subscription resources
2. Resource Notification Broker SHALL support search of SubscriptionTopic resources

- Split the Search transaction in 2 different transaction:
ITI-113 Resource Subscription Search (OPTIONAL for the Subscriber --> if supported there is Option Subscription Search )
ITI-YY Resource SubscriptionTopic Search (OPTIONAL for the Subscriber --> if supported there is Option Subscription Search )

- ITI-112 Resource Notify 
POST bundle with SubscriptionStatus as the first entry. 

- ITI-111 Resource Publish TO DO 
starting point MHD Comprehensive Metadata: https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.ProvideBundle

