Instance: observation-urine-albumin
InstanceOf: ObservationDefinition
Title: "CH LAB-Order ObservationDefinition Albumin in Urine"
Description: "Observation Definition for Albumin [Mass/volume] in Urine"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabObservationDefinition"
* language = #en-US
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"

* code = $loinc#1754-1 "Albumin [Mass/volume] in Urine"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* preferredReportName = "urine albumin (mg/dL)"
* quantitativeDetails.unit = http://unitsofmeasure.org#mg/dL