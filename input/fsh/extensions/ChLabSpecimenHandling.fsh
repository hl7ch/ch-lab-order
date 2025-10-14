Extension: ChLabSpecimenHandling
Id: ch-lab-specimen-handling
Title: "Specimen handling (CH extension)"
Description: "Erfasst Handling-Informationen (Temperaturqualifier, max duration, Instruktion)."
* ^url = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-specimen-handling"

// Kontext: auf SpecimenDefinition anwendbar
* ^context.type = #element
* ^context.expression = "SpecimenDefinition"

// Diese Extension hat keine value[x], sondern Sub-Extensions
* extension contains
    temperatureQualifier 0..1 and
    maxDuration 0..1 and
    instruction 0..1

* extension[temperatureQualifier].valueCodeableConcept only CodeableConcept
* extension[temperatureQualifier].valueCodeableConcept from http://hl7.org/fhir/ValueSet/specimen-container-temperature (extensible)

* extension[maxDuration].valueDuration only Duration

* extension[instruction].valueMarkdown only markdown
