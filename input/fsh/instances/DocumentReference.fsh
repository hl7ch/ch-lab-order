Instance: example
InstanceOf: ChLabDocumentReference
Title: "DocumentReference: Physical"
Usage: #example
// * contained = a2
* masterIdentifier.system = "urn:ietf:rfc:3986"
* masterIdentifier.value = "urn:oid:1.3.6.1.4.1.21367.2005.3.7"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:1.3.6.1.4.1.21367.2005.3.7.1234"
* status = #current
* docStatus = #preliminary
* type = $sct#371529009 "History and physical report (record artifact)"
* category = $sct#721927009 "Referral note (record artifact)"
* subject = Reference(Patient/HansGuggindieluft)
* date = "2005-12-24T09:43:41+11:00"
* author = Reference(PractitionerRole/MarcMustermannGruppenpraxis)
* authenticator = Reference(Organization/Gruppenpraxis)
* custodian = Reference(Organization/Gruppenpraxis)
* relatesTo.code = #appends
* relatesTo.target = Reference(example)
* description = "Physical"
* securityLabel = $sct#17621005 "Normal (qualifier value)"

* content.attachment.contentType = #application/fhir+xml
* content.attachment.language = #en-US
* content.attachment.url = "http://example.org/xds/mhd/Binary/07a6483f-732b-461e-86b6-edb665c45510"
* content.attachment.size = 3654
* content.attachment.hash = "2jmj7l5rSw0yVb/vlWAYkK/YBwk="
* content.attachment.title = "Physical"
* content.attachment.creation = "2005-12-24T09:35:00+11:00"
