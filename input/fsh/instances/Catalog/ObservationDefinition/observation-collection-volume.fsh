Instance: observation-collection-volume
InstanceOf: ObservationDefinition
Description: "Collection volume of specimen"
Usage: #example
* meta.profile[0] = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/InputObservationDefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabObservationDefinition"
* language = #en-US
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://loinc.org#3167-4 "Volume of 24 hour Urine"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* preferredReportName = "24-hour urine collection volume"
* quantitativeDetails.unit = http://unitsofmeasure.org#mL