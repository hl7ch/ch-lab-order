
/*
Profile: ChLabCatalogHeader
Parent: Composition
Id: CatalogHeader
Title: "Catalog Header"
Description: "This profile of Compositions retains the elements and extensions needed to characterize a catalog of laboratory services artefacts, with a set of general properties (name, category, owner, ...)"
* ^text.status = #additional
* ^text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">This profile constrains the Composition resource to\n      represent the header of a swiss catalog of laboratory services artefacts. The\n      resource provides the global metadata of the catalog, such as the custodian, category,\n      validity period and title. An instance of Composition profiled by CatalogHeader does not\n      mention the catalog items. Instead, it is referenced by the definitional resources\n      representing the items belonging to this catalog.</div>"
* ^version = "current"
* ^status = #draft
* ^publisher = "HL7 Switzerland"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.ch"
* ^jurisdiction = urn:iso:std:iso:3166#CH
* ^purpose = "An instance of Composition conforming to this profile represents the general properties of a specific catalog of healthcare items (services/products/knowledge artefacts).\r\nSuch a resource is referenced by the resources representing the individual items of the catalog."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains $ValidityPeriod named ValidityPeriod 0..1 MS
* type ^short = "Kind of composition: a catalog"
* type.text 1..
* type.text = "Catalog" (exactly)
* category from $catalogType (example)
* category ^short = "Kind of catalog"
* category ^min = 0
* category ^binding.description = "Category of catalog content"
* subject ^short = "Plan or set of dispositions subject of the catalog"
* subject ^definition = "The catalog may be set up to be used in the context of a particular plan or set of financial, organizational or legal dispositions"
* subject ^comment = "For example the catalog may provide the details of reimbursement of its items within the context of an insurance plan handled by a payer"
* encounter ..0
* date ^short = "Catalog content last editing time"
* author only Reference(Organization)
* author ^short = "The organization authoring the catalog content"
* author ^definition = "An organization authoring and owning the content of the catalog"
* author ^comment = "In general there is a single author for a catalog. However there may be use cases where multiple authors contribute to various parts of a catalog, each author owning one part and being responsible for its content."
* author ^alias = "catalog owner"
* title.extension ^slicing.discriminator.type = #value
* title.extension ^slicing.discriminator.path = "url"
* title.extension ^slicing.rules = #open
* title.extension contains Translation named OtherTitle 0..*
* attester ..1
* attester.time 1..
* custodian 1..
* event ..0
* section ..0
*/