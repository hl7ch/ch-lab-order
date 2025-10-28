Instance: single-test-serum-capillary
InstanceOf: ChLabSpecimenDefinitionR4
Title: "CH LAB-Order SpecimenDefinition Serum Capillary Blood"
Description: "Serum Capillary blood, for single test"
Usage: #example
* extension[status].valueCode = #active
* extension[testingDestination].valueCodeableConcept = $v2-0074#CH "Chemistry"
* language = #en-US
* collection = $sct#1048003 "Capillary specimen collection (procedure)"
* typeCollected = $sct#122554006 "Capillary blood specimen"
* typeTested[0].type = $sct#2421000181104 "Capillary serum specimen (specimen)"
* typeTested[=].preference = #preferred
* typeTested[=].container.material = $sct#61088005 "Plastic"
* typeTested[=].container.material.text = "plastic"
* typeTested[=].container.type = $sct#767384004 "Evacuated blood collection tube with clot activator"
* typeTested[=].container.cap = http://terminology.hl7.org/CodeSystem/container-cap#red
* typeTested[=].container.cap.text = "red cap"
* typeTested[=].container.description = "red cap plastic tube 2 mL"
* typeTested[=].container.capacity = 2 'mL' "milliliter"
* typeTested[=].container.minimumVolumeQuantity = 0.5 'mL' "milliliter"
* typeTested[=].retentionTime = 24 'h' "hour"
* typeTested[=].rejectionCriterion[0] = http://terminology.hl7.org/CodeSystem/rejection-criteria#hemolized
* typeTested[=].rejectionCriterion[=].text = "blood specimen hemolized"
* typeTested[=].rejectionCriterion[+] = http://terminology.hl7.org/CodeSystem/rejection-criteria#insufficient
* typeTested[=].rejectionCriterion[=].text = "insufficient quantity of specimen"

* typeTested[=].handling[0].temperatureQualifier.text = "room temperature or refrigerated"
* typeTested[=].handling[=].temperatureQualifier.coding.system = $specimen-handling-temperature
* typeTested[=].handling[=].temperatureQualifier.coding.code = #refrigerated
* typeTested[=].handling[=].maxDuration = 7 'd' "day"

* typeTested[=].handling[+].temperatureQualifier.text = "frozen"
* typeTested[=].handling[=].temperatureQualifier.coding.system = $specimen-handling-temperature
* typeTested[=].handling[=].temperatureQualifier.coding.code = #frozen
* typeTested[=].handling[=].maxDuration = 28 'd' "day"

* typeTested[+].type = $sct#2421000181104 "Capillary serum specimen (specimen)"
* typeTested[=].preference = #alternate
* typeTested[=].container.type = $sct#767390000 "Evacuated blood collection tube with heparin lithium and gel separator"
* typeTested[=].container.cap = http://terminology.hl7.org/CodeSystem/container-cap#green
* typeTested[=].container.cap.text = "green cap"
* typeTested[=].container.description = "green cap plastic tube 2 mL"
* typeTested[=].container.capacity = 2 'mL' "milliliter"
* typeTested[=].container.minimumVolumeQuantity = 0.5 'mL' "milliliter"
* typeTested[=].retentionTime = 24 'h' "hour"
* typeTested[=].rejectionCriterion[0] = http://terminology.hl7.org/CodeSystem/rejection-criteria#hemolized
* typeTested[=].rejectionCriterion[=].text = "blood specimen hemolized"
* typeTested[=].rejectionCriterion[+] = http://terminology.hl7.org/CodeSystem/rejection-criteria#insufficient
* typeTested[=].rejectionCriterion[=].text = "insufficient quantity of specimen"

* typeTested[=].handling[+].temperatureQualifier.text = "room temperature or refrigerated"
* typeTested[=].handling[=].temperatureQualifier.coding.system = $specimen-handling-temperature
* typeTested[=].handling[=].temperatureQualifier.coding.code = #refrigerated
* typeTested[=].handling[=].maxDuration = 7 'd' "day"

* typeTested[=].handling[+].temperatureQualifier.text = "frozen"
* typeTested[=].handling[=].temperatureQualifier.coding.system = $specimen-handling-temperature
* typeTested[=].handling[=].temperatureQualifier.coding.code = #frozen
* typeTested[=].handling[=].maxDuration = 28 'd' "day"