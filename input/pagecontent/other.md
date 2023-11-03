<div markdown="1" class="stu-note">
This section modifies other IHE profiles or the General Introduction appendices and is not a part of the DSUBm Profile. The content here will be incorporated into the target narrative at a future time, usually when DSUBm Profile goes normative.
</div>

## IHE Technical Frameworks Document Metadata Subscription (DSUB) Profile


|------------------------------------------------|
| Editor: Apply the following updates to Table 26.1-1 |
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
{: .grid}

|------------------------------------------------|
| Editor: Add this Note below Table 26.1-1 |
| Note for the Editor: Be aware of a possible previous integration of DSUB supplement (Extensions to the Document Metadata Subscription (DSUB) Profile)  |
{:.grid .bg-info}

*Note 1: The Document Metadata Notification Broker and the Document Metadata Subscriber shall support the Resource Subscription Search [ITI-113] transaction if they supports the Subscription Search Option (see Section 26.2.2).*


|------------------------------------------------|
| Editor: add Sections 26.2.2  |
| Note for the Editor: Be aware of a possible previous integration of DSUB supplement (Extensions to the Document Metadata Subscription (DSUB) Profile)  |
{:.grid .bg-info}

### 26.2.2 Subscription Search Option

The Document Metadata Notification Broker that support this option shall support the Resource Subscription Search [ITI-113] transaction. With this option the Document Metadata Notification Broker shall be capable of return a list of Subscription Resources that match the search parameter, on the base of the subscription it has received with the Document Metadata Subscribe [ITI-52] transaction and that it has tracked. It should support the %status operation and it may support the $events operation Resource Subscription Search [ITI-113] transaction.

The Document Metadata Subscriber that support this option shall support the Resource Subscription Search [ITI-113] transaction. With this option the Document Metadata Subscriber can search the subscription towards the Document Metadata Notification Broker. With this option the Document Metadata Subscriber shall support the search and/or read of Subscription Resource. It may support the %status operation and it may support the $events operation of the Resource Subscription Search [ITI-113] transaction.