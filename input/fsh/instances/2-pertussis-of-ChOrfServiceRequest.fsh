Instance: 2-pertussis-of-ChOrfServiceRequest
InstanceOf: ChOrfServiceRequest
Title: "laborder 2-pertussis"
Description: "Example for Service Request for Pertussis Investigation"
Usage: #definition
* id = "2-pertussis"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "urn:oid:1.3.4.5.6.7"
* identifier[=].value = "123"
* identifier[+].type = $v2-0203#FILL "Filler Identifier"
* identifier[=].system = "urn:oid:7.8.9.10.11"
* identifier[=].value = "456"
* status = #active
* intent = #original-order
* priority = #urgent
* subject = Reference(EmilKummer)
* requester = Reference(PeterPrestoGruppenpraxis)
* reasonCode = $sct#772146005
* reasonCode.text = "Pertussis suspected (situation)"
* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(throat-swab)
* specimen[+] = Reference(blood)
* specimen[+] = Reference(serum)