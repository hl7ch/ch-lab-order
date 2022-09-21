Instance: Urine
InstanceOf: SpecimenDefinition
Description: "Urin Mittelstrahl"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabSpecimenDefinition"
* language = #en-US
* typeCollected = http://terminology.hl7.org/CodeSystem/v2-0487#URINM "Urine, Midstream"
* collection = http://snomed.info/sct#258574006 "Mid-stream urine specimen (specimen)"
* typeTested[0].type = http://terminology.hl7.org/CodeSystem/v2-0487#UR "Urine"
* typeTested[=].preference = #preferred
* typeTested[=].container.material = http://snomed.info/sct#61088005 "Plastic (substance)"
* typeTested[=].container.material.text = "plastic"
* typeTested[=].container.type = http://snomed.info/sct#702224000 "Midstream urine specimen container (physical object)"
* typeTested[=].container.cap = http://terminology.hl7.org/CodeSystem/container-cap#red
* typeTested[=].container.cap.text = "yellow cap"
* typeTested[=].container.description = "yellow cap plastic tube 5 mL"
* typeTested[=].container.capacity = 10 'mL' "milliliter"
* typeTested[=].container.minimumVolumeQuantity = 5 'mL' "milliliter"
* typeTested[=].retentionTime = 24 'h' "hour"
* typeTested[=].rejectionCriterion[0] = http://terminology.hl7.org/CodeSystem/rejection-criteria#hemolized
* typeTested[=].rejectionCriterion[=].text = "blood specimen hemolized"
* typeTested[=].rejectionCriterion[+] = http://terminology.hl7.org/CodeSystem/rejection-criteria#insufficient
* typeTested[=].rejectionCriterion[=].text = "insufficient quantity of specimen"
* typeTested[=].handling[0].temperatureQualifier.text = "room temperature or refrigerated"
* typeTested[=].handling[=].maxDuration = 7 'd' "day"
* typeTested[=].handling[+].temperatureQualifier.text = "frozen"
* typeTested[=].handling[=].maxDuration = 28 'd' "day"
* typeTested[+].type = http://terminology.hl7.org/CodeSystem/v2-0487#PLAS "Plasma"
* typeTested[=].preference = #alternate
* typeTested[=].container.type = http://snomed.info/sct#767390000 "Evacuated blood collection tube with heparin lithium and gel separator"
* typeTested[=].container.cap = http://terminology.hl7.org/CodeSystem/container-cap#green
* typeTested[=].container.cap.text = "green cap"
* typeTested[=].container.description = "green cap plastic tube 5 mL"
* typeTested[=].container.capacity = 10 'mL' "milliliter"
* typeTested[=].container.minimumVolumeQuantity = 5 'mL' "milliliter"
* typeTested[=].retentionTime = 24 'h' "hour"
* typeTested[=].rejectionCriterion[0] = http://terminology.hl7.org/CodeSystem/rejection-criteria#hemolized
* typeTested[=].rejectionCriterion[=].text = "blood specimen hemolized"
* typeTested[=].rejectionCriterion[+] = http://terminology.hl7.org/CodeSystem/rejection-criteria#insufficient
* typeTested[=].rejectionCriterion[=].text = "insufficient quantity of specimen"
* typeTested[=].handling[0].temperatureQualifier.text = "room temperature or refrigerated"
* typeTested[=].handling[=].maxDuration = 7 'd' "day"
* typeTested[=].handling[+].temperatureQualifier.text = "frozen"
* typeTested[=].handling[=].maxDuration = 28 'd' "day"