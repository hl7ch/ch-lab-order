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
* category = $servicerequest-categories#RequestForLabExam "Anforderung Laboruntersuchung"
// code: what is being requested (procedure codes SNOMED CT, Test Codes LOINC)
* code.coding[0] = $lnc#24360-0 "Hemoglobin and Hematocrit panel - Blood"
* code.coding[+] = $lnc#43113-0 "Hemoglobin electrophoresis panel in Blood"
* code.coding[+] = $lnc#57021-8 "CBC W Auto Differential panel - Blood"
* code.coding[+] = $lnc#58410-2 "CBC panel - Blood by Automated count"
* code.coding[+] = $lnc#57023-4 "Auto Differential panel - Blood"
* code.coding[+] = $lnc#29587-3 "Toxicology panel - Blood"
* code.coding[+] = $lnc#54454-4 "Arsenic fractions panel - Urine"
* code.coding[+] = $lnc#29589-9 "Heavy metals panel - Urine"
// orderDetails: Additional order information

* priority = #urgent
* subject = Reference(Patient/BeatBorer)
* requester = Reference(PauloPorcelliniSuva)
* reasonCode = $sct#409967009
* reasonCode.text = "Toxicology (qualifier value)"
* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(Specimen/Blood)
* specimen[+] = Reference(Specimen/Urine)