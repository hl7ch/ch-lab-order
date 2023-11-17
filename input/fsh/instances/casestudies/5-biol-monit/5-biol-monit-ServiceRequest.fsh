Instance: 5-biol-monit-ServiceRequest
InstanceOf: ChOrfServiceRequest
Title: "laborder 5-biol-monit"
Description: "Example for Service Request for toxicological Monitoring"
Usage: #example
* id = "5-biol-monit"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* status = #active
* intent = #original-order
* category = $sct#721963009 "Order (record artifact)"
// code: what is being requested (procedure codes SNOMED CT, Test Codes LOINC)
* code.coding[0] = $loinc#24360-0 "Hemoglobin and Hematocrit panel - Blood"
* code.coding[+] = $loinc#43113-0 "Hemoglobin electrophoresis panel in Blood"
* code.coding[+] = $loinc#57021-8 "CBC W Auto Differential panel - Blood"
* code.coding[+] = $loinc#58410-2 "CBC panel - Blood by Automated count"
* code.coding[+] = $loinc#57023-4 "Auto Differential panel - Blood"
* code.coding[+] = $loinc#29587-3 "Toxicology panel - Blood"
* code.coding[+] = $loinc#54454-4 "Arsenic fractions panel - Urine"
* code.coding[+] = $loinc#29589-9 "Heavy metals panel - Urine"
// orderDetails: Additional order information

* priority = #urgent
* subject = Reference(Patient/BeatBorer)
* requester = Reference(PauloPorcelliniSuva)
* reasonCode = $sct#409967009
* reasonCode.text = "Toxicology (qualifier value)"
* insurance = Reference(HealthInsuranceCardBeatBorer)
* specimen[0] = Reference(Specimen/Blood-biol-monit)
* specimen[+] = Reference(Specimen/Urine-biol-monit)


Instance: Blood-biol-monit
InstanceOf: Specimen
Title: "Blood Sample"
Description: "Example for Specimen for Haematological Examination"
Usage: #example
* status = #available
* type = $sct#119297000 "Blood sample"
* subject = Reference(Patient/BeatBorer)
* request = Reference(ServiceRequest/5-biol-monit)
* collection.collector = Reference(Practitioner/PauloPorcellini)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* collection.bodySite = $sct#721029009 "Structure of superficial vein of left upper limb (body structure)"
* container.type = $sct#706053007 "General specimen container (physical object)"
* note.text = "Specimen is grossly lipemic"

Instance: Urine-biol-monit
InstanceOf: Specimen
Title: "Urine Sample"
Description: "Example for Specimen of Urin"
Usage: #example
* identifier.value = "11111-15394-75465"
* accessionIdentifier.value = "22222-bc987-dd888"
* status = #available
* type = $sct#122575003 "Urine sample"
* subject = Reference(Patient/BeatBorer)
* receivedTime = "2020-08-16T16:40:17Z"
* request = Reference(ServiceRequest/5-biol-monit)
* collection.collector = Reference(Practitioner/PauloPorcellini)
* collection.collectedDateTime = "2020-08-16T06:40:17Z"
* container.identifier.value = "4e88a-bc987-dd888-12345-urin"
* container.description = "Uriswab™ : Urine Collection System"
* container.type = $sct#706054001 "Urine specimen container (physical object)"

