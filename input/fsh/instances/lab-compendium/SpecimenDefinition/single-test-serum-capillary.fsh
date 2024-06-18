Instance: single-test-serum-capillary
InstanceOf: SpecimenDefinition
Title: "SpecimenDefinition Single Test Capillary blood"
Description: "Single Test Capillary blood"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabSpecimenDefinition"
* language = #en-US
* typeCollected = $sct#122554006 "Capillary blood specimen (specimen)"
* collection = $sct#1048003 "Capillary specimen collection (procedure)"
* typeTested[0].type = http://terminology.hl7.org/CodeSystem/v2-0487#SER "Serum"
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
* typeTested[=].handling[=].maxDuration = 7 'd' "day"
* typeTested[=].handling[+].temperatureQualifier.text = "frozen"
* typeTested[=].handling[=].maxDuration = 28 'd' "day"
* typeTested[+].type = http://terminology.hl7.org/CodeSystem/v2-0487#PLAS "Plasma"
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
* typeTested[=].handling[0].temperatureQualifier.text = "room temperature or refrigerated"
* typeTested[=].handling[=].maxDuration = 7 'd' "day"
* typeTested[=].handling[+].temperatureQualifier.text = "frozen"
* typeTested[=].handling[=].maxDuration = 28 'd' "day"