
CI Build - http://build.fhir.org/ig/IHE/ITI.DSUBm/branches/master/index.html


Summmary list of major considerations during the previous meets:

- the scope intends to consider subscription for documents, not other sharing resources (e.g. files or FHIR resources)

- take consideration on DUSB and its supplement (including the patient independent subscriptions, folder subscriptions and SubmissionSet subscriptions) but, at the beginning, not consider the "pull" method describes in the suppl.
https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_DSUB_Extensions.pdf

- according with the cross-profile consideration in DSUB, mantain the same logic for DSUBm and not consider the grouping as option but explain the most desiderable grouping in the cross-profile paragraph.

- Decided to implement Subscriptions R5 Backport IG and use R4b FHIR version.  
LINK: https://build.fhir.org/ig/HL7/fhir-subscription-backport-ig/index.html
It follows that
1. Resource Notification Broker SHALL support search of Subscription resources
2. Resource Notification Broker SHALL support search of SubscriptionTopic resources

Here the analysis between R5 Backport IG and DSUBm: 
https://github.com/IHE/ITI.DSUBm/blob/master/DSUBm%20-%20Subscriptions%20R5%20Backport.pdf


- From the previuos point we decided to split the Search transaction in 2 different transaction:
ITI-113 Resource Subscription Search (OPTIONAL for the Subscriber --> if supported there is Option Subscription Search )
ITI-118 Resource SubscriptionTopic Search (OPTIONAL for the Subscriber --> if supported there is Option Subscription Search )

In this way: 
1. The transaction model is more clear. 
2. [ITI-113] Resource Subscription Search and  [ITI-118] Resource SubscriptionTopic Search have different trigger events 


## VOLUME 2  
- ITI-111 Resource Publish 
POST bundle with type = colletion
The notification shall include: one or more DocumentReference resource and zero or more Folder type List Resources and zero or more SubmissionSet type List Resources.

    - grouping with MHDS is a [ITI-65] without the binary of the document (only metadata)
    - grouping with XDS Document Registry introduced tables for mapping of metadata to resources.

- ITI-110 Resource Sunscription  
POST or PUT of subscription resource (as in R5 Backport IG)
not allowed PUT as create 

different type of subscription 

    - Patient Dependent Document Subscription resource
    - Patient Independent Folder Subscription resource
    - Patient Independent Document resource
    - Folder Subscription
    - SubmissionSet Subscription


- ITI-112 Resource Notify 
POST bundle with type = history, (as in R5 Backport IG)
SubscriptionStatus as the first entry. 
The notification shall include: one or more DocumentReference resource and zero or more Folder type List Resources and zero or more SubmissionSet type List Resources.

- ITI-113 Resource Subscription Search
 GET [base]/Subscription?[Parameters]

Optional for the Resource Notification Subscriber

- ITI-118 Resource SubscriptionTopic Search
 GET [base]/SubscriptionTopic?[Parameters]

Optional for the Resource Notification Subscriber

