Instance: specimen-blood-EDTA
InstanceOf: ChLab_SpecimenDefinitionR4
Title: "CH LAB-Order SpecimenDefinition Blood EDTA"
Description: "Blood EDTA"
Usage: #example
* extension[status].valueCode = #active 
* language = #en-US
* typeCollected = $sct#122555007 "Venous blood specimen (specimen)"
* collection = $sct#28520004 "Venipuncture for blood test"
* typeTested[0].type = $sct#122555007 "Venous blood specimen (specimen)"
* typeTested[=].preference = #preferred
* typeTested[=].container.material = $sct#61088005 "Plastic"
* typeTested[=].container.material.text = "plastic"
* typeTested[=].container.type = $sct#706049005 "Blood tube (physical object)"
* typeTested[=].container.cap = $container-cap#red
* typeTested[=].container.cap.text = "red cap"
* typeTested[=].container.description = "S-Monovette® EDTA"
* typeTested[=].container.capacity = 4.9 'mL' "milliliter"
* typeTested[=].container.minimumVolumeQuantity = 4.0 'mL' "milliliter"
* typeTested[=].retentionTime = 2 'h' "hour"
* typeTested[=].rejectionCriterion[0] = $rejection-criteria#hemolized
* typeTested[=].rejectionCriterion[=].text = "blood specimen hemolized"
* typeTested[=].rejectionCriterion[+] = $rejection-criteria#insufficient
* typeTested[=].rejectionCriterion[=].text = "insufficient quantity of specimen"

* typeTested[=].handling[0].temperatureQualifier.text = "room temperature or refrigerated"
* typeTested[=].handling[=].temperatureQualifier.coding.system = $specimen-handling-temperature
* typeTested[=].handling[=].temperatureQualifier.coding.code = #ambient
* typeTested[=].handling[=].maxDuration = 2 'h' "hour"
