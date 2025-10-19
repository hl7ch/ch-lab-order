Instance: observation24hCollectionCreatinineUrine
InstanceOf: ChLab_LabObservationDefinitionR4
Title: "CH LAB-Order ObservationDefinition Creatinine in 24h Urine"
Description: "Mass of creatinine in urine collected during 24h"
Usage: #example
// * meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabObservationDefinition"
* language = #en-US
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#2162-6 "Creatinine [Mass/time] in 24 hour Urine"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* preferredReportName = "urine creatinine (mass/24H)"
* quantitativeDetails.unit = http://unitsofmeasure.org#g/(24.h)
