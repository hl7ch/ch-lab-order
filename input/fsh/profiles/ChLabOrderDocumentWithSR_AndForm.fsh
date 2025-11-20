Profile: ChLabOrderDocumentWithSR_AndForm
Parent: ChOrfDocument
Id: ch-lab-order-document-with-sr-and-form
Title: "CH LAB-Order Document with ServiceRequest and Form"
Description: "Definition of the Bundle resource to describe the lab order document using ServiceRequest and Form."
* . ^short = "CH LAB-Order Bundle with ServiceRequest and Form"
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
// * entry MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
// ---------- Bundle.entry:Composition ----------
* entry[Composition] 1..1
* entry[Composition] ^short = "Lab order composition"
* entry[Composition].resource 1..
* entry[Composition].resource only ChLabOrderCompositionWithSR_AndForm

// ---------- Bundle.entry:Patient ----------
* entry[Patient] 1..*
* entry[Patient] ^short = "Patient"
* entry[Patient].resource 1..
* entry[Patient].resource only CHCorePatient
