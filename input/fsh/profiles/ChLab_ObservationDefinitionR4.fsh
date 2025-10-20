Profile: ChLab_ObservationDefinitionR4
Parent: ObservationDefinition
Id: ch-lab-observationdefinition-r4
Title: "CH LAB-Order Observation Definition (R4 compatible)"
Description: "Definition of a laboratory analyte or observation type for use in the CH Lab Order IG (FHIR R4)."
* ^version = "1.0.0"
* ^status = #active
* ^publisher = "CH Lab Order IG Working Group"
* ^jurisdiction = urn:iso:std:iso:3166#CH "Switzerland"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains LOINC 0..1
* code.coding[LOINC].system = "http://loinc.org" (exactly)
* permittedDataType MS
* multipleResultsAllowed MS
