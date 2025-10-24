Extension: ChLabSpecimenRequested
Id: ch-lab-specimen-requested
Title: "CH LAB Specimen Requested"
Description: "Specifies which specimen types are required for this laboratory service."
* ^url = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-specimen-requested"
* ^version = "1.0.0"
* ^status = #active
* ^publisher = "CH LAB Working Group"
* ^context.type = #element
* ^context.expression = "PlanDefinition.action"
/*
* extension contains
    specimenType 0..* and
    specimenDefinition 0..*
* extension[specimenType].valueCodeableConcept from http://fhir.ch/ig/ch-lab-order/ValueSet/ch-lab-vs-specimen-type (extensible)
* extension[specimenDefinition].valueReference only Reference(SpecimenDefinition)
*/
* extension contains
    Material 1..* and
    ExclusiveGroup 0..1

* extension[Material].valueReference only Reference(SpecimenDefinition)
* extension[ExclusiveGroup].valueBoolean