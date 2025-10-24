Extension: ChLabCatalogReference
Id: ch-lab-catalog-reference
Title: "CH LAB Catalog Reference"
Description: "Reference to a laboratory catalog or compendium defining the service."
* ^url = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-catalog-reference"
* ^version = "1.0.0"
* ^status = #active
* ^publisher = "CH LAB Working Group"
* ^context.type = #element
* ^context.expression = "PlanDefinition"
/*
* value[x] only Reference(PlanDefinition or Composition)
* valueReference ^short = "Reference to the catalog or composition this service definition belongs to."
*/
* valueReference only Reference(Composition)
* valueReference ^short = "Reference to the catalog Composition that includes this service"
