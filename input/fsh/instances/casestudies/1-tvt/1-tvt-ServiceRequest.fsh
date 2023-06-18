Instance: 1-tvt-ServiceRequest
InstanceOf: ChOrfServiceRequest
Title: "laborder 1-tvt"
Description: "Example for Service Request due to suspected deep vein thrombosis"
Usage: #example
* id = "1-tvt"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* status = #active
* intent = #original-order
* category = $servicerequest-categories#RequestForLabExam "Anforderung Laboruntersuchung"
// code: what is being requested (procedure codes SNOMED CT, Test Codes LOINC)
* code.coding[0] = $lnc#24360-0 "Hemoglobin and Hematocrit panel - Blood"
* code.coding[+] = $lnc#43113-0 "Hemoglobin electrophoresis panel in Blood"
* code.coding[+] = $lnc#57021-8 "CBC W Auto Differential panel - Blood"
* code.coding[+] = $lnc#58410-2 "CBC panel - Blood by Automated count"
* code.coding[+] = $lnc#57023-4 "Auto Differential panel - Blood"
* code.coding[+] = $lnc#55398-2 "Short Fibrin D-dimer FEU and DDU panel - Platelet poor plasma"
* code.coding[+] = $lnc#1988-5 "C reactive protein [Mass/Volume] in Serum or Plasma"
// orderDetails: Additional order information

* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannArztpraxis)
* reasonCode = $sct#404223003
* reasonCode.text = "Deep venous thrombosis of lower extremity"
* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(Specimen/Serum) "Serum specimen"
* specimen[+] = Reference(Specimen/Blood-coag)