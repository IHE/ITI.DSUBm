Profile: UniqueIdIdentifier
Parent: Identifier
Id: IHE.DSUBm.UniqueIdIdentifier
Title: "uniqueId Identifier"
Description: "uniqueId Identifier
- see [Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.9.1-identifier-type)"
* system 1..
* use 1..1
* use = #usual
* value 1..

Profile: SubmissionSetUniqueIdIdentifier
Parent: UniqueIdIdentifier
Id: IHE.DSUBm.SubmissionSetUniqueIdIdentifier
Title: "uniqueId Identifier for SubmissionSet"
Description: "uniqueId Identifier holding a OID"
* system = "urn:ietf:rfc:3986" (exactly)
* value obeys DSUBm-startswithoid

Invariant: DSUBm-startswithoid
Description: "value must start with urn:oid:"
Severity: #error
Expression: "value.startsWith('urn:oid:')"

Profile: EntryUUIDIdentifier
Parent: Identifier
Id: IHE.DSUBm.EntryUUID.Identifier
Title: "entryUUID Identifier"
Description: "entryUUID Identifier holding a UUID"
* system 1..1
* system = "urn:ietf:rfc:3986" (exactly)
* value 1..1
* value obeys DSUBm-startswithuuid
* use = #official

Invariant: DSUBm-startswithuuid
Description: "value must start with urn:uuid:"
Severity: #error
Expression: "value.startsWith('urn:uuid:')"