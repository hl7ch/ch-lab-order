Extension: ChLabSpecimenHandling
Id: ch-lab-specimen-handling
Title: "CH LAB Specimen Handling"
Description: "Handling instructions for laboratory specimens (adapted from R5 SpecimenDefinition.handling)."
* ^url = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-specimen-handling"
* ^version = "1.0.0"
* ^status = #active
* ^publisher = "HL7 Switzerland"
* ^contact.name = "HL7 Switzerland"
* ^context.type = #element
* ^context.expression = "SpecimenDefinition.typeTested"

* extension contains
    temperatureQualifier 0..1 and
    temperatureRange 0..1 and
    maxDuration 0..1 and
    instruction 0..1

* extension[temperatureQualifier].valueCodeableConcept 1..1
* extension[temperatureQualifier].valueCodeableConcept from http://fhir.ch/ig/ch-lab-order/ValueSet/ch-lab-vs-container-temperature (preferred)

* extension[temperatureRange].valueRange 1..1
* extension[maxDuration].valueDuration 1..1
* extension[instruction].valueMarkdown 1..1
