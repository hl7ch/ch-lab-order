Profile: ChLab_LabProcedureDefinitionR4
Parent: ActivityDefinition
Id: ch-lab-labproceduredefinition-r4
Title: "CH Lab Procedure Definition (R4)"
Description: "R4 adaptation of the Order Catalog LabProcedureDefinition for CH Lab Order IG."
* ^version = "1.0.0"
* ^status = #active
* ^publisher = "CH Lab Order IG Working Group"
* ^jurisdiction = urn:iso:std:iso:3166#CH "Switzerland"

* kind = #ServiceRequest
* specimenRequirement 0..* MS
* specimenRequirement only Reference(SpecimenDefinition)
* observationResultRequirement 0..* MS
* observationResultRequirement only Reference(ObservationDefinition)
* observationResultRequirement ^short = "Expected ObservationDefinition results."
* specimenRequirement ^short = "SpecimenDefinition(s) needed for this lab procedure."
