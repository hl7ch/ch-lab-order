Instance: observationCreatinineUrine
InstanceOf: ObservationDefinition
Title: "CH LAB-Order ObservationDefinition Creatinine in Urine"
Description: "Observation Definition for Creatinine [Mass/volume] in Urine"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabObservationDefinition"
* language = #en-US
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#2161-8 "Creatinine [Mass/volume] in Urine"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* preferredReportName = "urine creatinine (mg/dL)"
* quantitativeDetails.unit = http://unitsofmeasure.org#mg/dL