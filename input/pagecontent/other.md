<div markdown="1" class="stu-note">
This section modifies other IHE profiles or the General Introduction appendices and is not a part of the DSUBm Profile. The content here will be incorporated into the target narrative at a future time, usually when DSUBm Profile goes normative.
</div>

## IHE Technical Frameworks Document Metadata Subscription (DSUB) Profile

|------------------------------------------------|
| Editor: Apply the following updates to DSUB Table 26.1-1 |
| Note for the Editor: Be aware of a possible previous integration of DSUB supplement (Extensions to the Document Metadata Subscription (DSUB) Profile)  |
{:.grid .bg-info}

**Table 1:26.1-1: DSUBm Profile - Actors and Transactions**

|---------|---------------|------------------------|-----------------|-----------------------------------|
| **Actors**  | **Transactions**  | **Optionality**  |       **Reference**           |
| Document Metadata Notification Broker    | Document Metadata Subscribe    | R    | ITI TF-2: 3.52     |  
|                                          | Document Metadata Notify   | R    | ITI TF-2: 3.53     | 
|                                          | Document Metadata Publish    | O    | ITI TF-2: 3.54    |  
|                                          | **<u>Resource Subscription Search</u>** | **<u>O (Note 1)</u>**  | **<u>ITI TF-2: 3.113</u>**     | 
| Document Metadata Subscriber              |Document Metadata Subscribe |R |ITI TF-2: 3.52| 
|                                          | **<u>Resource Subscription Search</u>**   | **<u>O (Note 1)</u>**  | **<u>ITI TF-2: 3.113</u>**     | 
|Document Metadata Publisher |Document Metadata Publish | R | ITI TF-2: 3.54 |
|Document Metadata Notification Recipient | Document Metadata Notify | R | ITI TF-2:3.53|
{: .grid .table-striped}

|------------------------------------------------|
| Editor: Add this Note to DSUB below Table 26.1-1 |
| Note for the Editor: Be aware of a possible previous integration of DSUB supplement (Extensions to the Document Metadata Subscription (DSUB) Profile)  |
{:.grid .bg-info}

*Note 1: The Document Metadata Notification Broker and the Document Metadata Subscriber SHALL support the Resource Subscription Search [ITI-113] transaction if they supports the Subscription Search Option (see Section 26.2.2).*

|------------------------------------------------|
| Editor: add to DSUB Sections 26.2.2  |
| Note for the Editor: Be aware of a possible previous integration of DSUB supplement (Extensions to the Document Metadata Subscription (DSUB) Profile)  |
{:.grid .bg-info}

### 26.2.2 Subscription Search Option

The Document Metadata Notification Broker that support this option SHALL support the Resource Subscription Search [ITI-113] transaction. With this option the Document Metadata Notification Broker SHALL be capable of return a list of Subscription Resources that match the search parameter, on the base of the subscription it has received with the Document Metadata Subscribe [ITI-52] transaction and that it has tracked. It SHOULD support the %status operation and it MAY support the $events operation Resource Subscription Search [ITI-113] transaction.

The Document Metadata Subscriber that support this option SHALL support the Resource Subscription Search [ITI-113] transaction. With this option the Document Metadata Subscriber can search the subscription towards the Document Metadata Notification Broker. With this option the Document Metadata Subscriber SHALL support the search and/or read of Subscription Resource. It MAY support the %status operation and it MAY support the $events operation of the Resource Subscription Search [ITI-113] transaction.

## IHE Technical Frameworks General Introduction Appendix A: Actors

|------------------------------------------------|
| Editor, add the following new or modified actors to the [IHE Technical Frameworks General Introduction Appendix A](https://profiles.ihe.net/GeneralIntro/ch-A.html): |
{:.grid .bg-info}

| Actor                            | Definition                                                                                |
| -------------------------------- | ------------------------------------------------------------------------------------------|
| Resource Notification Broker     | The receiver of the Resource Subscription transaction containing a subscription request or a subscription cancellation |
| Resource Notification Publisher  | Sends a Resource Publish transaction to the Resource Notification Broker when an event occurs for which a subscription MAY exist |
| Resource Notification Recipient  | Receives the notification about an event when the subscription filters specified for this Document Resource Notification Recipient are satisfied |
| Resource Notification Subscriber | Initiates and terminates subscriptions on behalf of a Resource Notification Recipient |
{:.grid .table-striped}

## IHE Technical Frameworks General Introduction Appendix B: Transactions

|------------------------------------------------|
| Editor, add the following new or modified transactions to the [IHE Technical Frameworks General Introduction Appendix B](https://profiles.ihe.net/GeneralIntro/ch-B.html): |
{:.grid .bg-info}

| Transaction                                 | Definition                                                                              |
| ------------------------------------------- | --------------------------------------------------------------------------------------- |
| Resource Subscription [ITI-110] | Passes a Resource Subscription Request from a Resource Notification Subscriber to a Resource Notification Broker. |
| Resource Publish [ITI-111] | Delivers information from the Resource Notification Publisher to the Resource Notification Broker about events regarding DocumentReference, Folder type List and SubmissionSet type List resources |
| Resource Notify [ITI-112] | Delivers a notification from the Resource Notification Broker to the Resource Notification Recipient about an event which matches an existing subscription |
| Resource Subscription Search [ITI-113] | Passes a Resource Subscription Search message from a Resource Notification Subscriber to a Resource Notification Broker in order to discover Subscriptions, to be aware of Subscriptions status or to be aware of previous events related to Subscriptions |
| Resource SubscriptionTopic Search [ITI-114] | Used by the Resource Notification Subscriber to Resource Notification Broker actors, in order to search for a SubscriptionTopic to be used in a Subscription |
{:.grid .table-striped}

## IHE Technical Frameworks General Introduction Appendix D: Glossary

|------------------------------------------------|
| Editor, add the following new or modified terms to the [IHE Technical Frameworks General Introduction Appendix D](https://profiles.ihe.net/GeneralIntro/ch-D.html): |
{:.grid .bg-info}

| Term                         | Definition                                                    | Acronyms/Abbreviations | Synonyms    |
| ---------------------------- | --------------------------------------------------------------| -----------------------| ------------|
| none |  |
{:.grid .table-striped}