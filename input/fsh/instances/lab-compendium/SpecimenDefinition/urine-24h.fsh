Instance: urine-24h
InstanceOf: ChLab_SpecimenDefinitionR4
Title: "CH LAB-Order SpecimenDefinition 24 h Urin"
Description: "24 Stunden Urin"
Usage: #example
* extension[status].valueCode = #active 
* language = #en-US
* collection = $sct#710830005 "Collection of urine over a specified time period (procedure)"
* typeCollected = $sct#122575003 "Urine specimen"
* typeTested.type = $sct#122575003 "Urine specimen"
* typeTested.preference = #preferred
* typeTested.container.type = $sct#706055000 "24-hour urine specimen container (physical object)"
* typeTested.handling[0].temperatureQualifier.text = "room temperature"
* typeTested.handling[=].maxDuration = 2 'h' "hour"
* typeTested.handling[+].temperatureQualifier.text = "refrigerated"
* typeTested.handling[=].maxDuration = 24 'h' "hour"