Profile: CHLAB_ORDERDocument
Parent: CHCoreDocumentEPR
Id: ch-lab-order-document
Title: "CH LAB-ORDER Document Profile"
Description: "Definition of the bundle for the lab order document"
* ^version = "0.1.0"
* ^experimental = false
* ^publisher = "eHealth Suisse"
* . ^short = "CH LAB-ORDER Document"
* identifier 1..1
* identifier ^short = "Identification number of the document"
* identifier.system 1..1
* identifier.value 1..
* type = #document (exactly)
* timestamp ^short = "The document's creation date and time"
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry[Composition] 1..1
* entry[Composition] ^short = "Lab order composition"
* entry[Composition].resource 1..
* entry[Composition].resource only ChLabOrderComposition