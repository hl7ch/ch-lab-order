Instance: Venous-Blood
InstanceOf: SpecimenDefinition
Description: "Venous blood"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabSpecimenDefinition"
* language = #en-US
* typeCollected = http://terminology.hl7.org/CodeSystem/v2-0487#BLDV "Blood venous"
* collection = http://snomed.info/sct#28520004 "Venipuncture for blood test"
* typeTested[0].type = http://terminology.hl7.org/CodeSystem/v2-0487#SER "Serum"
* typeTested[=].preference = #preferred
* typeTested[=].container.material = http://snomed.info/sct#61088005 "Plastic"
* typeTested[=].container.material.text = "plastic"
* typeTested[=].container.type = http://snomed.info/sct#767384004 "Evacuated blood collection tube with clot activator"
* typeTested[=].container.cap = http://terminology.hl7.org/CodeSystem/container-cap#red
* typeTested[=].container.cap.text = "red cap"
* typeTested[=].container.description = "red cap plastic tube 5 mL"
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