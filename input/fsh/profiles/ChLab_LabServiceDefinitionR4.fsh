Profile: ChLabServiceDefinitionR4
Parent: PlanDefinition
Id: ch-laborder-labservicedefinition
Title: "CH LAB-Order Service Definition (R4 compatible)"
Description: "A simplified adaptation of the Order Catalog LabServiceDefinition profile for use in the CH Lab Order IG (FHIR R4)."
* ^version = "1.0.0"
* ^status = #active
* ^publisher = "CH Lab Order IG Working Group"
* ^jurisdiction = urn:iso:std:iso:3166#CH "Switzerland"

* type 1..1
* type from http://hl7.org/fhir/uv/order-catalog/ValueSet/laboratory-service-type (required)

* status 1..1
* status from http://hl7.org/fhir/ValueSet/publication-status (required)

* subject[x] only CodeableConcept
* subjectCodeableConcept from http://fhir.ch/ig/ch-lab-order/ValueSet/ch-lab-vs-specimen-type (extensible)

* action.groupingBehavior from http://hl7.org/fhir/ValueSet/action-grouping-behavior (required)
* action.selectionBehavior from http://hl7.org/fhir/ValueSet/action-selection-behavior (required)

* language from http://hl7.org/fhir/ValueSet/all-languages (extensible)
