Instance: Urine-Spot
InstanceOf: SpecimenDefinition
Description: "Urin Mittelstrahl"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabSpecimenDefinition"
* language = #en-US
* typeCollected = http://terminology.hl7.org/CodeSystem/v2-0487#UR "Urine"
* collection = http://snomed.info/sct#122575003 "Urine specimen (specimen)"
* typeTested[0].type = http://terminology.hl7.org/CodeSystem/v2-0487#UR "Urine"
* typeTested[=].preference = #preferred
* typeTested[=].container.material = http://snomed.info/sct#61088005 "Plastic (substance)"
* typeTested[=].container.material.text = "plastic"
* typeTested[=].container.type = http://snomed.info/sct#702224000 "Midstream urine specimen container (physical object)"
* typeTested[=].container.cap = http://terminology.hl7.org/CodeSystem/container-cap#yellow
* typeTested[=].container.cap.text = "yellow cap"
* typeTested[=].container.description = "yellow cap plastic tube 5 mL"
* typeTested[=].container.capacity = 5 'mL' "milliliter"
* typeTested[=].container.minimumVolumeQuantity = 0.5 'mL' "milliliter"
* typeTested[=].retentionTime = 24 'h' "hour"
* typeTested[=].rejectionCriterion[0] = http://terminology.hl7.org/CodeSystem/rejection-criteria#insufficient
* typeTested[=].rejectionCriterion[=].text = "insufficient quantity of specimen"
* typeTested[=].handling[0].temperatureQualifier.text = "2-8°C"
* typeTested[=].handling[=].maxDuration = 14 'd' "day"
* typeTested[=].handling[+].temperatureQualifier.text = "-20°"
* typeTested[=].handling[=].maxDuration = 1 'ear' "year"
