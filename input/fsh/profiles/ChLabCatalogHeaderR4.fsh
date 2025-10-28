Profile: ChLabCatalogHeaderR4
Parent: Composition
Id: ch-lab-catalog-header-r4
Title: "CH LAB Catalog Header (R4)"
Description: """
Composition header for laboratory catalogs (R4-compatible adaptation of the HL7 Order Catalog CatalogHeader profile).
This profile defines the structure of the catalog metadata and includes the validity period extension.
"""
* ^url = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-catalog-header-r4"
* ^status = #active
* ^version = "1.0.0"
* ^publisher = "HL7 Switzerland"
* ^jurisdiction = urn:iso:std:iso:3166#CH "Switzerland"

// --------------------------
// Extension: validityPeriod
// --------------------------
* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.discriminator[0].path = "url"
* extension ^slicing.rules = #open
* extension contains ChLabValidityPeriod named validityPeriod 0..1
* extension[validityPeriod].valuePeriod 0..1

// --------------------------
// Composition metadata
// --------------------------
* status 1..1
* status from http://hl7.org/fhir/ValueSet/composition-status (required)

* type ^short = "Kind of composition: a catalog"
* type 1..1
* type ^short = "Type of composition – fixed to 'Catalog'"
* type.text = "Catalog" (exactly)

* category from CatalogType (example)
* category ^short = "Kind of catalog"
* category ^min = 0
* category ^binding.description = "Category of catalog content"
* subject ^short = "Plan or set of dispositions subject of the catalog"
* subject ^definition = "The catalog may be set up to be used in the context of a particular plan or set of financial, organizational or legal dispositions"
* subject ^comment = "For example the catalog may provide the details of reimbursement of its items within the context of an insurance plan handled by a payer"
* encounter ..0

* title.extension ^slicing.discriminator.type = #value
* title.extension ^slicing.discriminator.path = "url"
* title.extension ^slicing.rules = #open
* title.extension contains Translation named OtherTitle 0..*

* date 1..1
* date ^short = "Date when the catalog was published or last updated"

// --------------------------
// Participants
// --------------------------
* author 1..*
* author ^short = "The organization that authored the catalog"
* author only Reference(Organization)

* attester 1..
* attester ^short = "Attesters validating the catalog"
* attester.mode 1..1
* attester.mode = #official
* attester.time 1..1
* attester.party 0..1
* attester.party only Reference(Organization)

* custodian 1..1
* custodian ^short = "The organization responsible for maintaining the catalog"
* custodian only Reference(Organization)

// --------------------------
// Sections event absent
// --------------------------
* event ..0
* section ..0

