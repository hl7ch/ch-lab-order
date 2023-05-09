Instance: observation-serum-creatinine
InstanceOf: ObservationDefinition
Description: "Kreatinin [Masse/Volumen] im Serum oder Plasma"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabObservationDefinition"
* language = #en-US
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = $lnc#2160-0 "Creatinine [Mass/volume] in Serum or Plasma"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* preferredReportName = "serum creatinine (mass/volume)"
* quantitativeDetails.unit = http://unitsofmeasure.org#mg/L "mg/l"