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
* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(Specimen/Blood-bactec-plus)
* specimen[+] = Reference(Specimen/Blood)
* specimen[+] = Reference(Specimen/Urine)