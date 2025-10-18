Profile: ChLab_SpecimenDefinitionR4
Parent: SpecimenDefinition
Id: ch-lab-specimendefinition-r4
Title: "CH LAB Specimen Definition (R4)"
Description: "R4-compatible specimen definition aligned with R5 and HL7 Order Catalog model."
* ^url = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-specimendefinition-r4"
* ^status = #active
* ^version = "1.0.0"
* ^publisher = "CH LAB Working Group"

// ───────────────────────────────────────────────────────
// Import extensions
// Add missing R5 publication status via extension
// ───────────────────────────────────────────────────────
* extension contains ChLabSpecimenDefinitionStatus named status 1..1
* extension[status]. ^short = "Publication status of the SpecimenDefinition"

* extension contains ChLabSpecimenDefinitionTestingDestination named testingDestination 0..1
* extension[testingDestination]. ^short = "Testing destination for the SpecimenDefinition"
// * extension[testingDestination].valueCode from $v2-0074 (preferred)

// ─────────────────────────────
// Basic specimen characteristics
// ─────────────────────────────
* typeCollected 0..1
* typeCollected from http://fhir.ch/ig/ch-lab-order/ValueSet/ch-lab-vs-specimen-type (extensible)
* typeCollected ^short = "The type of specimen to be collected"

* patientPreparation 0..*
* collection 0..*
// * extension contains ChLabSpecimenCollectionMethod named collectionMethod 0..1

// ─────────────────────────────
// Type tested section (R4B structure)
// ─────────────────────────────
* typeTested 0..*
* typeTested.type 1..1
* typeTested.type from http://fhir.ch/ig/ch-lab-order/ValueSet/ch-lab-vs-specimen-type (extensible)
* typeTested.preference 1..1
// * typeTested.preference = #preferred

// Container
* typeTested.container.description 0..1
* typeTested.container.description ^short = "Container description (plain text)"
// * typeTested.container.description ^type.code = #plain text

// ───────────────────────────── not needed, since R4 SpecimenDefinition has handling element ─────
// Handling (added via extension)
// ─────────────────────────────
// * typeTested.extension contains ChLabSpecimenHandling named handling 0..*
// * typeTested.extension[handling] ^short = "Specimen handling instructions"
// * typeTested.handling.temperatureQualifier from ChLabVsContainerTemperature (required)
//   * ^binding.description = "Temperature range applicable to this handling step."
//   * ^binding.strength = #required

// ─────────────────────────────
// Additional notes
// ─────────────────────────────
* typeTested.requirement 0..1
* typeTested.requirement ^short = "Requirements or additional information about the specimen"
