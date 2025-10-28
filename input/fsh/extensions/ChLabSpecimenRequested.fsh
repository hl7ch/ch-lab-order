Alias: $ChLabSpecimenDefinition = http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabSpecimenDefinition

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

* extension contains
    Material 1..* and
    ExclusiveGroup 0..1

* extension[Material].valueReference only Reference(SpecimenDefinition)
* extension[ExclusiveGroup].valueBoolean
*/

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains ExclusiveGroup 1..*
* extension[ExclusiveGroup] ^short = "An exclusive group of specimen requested"
* extension[ExclusiveGroup] ^definition = "A group of specimens requested that must all be provided in case this group is chosen at specimen collection time."
* extension[ExclusiveGroup] ^comment = "In case multiple groups are defined, these groups are mutually exclusive: one and only one group must be chosen at specimen collection time."
* extension[ExclusiveGroup].extension ^slicing.discriminator.type = #value
* extension[ExclusiveGroup].extension ^slicing.discriminator.path = "url"
* extension[ExclusiveGroup].extension ^slicing.rules = #open
* extension[ExclusiveGroup].extension contains Material 1..*
* extension[ExclusiveGroup].extension[Material] ^short = "An individual specimen in an exclusive group"
* extension[ExclusiveGroup].extension[Material] ^definition = "A reference to a SpecimenDefinition resource representing the material"
* extension[ExclusiveGroup].extension[Material] ^comment = "When multiple materials are present under an exclusive group, all are requested."
* extension[ExclusiveGroup].extension[Material].value[x] only Reference($ChLabSpecimenDefinition)
* extension[ExclusiveGroup].extension[Material].value[x] ^short = "SpecimenDefinition reference"
* extension[ExclusiveGroup].extension[Material].value[x] ^definition = "A reference to SpecimenDefinition as constrained by the LabSpecimenDefinition profile"
// * url = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ChLabSpecimenRequested" (exactly)