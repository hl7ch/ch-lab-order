Profile: ChLab_SpecimenDefinitionR4
Parent: SpecimenDefinition
Id: ch-lab-specimendefinition-r4
Title: "CH Lab SpecimenDefinition R4"
Description: "R4-compatible SpecimenDefinition for CH Lab Order IG. Extended via custom extensions for handling and collection details."

* ^url = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-specimendefinition-r4"

// standard R4 elements (keine R5-only Felder)
* typeCollected 0..1
* typeCollected from http://fhir.ch/ig/ch-lab-order/ValueSet/ch-lab-vs-specimen-type (extensible)

// * typeCollected from http://terminology.hl7.org/ValueSet/v2-0487 (extensible)

* timeAspect 0..1
* patientPreparation 0..*

* typeTested 0..*

// Attach our R4-compatible extensions to carry R5-like info
* extension contains
    ChLabSpecimenHandling named handling 0..* and
    ChLabCollectionMethod named collectionMethod 0..1 and
    ChLabSpecimenDefinitionStatus named status 0..1
