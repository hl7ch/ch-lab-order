Instance: observationCreatinineClearance
InstanceOf: ChLab_ObservationDefinitionR4
Title: "CH LAB-Order Observation Definition of Creatinin Clearance"
Description: "Observation Definition for Serum volume which is cleared [mL/min] by the kidneys"
Usage: #example
// * meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabObservationDefinition"
* language = #en-US
// * url = "http://fhir.ch/ig/ch-lab-order/ObservationDefinition/observationCreatinineClearance"
// * status = "active"
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#2164-2 "Creatinine renal clearance in 24 hour Urine and Serum or Plasma"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* preferredReportName = "Creatinine renal clearance (volume/time)"
* quantitativeDetails.unit = http://unitsofmeasure.org#mL/min

// look at:
// https://hl7.org/fhir/R4B/observationdefinition.html