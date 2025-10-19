Profile: ChLabCatalogHeaderR4
Parent: Composition
Id: ch-lab-catalog-header-r4
Title: "CH LAB Catalog Header (R4)"
Description: "Composition header for lab catalogs (R4 compatible)"

* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.discriminator[0].path = "url"
* extension ^slicing.rules = #open

* extension contains ValidityPeriod named validityPeriod 0..1
* extension[validityPeriod].url ^fixedUri = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-validity-period"
* extension[validityPeriod].valuePeriod 1..1


Extension: ValidityPeriod
Id: ch-lab-validity-period
Title: "CH LAB Validity Period"
Description: "Specifies the period of time during which a laboratory catalog or diagnostic service is valid."

* ^context[0].type = #element
* ^context[0].expression = "Composition"
* value[x] only Period
* valuePeriod ^short = "Validity period of the catalog"