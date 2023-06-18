Instance: 2-pertussis-ServiceRequest
InstanceOf: ChOrfServiceRequest
Title: "laborder 2-pertussis"
Description: "Example for Service Request for Pertussis Investigation"
Usage: #example
* id = "2-pertussis"
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
// orderDetails: Additional order information

* priority = #urgent
* subject = Reference(Patient/EmilKummer)
* requester = Reference(PeterPrestoGruppenpraxis)
* reasonCode = $sct#772146005
* reasonCode.text = "Pertussis suspected (situation)"
* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(Specimen/Throat-swab)
* specimen[+] = Reference(Specimen/Blood)
* specimen[+] = Reference(Specimen/Serum)