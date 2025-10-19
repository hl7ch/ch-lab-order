Instance: specimenSerumPlasma
InstanceOf: ChLab_SpecimenDefinitionR4
Title: "CH LAB-Order SpecimenDefinition Serum or Plasma"
Description: "Serum, Plasma"
Usage: #example
* extension[status].valueCode = #active
* extension[testingDestination].valueCodeableConcept = $v2-0074#CH "Chemistry"
* language = #en-US
* typeCollected = $sct#122555007 "Venous blood specimen"
* collection = $sct#28520004 "Venipuncture for blood test"
* typeTested[0].type = $sct#119364003 "Serum specimen"
* typeTested[=].preference = #preferred
* typeTested[=].container.material = $sct#61088005 "Plastic"
* typeTested[=].container.material.text = "plastic"
* typeTested[=].container.type = $sct#767384004 "Evacuated blood collection tube with clot activator"
* typeTested[=].container.cap = $container-cap#red
* typeTested[=].container.cap.text = "red cap"
* typeTested[=].container.description = "red cap plastic tube 5 mL"
* typeTested[=].container.capacity = 10 'mL' "milliliter"
* typeTested[=].container.minimumVolumeQuantity = 5 'mL' "milliliter"
* typeTested[=].retentionTime = 24 'h' "hour"
* typeTested[=].rejectionCriterion[0] = $rejection-criteria#hemolized
* typeTested[=].rejectionCriterion[=].text = "blood specimen hemolized"
* typeTested[=].rejectionCriterion[+] = $rejection-criteria#insufficient
* typeTested[=].rejectionCriterion[=].text = "insufficient quantity of specimen"

* typeTested[=].handling[0].temperatureQualifier.text = "room temperature or refrigerated"
* typeTested[=].handling[=].temperatureQualifier.coding.system = $specimen-handling-temperature
* typeTested[=].handling[=].temperatureQualifier.coding.code = #refrigerated
* typeTested[=].handling[=].maxDuration = 7 'd' "day"

* typeTested[=].handling[+].temperatureQualifier.text = "frozen"
* typeTested[=].handling[=].temperatureQualifier.coding.system = $specimen-handling-temperature
* typeTested[=].handling[=].temperatureQualifier.coding.code = #frozen
* typeTested[=].handling[=].maxDuration = 28 'd' "day"

* typeTested[+].type = $sct#119364003 "Serum specimen"
* typeTested[=].preference = #alternate
* typeTested[=].container.type = $sct#767390000 "Evacuated blood collection tube with heparin lithium and gel separator"
* typeTested[=].container.cap = $container-cap#green
* typeTested[=].container.cap.text = "green cap"
* typeTested[=].container.description = "green cap plastic tube 5 mL"
* typeTested[=].container.capacity = 10 'mL' "milliliter"
* typeTested[=].container.minimumVolumeQuantity = 5 'mL' "milliliter"
* typeTested[=].retentionTime = 24 'h' "hour"
* typeTested[=].rejectionCriterion[0] = $rejection-criteria#hemolized
* typeTested[=].rejectionCriterion[=].text = "blood specimen hemolized"
* typeTested[=].rejectionCriterion[+] = $rejection-criteria#insufficient
* typeTested[=].rejectionCriterion[=].text = "insufficient quantity of specimen"

* typeTested[=].handling[+].temperatureQualifier.text = "room temperature or refrigerated"
* typeTested[=].handling[=].temperatureQualifier.coding.system = $specimen-handling-temperature
* typeTested[=].handling[=].temperatureQualifier.coding.code = #refrigerated
* typeTested[=].handling[=].maxDuration = 7 'd' "day"

* typeTested[=].handling[+].temperatureQualifier.text = "frozen"
* typeTested[=].handling[=].temperatureQualifier.coding.system = $specimen-handling-temperature
* typeTested[=].handling[=].temperatureQualifier.coding.code = #frozen
* typeTested[=].handling[=].maxDuration = 28 'd' "day"