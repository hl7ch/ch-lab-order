Instance: serumCreatinine
InstanceOf: ObservationDefinition
Title: "CH LAB-Order ObservationDefinition Creatinine Serum"
Description: "Kreatinine [Mass/Volumen] in Serum oder Plasma"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabObservationDefinition"
* language = #en-US
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#2160-0 "Creatinine [Mass/volume] in Serum or Plasma"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* preferredReportName = "serum creatinine (mass/volume)"
* quantitativeDetails.unit = http://unitsofmeasure.org#mg/L "mg/l"