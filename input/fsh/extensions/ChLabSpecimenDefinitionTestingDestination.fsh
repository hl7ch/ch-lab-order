Extension: ChLabSpecimenDefinitionTestingDestination
Id: ch-lab-specimen-definition-testing-destination
Title: "CH LAB Diagnostic Services"
Description: "Where the specimen will be tested, R4"
* ^context.type = #element
* ^context.expression = "SpecimenDefinition"
* valueCodeableConcept from http://hl7.org/fhir/ValueSet/diagnostic-service-sections (preferred)
