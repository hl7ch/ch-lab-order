Instance: urine-24h
InstanceOf: SpecimenDefinition
Title: "SpecimenDefinition: 24 h Urin"
Description: "24 Stunden Urin"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabSpecimenDefinition"
* language = #en-US
* collection = $sct#2475000 "Urine specimen collection, 24 hours (procedure)"
* typeTested.type = $sct#122575003 "Urine specimen (specimen)"
* typeTested.preference = #preferred
* typeTested.container.type = $sct#706055000 "24-hour urine specimen container (physical object)"
* typeTested.handling[0].temperatureQualifier.text = "room temperature"
* typeTested.handling[=].maxDuration = 2 'h' "hour"
* typeTested.handling[+].temperatureQualifier.text = "refrigerated"
* typeTested.handling[=].maxDuration = 24 'h' "hour"