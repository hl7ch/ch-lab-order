Instance: specimenUrineSpot
InstanceOf: ChLab_SpecimenDefinitionR4
Title: "CH LAB-Order SpecimenDefinition Urine Spot"
Description: "Urine Spot"
Usage: #example
* extension[status].valueCode = #active
* extension[testingDestination].valueCodeableConcept = $v2-0074#URN "Urinalysis"
* language = #en-US
* collection = $sct#73416001 "Urine specimen collection, clean catch (procedure)"
* typeCollected = $sct#122575003 "Urine specimen"
* typeTested[0].type = $sct#122575003 "Urine specimen"
* typeTested[=].preference = #preferred
* typeTested[=].container.material = $sct#61088005 "Plastic (substance)"
* typeTested[=].container.material.text = "plastic"
* typeTested[=].container.type = $sct#702224000 "Midstream urine specimen container (physical object)"
* typeTested[=].container.cap = http://terminology.hl7.org/CodeSystem/container-cap#yellow
* typeTested[=].container.cap.text = "yellow cap"
* typeTested[=].container.description = "yellow cap plastic tube 5 mL"
* typeTested[=].container.capacity = 5 'mL' "milliliter"
* typeTested[=].container.minimumVolumeQuantity = 0.5 'mL' "milliliter"
* typeTested[=].retentionTime = 24 'h' "hour"
* typeTested[=].rejectionCriterion[0] = http://terminology.hl7.org/CodeSystem/rejection-criteria#insufficient
* typeTested[=].rejectionCriterion[=].text = "insufficient quantity of specimen"

* typeTested[=].handling[0].temperatureQualifier.text = "2-8°C"
* typeTested[=].handling[=].temperatureQualifier.coding.system = $specimen-handling-temperature
* typeTested[=].handling[=].temperatureQualifier.coding.code = #refrigerated
* typeTested[=].handling[=].maxDuration = 14 'd' "day"

* typeTested[=].handling[+].temperatureQualifier.text = "-20°"
* typeTested[=].handling[=].temperatureQualifier.coding.system = $specimen-handling-temperature
* typeTested[=].handling[=].temperatureQualifier.coding.code = #frozen
* typeTested[=].handling[=].maxDuration = 1 'year' "year"
