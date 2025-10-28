Profile: ChLabInputObservationDefinition
Parent: ObservationDefinition
Id: ch-lab-input-observation-definition
Title: "Input Observation"
Description: "This profile constrains the base resource ObservationDefinition when referenced by ActivityDefinition.observationRequirement in the context of a catalog of laboratory services. Such a resource specifies the form of an input observation expected alongside the order of a laboratory service."

* ^url = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-input-observation-definition"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains LOINC 0..*
* code.coding[LOINC].system = "http://loinc.org" (exactly)
* permittedDataType MS

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: ChLabInputObservationDefinition
Target: "http://hl7.org/fhir/workflow"