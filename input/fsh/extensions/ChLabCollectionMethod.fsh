Extension: ChLabCollectionMethod
Id: ch-lab-collection-method
Title: "Specimen collection method (CH extension)"
Description: "Erfasst die Sammelmethode des Specimens."
* ^url = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-collection-method"

* ^context.type = #element
* ^context.expression = "SpecimenDefinition"

// The extension has a single CodeableConcept value
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept from http://hl7.org/fhir/ValueSet/specimen-collection-method (extensible)
