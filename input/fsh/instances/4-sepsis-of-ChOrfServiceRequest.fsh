Instance: 4-sepsis-of-ChOrfServiceRequest
InstanceOf: ChOrfServiceRequest
Title: "laborder 4-sepsis"
Description: "Example for Service Request for Sepsis Investigation"
Usage: #definition
* id = "4-sepsis"
* identifier[placerOrderIdentifier].type = V2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* category = CH-LAB-ORDER-servicerequest-categories#RequestForLabExam "Anforderung Laboruntersuchung"
// code: what is being requested (procedure codes SNOMED CT, Test Codes LOINC)
* code.coding[0] = LOINC#24360-0 "Hemoglobin and Hematocrit panel - Blood"
* code.coding[+] = LOINC#43113-0 "Hemoglobin electrophoresis panel in Blood"
* code.coding[+] = LOINC#57021-8 "CBC W Auto Differential panel - Blood"
* code.coding[+] = LOINC#58410-2 "CBC panel - Blood by Automated count"
* code.coding[+] = LOINC#57023-4 "Auto Differential panel - Blood"
* code.coding[+] = LOINC#90423-5 "Microorganism preliminary growth detection panel - Blood by Culture"
* code.coding[+] = LOINC#85421-6 "Bacterial identification and susceptibility panel - Isolate"
* code.coding[+] = LOINC#1988-5 "C reactive protein [Mass/Volume] in Serum or Plasma"
// orderDetails: Additional order information

* status = #active
* intent = #original-order
* priority = #urgent
* subject = Reference(Patient/KlebsiellaKeller)
* requester = Reference(HansHauserKantonsspital)
* reasonCode = SCT#870441004
* reasonCode.text = "Screening for sepsis (procedure)"
* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(Specimen/Blood-bactec-plus)
* specimen[+] = Reference(Specimen/Blood)
* specimen[+] = Reference(Specimen/Urin)