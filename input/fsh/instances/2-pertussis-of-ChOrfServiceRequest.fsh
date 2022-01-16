Instance: 2-pertussis-of-ChOrfServiceRequest
InstanceOf: ChOrfServiceRequest
Title: "laborder 2-pertussis"
Description: "Example for Service Request for Pertussis Investigation"
Usage: #definition
* id = "2-pertussis"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "urn:oid:2.16.756.5.30"
* identifier[=].value = "123"
* status = #active
* intent = #original-order
* category = $ch-lab-order-servicerequest-categories#RequestForLabExam "Anforderung Laboruntersuchung"
// code: what is being requested (procedure codes SNOMED CT, Test Codes LOINC)
* code.coding[0] = LOINC#24360-0 "Hemoglobin and Hematocrit panel - Blood"
* code.coding[+] = LOINC#43113-0 "Hemoglobin electrophoresis panel in Blood"
* code.coding[+] = LOINC#57021-8 "CBC W Auto Differential panel - Blood"
// orderDetails: Additional order information

* priority = #urgent
* subject = Reference(EmilKummer)
* requester = Reference(PeterPrestoGruppenpraxis)
* reasonCode = SCT#772146005
* reasonCode.text = "Pertussis suspected (situation)"
* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(Throat-swab)
* specimen[+] = Reference(Blood)
* specimen[+] = Reference(Serum)