Instance: 2-pertussis-of-ChOrfServiceRequest
InstanceOf: ChOrfServiceRequest
Title: "laborder 2-pertussis"
Description: "Example for Service Request for Pertussis Investigation"
Usage: #definition
* id = "2-pertussis"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "urn:oid:2.16.756.5.30"
* identifier[=].value = "123"
// * identifier[+].type = $v2-0203#FILL "Filler Identifier"
// * identifier[=].system = "http://example.com/identifier"
// * identifier[=].value = "456"
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