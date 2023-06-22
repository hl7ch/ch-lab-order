Instance: observation-collection-duration
InstanceOf: ObservationDefinition
Description: "Collection duration [h] of specimen"
Usage: #example
* meta.profile[0] = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/InputObservationDefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabObservationDefinition"
* language = #en-US
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = $loinc#13362-9 "Collection duration of Urine"
* permittedDataType = #Quantity
* multipleResultsAllowed = false
* preferredReportName = "urine collection duration"
* quantitativeDetails.unit = http://unitsofmeasure.org#h "h"