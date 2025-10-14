Instance: urine-24h
InstanceOf: ChLab_SpecimenDefinitionR4
Title: "CH LAB-Order SpecimenDefinition 24 h Urin"
Description: "24 Stunden Urin"
Usage: #example
* extension[status].valueCode = #active 
* language = #en-US
* typeCollected = $sct#122575003 "Urine specimen (specimen)"
* typeTested.type = $sct#2475000 "Urine specimen collection, 24 hours (procedure)"
* typeTested.preference = #preferred
* typeTested.container.type = $sct#706055000 "24-hour urine specimen container (physical object)"
* typeTested.handling[0].temperatureQualifier.text = "room temperature"
* typeTested.handling[=].maxDuration = 2 'h' "hour"
* typeTested.handling[+].temperatureQualifier.text = "refrigerated"
* typeTested.handling[=].maxDuration = 24 'h' "hour"