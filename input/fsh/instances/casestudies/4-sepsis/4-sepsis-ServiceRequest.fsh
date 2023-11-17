Instance: 4-sepsis-ServiceRequest
InstanceOf: ChOrfServiceRequest
Title: "laborder 4-sepsis"
Description: "Example for Service Request for Sepsis Investigation"
Usage: #example
* id = "4-sepsis"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* category = $sct#721963009 "Order (record artifact)"
// code: what is being requested (procedure codes SNOMED CT, Test Codes LOINC)
* code.coding[0] = $loinc#24360-0 "Hemoglobin and Hematocrit panel - Blood"
* code.coding[+] = $loinc#43113-0 "Hemoglobin electrophoresis panel in Blood"
* code.coding[+] = $loinc#57021-8 "CBC W Auto Differential panel - Blood"
* code.coding[+] = $loinc#58410-2 "CBC panel - Blood by Automated count"
* code.coding[+] = $loinc#57023-4 "Auto Differential panel - Blood"
* code.coding[+] = $loinc#90423-5 "Microorganism preliminary growth detection panel - Blood by Culture"
* code.coding[+] = $loinc#85421-6 "Bacterial identification and susceptibility panel - Isolate"
* code.coding[+] = $loinc#1988-5 "C reactive protein [Mass/Volume] in Serum or Plasma"
// orderDetails: Additional order information

* status = #active
* intent = #original-order
* priority = #urgent
* subject = Reference(Patient/KlebsiellaKeller)
* requester = Reference(HansHauserKantonsspital)
* reasonCode = $sct#870441004
* reasonCode.text = "Screening for sepsis (procedure)"
* insurance = Reference(HealthInsuranceCardKlebsiellaKeller)
* specimen[0] = Reference(Specimen/Blood-bactec-plus)
* specimen[+] = Reference(Specimen/Blood-sepsis)
* specimen[+] = Reference(Specimen/Urine-sepsis)

Instance: HealthInsuranceCardKlebsiellaKeller
InstanceOf: Coverage
Title: "HealthInsuranceCard"
Description: "Example for Insurance"
Usage: #example
* identifier.system = "http://ehic.com/insurer/123456789/member"
* identifier.value = "A123456780"
* status = #active
* type = $v3-ActCode#EHCPOL "extended healthcare"
* subscriber = Reference(Patient/KlebsiellaKeller)
* beneficiary = Reference(Patient/KlebsiellaKeller)
* period.end = "2012-03-17"
* payor.identifier.system = "http://ehic.com/insurer"
* payor.identifier.value = "123456789"

Instance: Blood-bactec-plus
InstanceOf: Specimen
Title: "Blood Sample"
Description: "Example for Specimen for Haematological Examination"
Usage: #example
* status = #available
* type = $sct#119297000 "Blood sample"
* subject = Reference(Patient/KlebsiellaKeller)
* request = Reference(ServiceRequest/4-sepsis)
* collection.collector = Reference(Practitioner/HansHauser)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* collection.bodySite = $sct#721029009 "Structure of superficial vein of left upper limb (body structure)"
* container.type = $sct#706053007 "General specimen container (physical object)"
* note.text = "Specimen is grossly lipemic"

Instance: Blood-sepsis
InstanceOf: Specimen
Title: "Blood Sample"
Description: "Example for Specimen for Haematological Examination"
Usage: #example
* status = #available
* type = $sct#119297000 "Blood sample"
* subject = Reference(Patient/KlebsiellaKeller)
* request = Reference(ServiceRequest/4-sepsis)
* collection.collector = Reference(Practitioner/HansHauser)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* collection.bodySite = $sct#721029009 "Structure of superficial vein of left upper limb (body structure)"
* container.type = $sct#706053007 "General specimen container (physical object)"
* note.text = "Specimen is grossly lipemic"

Instance: Urine-sepsis
InstanceOf: Specimen
Title: "Urine Sample"
Description: "Example for Specimen of Urin"
Usage: #example
* identifier.value = "11111-15394-75465"
* accessionIdentifier.value = "22222-bc987-dd888"
* status = #available
* type = $sct#122575003 "Urine sample"
* subject = Reference(Patient/KlebsiellaKeller)
* receivedTime = "2020-08-16T16:40:17Z"
* request = Reference(ServiceRequest/4-sepsis)
* collection.collector = Reference(Practitioner/HansHauser)
* collection.collectedDateTime = "2020-08-16T06:40:17Z"
* container.identifier.value = "4e88a-bc987-dd888-12345-urin"
* container.description = "Uriswab™ : Urine Collection System"
* container.type = $sct#706054001 "Urine specimen container (physical object)"