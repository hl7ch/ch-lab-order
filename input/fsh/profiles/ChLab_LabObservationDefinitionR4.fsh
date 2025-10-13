Profile: ChLab_LabObservationDefinitionR4
Parent: ObservationDefinition
Id: ch-lab-labobservationdefinition-r4
Title: "CH Lab Observation Definition (R4)"
Description: "R4 adaptation of the Order Catalog ObservationDefinition for CH Lab Order IG."
* ^version = "1.0.0"
* ^status = #active
* ^publisher = "CH Lab Order IG Working Group"
* ^jurisdiction = urn:iso:std:iso:3166#CH "Switzerland"

* code 1..1 MS
* code from http://fhir.ch/ig/ch-lab-order/ValueSet/ch-lab-vs-loinc (required)

* permittedDataType 1..* MS
* permittedDataType from http://hl7.org/fhir/ValueSet/permitted-data-type|4.0.1 (required)

* multipleResultsAllowed 0..1 MS

* method 0..1 MS
* method from http://hl7.org/fhir/ValueSet/observation-methods (extensible)

* preferredReportName 0..1 MS

* quantitativeDetails 0..1 MS
* quantitativeDetails.customaryUnit 0..1 MS
* quantitativeDetails.unit 0..1 MS
* quantitativeDetails.conversionFactor 0..1 MS
* quantitativeDetails.decimalPrecision 0..1 MS

* qualifiedInterval 0..* MS
* qualifiedInterval.category 0..1
* qualifiedInterval.range 0..1
* qualifiedInterval.range.low 0..1
* qualifiedInterval.range.high 0..1
* qualifiedInterval.context 0..1
* qualifiedInterval.appliesTo 0..*
* qualifiedInterval.gender 0..1
* qualifiedInterval.age 0..1
* qualifiedInterval.gestationalAge 0..1
* qualifiedInterval.condition 0..1
