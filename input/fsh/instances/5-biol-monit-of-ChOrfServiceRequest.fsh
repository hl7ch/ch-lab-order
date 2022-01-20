Instance: 5-biol-monit-of-ChOrfServiceRequest
InstanceOf: ChOrfServiceRequest
Title: "laborder 5-biol-monit"
Description: "Example for Service Request for toxicological Monitoring"
Usage: #definition
* id = "5-biol-monit"
* identifier[0].type = V2-0203#PLAC "Placer Identifier"
* identifier[=].system = "urn:oid:2.16.756.5.30"
* identifier[=].value = "123"
* status = #active
* intent = #original-order
* category = $ch-lab-order-servicerequest-categories#RequestForLabExam "Anforderung Laboruntersuchung"
// code: what is being requested (procedure codes SNOMED CT, Test Codes LOINC)
* code.coding[0] = LOINC#24360-0 "Hemoglobin and Hematocrit panel - Blood"
* code.coding[+] = LOINC#43113-0 "Hemoglobin electrophoresis panel in Blood"
* code.coding[+] = LOINC#57021-8 "CBC W Auto Differential panel - Blood"
* code.coding[+] = LOINC#58410-2 "CBC panel - Blood by Automated count"
* code.coding[+] = LOINC#57023-4 "Auto Differential panel - Blood"
* code.coding[+] = LOINC#29587-3 "Toxicology panel - Blood"
* code.coding[+] = LOINC#54454-4 "Arsenic fractions panel - Urine"
* code.coding[+] = LOINC#29589-9 "Heavy metals panel - Urine"
// orderDetails: Additional order information

* priority = #urgent
* subject = Reference(BeatBorer)
* requester = Reference(PauloPorcelliniSuva)
* reasonCode = SCT#409967009
* reasonCode.text = "Toxicology (qualifier value)"
* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(Blood)
* specimen[+] = Reference(Urin)