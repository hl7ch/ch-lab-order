Profile: ChLabOrderDocument
Parent: CHCoreDocumentEPR
Id: ch-lab-order-document
Title: "CH LAB-ORDER Document Profile"
Description: "Definition of the bundle for the lab order document"
* . ^short = "CH Lab-Order Bundle"
* ^version = "0.1.0"
* ^experimental = false

// * ^publisher = "eHealth Suisse"
// * . ^short = "CH LAB-ORDER Document"
* identifier MS
* identifier ^short = "Document Identifier"
* identifier.system MS
* identifier.system = "urn:ietf:rfc:3986" (exactly)
* identifier.value MS
* identifier.value ^short = "UUID as Document Identifier"
* type MS
* timestamp MS
* timestamp ^short = "The document's creation date and time"
* total 0..0
* link 0..0
* entry MS
// * entry ^slicing.discriminator.type = #profile
// * entry ^slicing.discriminator.path = "resource"
// * entry ^slicing.rules = #open
// * entry[Composition] 1..1
// * entry[Composition] ^short = "Lab order composition"
// * entry[Composition].resource 1..
// * entry[Composition].resource only ChLabOrderComposition