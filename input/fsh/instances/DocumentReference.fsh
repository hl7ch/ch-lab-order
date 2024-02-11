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
* securityLabel = $v3-Confidentiality#N "normal"
* content.attachment.contentType = #application/hl7-v3+xml
* content.attachment.language = #en-US
* content.attachment.url = "http://example.org/xds/mhd/Binary/07a6483f-732b-461e-86b6-edb665c45510"
* content.attachment.size = 3654
* content.attachment.hash = "2jmj7l5rSw0yVb/vlWAYkK/YBwk="
* content.attachment.title = "Physical"
* content.attachment.creation = "2005-12-24T09:35:00+11:00"
// * content.format = urn:oid:1.3.6.1.4.1.19376.1.2.3#urn:ihe:pcc:handp:2008 "History and Physical Specification"
// * context.encounter = Reference(Encounter/xcda)
// * context.event = $eventCodes#T-D8200 "Arm"
// * context.period.start = "2004-12-23T08:00:00+11:00"
// * context.period.end = "2004-12-23T08:01:00+11:00"
// * context.facilityType = $healthcareFacilityTypeCodes#Outpatient "Outpatient"
// * context.practiceSetting = $practiceSettingCodes#"General Medicine" "General Medicine"
// * context.sourcePatientInfo = Reference(Patient/xcda)
// * context.related = Reference(Patient/xcda)
// * context.related.identifier.system = "urn:ietf:rfc:3986"
// * context.related.identifier.value = "urn:oid:1.3.6.1.4.1.21367.2005.3.7.2345"
