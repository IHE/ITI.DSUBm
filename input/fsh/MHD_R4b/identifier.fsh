Profile: UniqueIdIdentifierR4b
Parent: Identifier
Id: IHE.DSUBm.UniqueIdIdentifierR4b
Title: "uniqueId Identifier"
Description: "uniqueId Identifier
- see [Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.9.1-identifier-type)"
* system 1..
//* use = #usual
* value 1..

Profile: SubmissionSetUniqueIdIdentifierR4b
Parent: UniqueIdIdentifierR4b
Id: IHE.DSUBm.SubmissionSetUniqueIdIdentifierR4b
Title: "uniqueId Identifier for SubmissionSet"
Description: "uniqueId Identifier holding a OID"
* system = "urn:ietf:rfc:3986" (exactly)
* value obeys mhd-startswithoidR4b

Invariant: mhd-startswithoidR4b
Description: "value must start with urn:oid:"
Severity: #error
Expression: "value.startsWith('urn:oid:')"

Profile: EntryUUIDIdentifierR4b
Parent: Identifier
Id: IHE.DSUBm.EntryUUID.IdentifierR4b
Title: "entryUUID Identifier"
Description: "entryUUID Identifier holding a UUID"
* system 1..1
* system = "urn:ietf:rfc:3986" (exactly)
* value 1..1
* value obeys mhd-startswithuuidR4b
//* use = #official

Invariant: mhd-startswithuuidR4b
Description: "value must start with urn:uuid:"
Severity: #error
Expression: "value.startsWith('urn:uuid:')"