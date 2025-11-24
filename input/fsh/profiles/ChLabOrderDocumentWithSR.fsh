Profile: ChLabOrderDocumentWithSR
Parent: CHCoreDocument
Id: ch-lab-order-document-with-sr
Title: "CH LAB-Order Document with ServiceRequest"
Description: "Definition of the Bundle resource to describe the lab order document using ServiceRequest."
* . ^short = "CH LAB-Order Document with ServiceRequest"
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
* entry[Composition].resource only ChLabOrderCompositionWithSR

// ---------- Bundle.entry:Patient ----------
* entry[Patient] 1..*
* entry[Patient] ^short = "Patient"
* entry[Patient].resource 1..
* entry[Patient].resource only CHCorePatient

// the entries below are not mandatory, but they are useful for the lab order
// and the lab order document to suppress the informations about slicing mismatches. But there are issues
// with condition and service request, so they are not included in the profile.

* entry contains Coverage 0..*
* entry[Coverage] ^short = "Health insurance card"
* entry[Coverage].resource 0..1
* entry[Coverage].resource only CHCoreCoverage

/* 
* entry contains Specimen 0..*
* entry[Specimen] ^short = "CH LAB-Order Specimen"
* entry[Specimen].resource 0..1
* entry[Specimen].resource only Specimen

* entry contains Condition 0..*
* entry[Condition] ^short = "Condition"
* entry[Condition].resource 0..1
* entry[Condition].resource only CHCoreCondition

* entry contains ServiceRequest 0..*
* entry[ServiceRequest] ^short = "ServiceRequest"
* entry[ServiceRequest].resource 0..1
* entry[ServiceRequest].resource only ChLabOrderSR
*/