Extension: ChLabSpecimenHandling
Id: ch-lab-specimen-handling
Title: "CH LAB Specimen Handling"
Description: "Handling instructions for laboratory specimens (adapted from R5 SpecimenDefinition.handling)"
* ^url = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-specimen-handling"
* ^version = "1.0.0"
* ^status = #active
* ^context.type = #element
* ^context.expression = "SpecimenDefinition.typeTested"
* ^publisher = "HL7 Switzerland"
* ^contact[0].name = "HL7 Switzerland"

// ─────────────────────────────
// Sub-extensions
// ─────────────────────────────
* extension contains
    temperatureQualifier 0..1 and
    temperatureRange 0..1 and
    maxDuration 0..1 and
    instruction 0..1

// temperatureQualifier
* extension[temperatureQualifier].valueCodeableConcept 1..1
* extension[temperatureQualifier].valueCodeableConcept from http://fhir.ch/ig/ch-lab-order/ValueSet/ch-lab-vs-container-temperature (preferred)

// temperatureRange
* extension[temperatureRange].valueRange 1..1

// maxDuration
* extension[maxDuration].valueDuration 1..1

// instruction
* extension[instruction].valueMarkdown 1..1
