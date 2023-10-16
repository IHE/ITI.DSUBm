Profile: UniqueIdIdentifierR4
Parent: Identifier
Id: IHE.DSUBm.UniqueIdIdentifierR4
Title: "uniqueId Identifier"
Description: "uniqueId Identifier
- see [Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.9.1-identifier-type)"
* system 1..
* use 1..1
* use = #usual
* value 1..

Profile: SubmissionSetUniqueIdIdentifierR4
Parent: UniqueIdIdentifierR4
Id: IHE.DSUBm.SubmissionSetUniqueIdIdentifierR4
Title: "uniqueId Identifier for SubmissionSet"
Description: "uniqueId Identifier holding a OID"
* system = "urn:ietf:rfc:3986" (exactly)
* value obeys DSUBm-startswithoidR4

Invariant: DSUBm-startswithoidR4
Description: "value must start with urn:oid:"
Severity: #error
Expression: "value.startsWith('urn:oid:')"

Profile: EntryUUIDIdentifierR4
Parent: Identifier
Id: IHE.DSUBm.EntryUUID.IdentifierR4
Title: "entryUUID Identifier"
Description: "entryUUID Identifier holding a UUID"
* system 1..1
* system = "urn:ietf:rfc:3986" (exactly)
* value 1..1
* value obeys DSUBm-startswithuuidR4
* use = #official

Invariant: DSUBm-startswithuuidR4
Description: "value must start with urn:uuid:"
Severity: #error
Expression: "value.startsWith('urn:uuid:')"