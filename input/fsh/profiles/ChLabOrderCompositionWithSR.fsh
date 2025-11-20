Profile: ChLabOrderCompositionWithSR
Parent: CHCoreComposition
Id: ch-lab-order-composition-with-sr
Title: "CH LAB-Order Composition with ServiceRequest"
Description: "Definition of the Composition resource using ServiceRequest."
* . ^short = "CH LAB-Order Composition with ServiceRequest"

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
* section[orderReferral].entry[DocumentReference] only Reference(ChLabOrderDocumentReference)
* section[orderReferral].entry[DocumentReference] ^short = "DocumentReference"
* section[orderReferral].entry[DocumentReference].reference 1.. MS