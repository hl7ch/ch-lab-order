Instance: observation-eGFR
InstanceOf: ObservationDefinition
Title: "CH LAB-Order ObservationDefinition eGFR CKD-EPI 2021"
Description: "Observation Definition for Glomerular filtration rate/1.73 sq M.predicted"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabObservationDefinition"
* language = #en-US
* category = $observation-category#laboratory "Laboratory"
* code.coding.code = #98979-8
* code.coding.system = $loinc
* code.coding.display = "Glomerular filtration rate/1.73 sq M.predicted [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (CKD-EPI 2021)"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* preferredReportName = "Glomerular filtration rate/1.73 sq M.predicted"
* quantitativeDetails.unit = http://unitsofmeasure.org#mL/min/{1.73_m2} 