Alias: $LabSpecimenDefinition = http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-specimendefinition-r4
Alias: $InputObservationDefinition = http://fhir.ch/ig/ch-lab-order/StructureDefinition/InputObservationDefinition
Alias: $LabObservationDefinition = http://fhir.ch/ig/ch-lab-order/StructureDefinition/LabObservationDefinition



Profile: ChLab_LabProcedureDefinitionR4
Parent: ActivityDefinition
Id: ch-lab-labproceduredefinition-r4
Title: "CH Lab Procedure Definition (R4)"
Description: "R4 adaptation of the Order Catalog LabProcedureDefinition for CH Lab Order IG."
* ^version = "1.0.0"
* ^status = #active
* ^publisher = "CH Lab Order IG Working Group"
* ^jurisdiction = urn:iso:std:iso:3166#CH "Switzerland"

* url 1..
* title MS
* title.extension ^slicing.discriminator.type = #value
* title.extension ^slicing.discriminator.path = "url"
* title.extension ^slicing.rules = #open
* title.extension contains Translation named OtherTitle 0..*
* date MS
* publisher MS
* contact.telecom MS
* description MS
* description ^definition = "A free text natural language description of the laboratory procedure from a consumer's perspective."
* effectivePeriod.start MS
* effectivePeriod.end MS
* topic MS
* topic ^short = "Categorization of the laboratory procedure"
* topic ^comment = "Examples could be lab specialties: chemistry, hormonology, hematology, bacteriology, virology ..\r\nOther examples might list medical specialty of orderer: cardiology, dermatology, gastroenterology ..."
* kind 1..
* kind = #ServiceRequest (exactly)
* code MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.ordered = false
* code.coding ^slicing.rules = #open
* code.coding ^short = "Code for the laboratory procedure"
* code.coding contains orderCodeLOINC 0..1 MS
* code.coding[orderCodeLOINC] ^short = "LOINC code for the laboratory procedure"
* code.coding[orderCodeLOINC].system = "http://loinc.org" (exactly)
* code.coding[orderCodeLOINC].system MS
* code.coding[orderCodeLOINC].system ^label = "LOINC"
* code.coding[orderCodeLOINC].system ^short = "LOINC test code for this activity"
* doNotPerform ..0
* location ^short = "The physical sector of the laboratory performing the procedure"
* location ^definition = "Identifies the facility where the laboratory procedure will occur, and where the specimens will be conveyed"
* location ^comment = "May be tha laboratory as a whole or its work area facility or a sector of it"
* specimenRequirement only Reference(ChLabSpecimenDefinitionR4) // in R5/6 this is Canonical
* specimenRequirement MS
* specimenRequirement ^short = "What specimens are required to perform this laboratory procedure"
* specimenRequirement ^definition = "Defines specimen requirements for the laboratory procedure (test or panel) to be performed."
* observationRequirement only Reference(ChLabInputObservationDefinition) // in R5/6 this is Canonical
* observationRequirement MS
* observationRequirement ^short = "What observations are required to perform this laboratory procedure"
* observationRequirement ^definition = "Defines observation requirements for the laboratory procedure (test or panel) to be performed, such as body weight or surface area."
* observationResultRequirement only Reference(ChLabInputObservationDefinition) // in R5/6 this is Canonical
* observationResultRequirement MS
* observationResultRequirement ^short = "What observations are produced by this laboratory procedure"
* observationResultRequirement ^definition = "Defines the observations that are expected to be produced by the laboratory procedure."