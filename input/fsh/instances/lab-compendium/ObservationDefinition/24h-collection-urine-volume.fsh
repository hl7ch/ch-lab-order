Instance: 24h-collection-urine-volume
InstanceOf: ObservationDefinition
Title: "CH LAB-Order ObservationDefinition Collection volumen"
Description: "Collection volume [mL] of specimen"
Usage: #example
* meta.profile[0] = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/InputObservationDefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabObservationDefinition"
* language = #en-US
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#3167-4 "Volume of 24 hour Urine"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* preferredReportName = "24-hour urine collection volume"
* quantitativeDetails.unit = http://unitsofmeasure.org#L