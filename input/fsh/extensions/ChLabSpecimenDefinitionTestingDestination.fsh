Extension: ChLabSpecimenDefinitionTestingDestination
Id: ch-lab-specimen-definition-testing-destination
Title: "CH LAB SpecimenDefinition Testing Destination"
Description: "Testing destination for the SpecimenDefinition, e.g. Chemistry, Hematology, Microbiology."
* ^context.type = #element
* ^context.expression = "SpecimenDefinition"
* value[x] only CodeableConcept
* valueCodeableConcept from ChLabVsTestingDestination (preferred)
* valueCodeableConcept ^short = "Laboratory testing destination"
* valueCodeableConcept ^definition = "Indicates which laboratory area or discipline the specimen is intended for."
