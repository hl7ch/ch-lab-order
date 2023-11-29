Instance: specimen-blood-EDTA
InstanceOf: SpecimenDefinition
Description: "Blood EDTA"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabSpecimenDefinition"
* language = #en-US
* typeCollected = $v2-0487#BLDV "Blood venous"
* collection = $sct#28520004 "Venipuncture for blood test"
* typeTested[0].type = $v2-0487#BLD "Whole blood"
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
* typeTested[=].handling[=].maxDuration = 2 'h' "hour"
