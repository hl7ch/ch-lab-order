Instance: observation-urine-albumin-creatinine-ratio
InstanceOf: ObservationDefinition
Title: "CH LAB-Order ObservationDefinition Albumin/Creatinine Ratio in Urine"
Description: "Observation Definition for Albumin [Mass/volume] in Urine"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabObservationDefinition"
* language = #en-US
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"

* code = $loinc#9318-7 "Albumin/Creatinine [Mass Ratio] in Urine"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* preferredReportName = "urine albumin Mass ratio"
// * quantitativeDetails.unit = http://unitsofmeasure.org#mg/dL