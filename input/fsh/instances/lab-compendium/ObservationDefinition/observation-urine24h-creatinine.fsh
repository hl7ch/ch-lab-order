Instance: observation-urine24h-creatinine
InstanceOf: ObservationDefinition
Description: "Mass of creatinine collected during 24h"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabObservationDefinition"
* language = #en-US
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = $loinc#2162-6 "Creatinine [Mass/time] in 24 hour Urine"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* preferredReportName = "urine creatinine (mass/24H)"
* quantitativeDetails.unit = http://unitsofmeasure.org#g/(24.h)