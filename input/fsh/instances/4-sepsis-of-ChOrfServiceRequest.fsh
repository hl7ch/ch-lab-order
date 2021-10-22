Instance: 4-sepsis-of-ChOrfServiceRequest
InstanceOf: ChOrfServiceRequest
Title: "laborder 4-sepsis"
Description: "Example for Service Request for Sepsis Investigation"
Usage: #definition
* id = "4-sepsis"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "urn:oid:1.3.4.5.6.7"
* identifier[=].value = "123"
* identifier[+].type = $v2-0203#FILL "Filler Identifier"
* identifier[=].system = "urn:oid:7.8.9.10.11"
* identifier[=].value = "456"
* status = #active
* intent = #original-order
* priority = #urgent
* subject = Reference(KlebsiellaKeller)
* requester = Reference(HansHauserKantonsspital)
* reasonCode = $sct#870441004
* reasonCode.text = "Screening for sepsis (procedure)"
* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(blood-bactec-plus)
* specimen[+] = Reference(blood)
* specimen[+] = Reference(urin)