Profile: ChLabOrderCompositionWithSR
Parent: CHCoreComposition
Id: ch-lab-order-composition-with-sr
Title: "CH LAB-Order Composition with Service Request"
Description: "Definition for Composition resource in the context of CH LAB-Order with Service Request, parent is CHCoreComposition"
* . ^short = "CH LAB-Order Composition with ServiceRequest"
* ^version = "3.0.0"
* ^status = #active
* ^date = "2019-01-30"
* ^publisher = "HL7 Switzerland"
* ^contact[0].name = "HL7 Switzerland"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.hl7.ch/"
* ^contact[+].name = "Marcel Hanselmann"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "hanselmann48@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CH
* ^copyright = "CC0-1.0"
* type from DocumentEntryTypeCode (required)
* type ^short = "Precise type of clinical document"
* category 1..1
* category from DocumentEntryClassCode (required)
* category ^short = "Order Document"
* subject 1.. MS
* subject ^short = "Patient as the principle target of service request"
* author ..1 MS
* author only Reference(CHCorePractitionerRole)
* author ^short = "The person/organization responsible for the form content"
* title MS
* title ^short = "Meaningful title"

// ---------- Composition.section.entry:ServiceRequest ----------

* section MS
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open

// ---------- Composition.section:orderReferral ----------
* section contains orderReferral 1..1 MS
* section[orderReferral] ^short = "Contains the data that supports the order by ServiceRequest."
* section[orderReferral].title 1..1 MS
* section[orderReferral].title ^short = "Laboratory Order by Service Request"
* section[orderReferral].code 1..1 MS
* section[orderReferral].code = $sct#721963009 "Order (record artifact)"
* section[orderReferral].text MS
* section[orderReferral].section 0..0

* section[orderReferral].entry MS
* section[orderReferral].entry ^slicing.discriminator.type = #profile
* section[orderReferral].entry ^slicing.discriminator.path = "resolve()"
* section[orderReferral].entry ^slicing.rules = #open
 
* section[orderReferral].entry contains ServiceRequest 1..* MS
* section[orderReferral].entry[ServiceRequest] only Reference(ChLabOrderSR)
* section[orderReferral].entry[ServiceRequest] ^short = "ServiceRequest"
* section[orderReferral].entry[ServiceRequest].reference 1.. MS
// ---------- Composition.section.entry:DocumentReference ----------
* section[orderReferral].entry contains DocumentReference 0..* MS
* section[orderReferral].entry[DocumentReference] only Reference(ChLabDocumentReference)
* section[orderReferral].entry[DocumentReference] ^short = "DocumentReference"
* section[orderReferral].entry[DocumentReference].reference 1.. MS