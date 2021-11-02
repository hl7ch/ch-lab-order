Instance: Inline-Instance-for-2-pertussis-8
InstanceOf: ChOrfServiceRequest
Usage: #inline
* id = "2-pertussis"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "urn:oid:2.16.756.5.30"
* identifier[=].value = "123"
* identifier[+].type = $v2-0203#FILL "Filler Identifier"
* identifier[=].system = "http://example.com/identifier"
* identifier[=].value = "456"
* status = #active
* intent = #original-order
* category = $sct#108252007
* category.text = "Laboratory procedure (procedure)"
* priority = #urgent
* subject = Reference(EmilKummer)
* requester = Reference(PeterPrestoGruppenpraxis)
* reasonCode = $sct#772146005
* reasonCode.text = "Pertussis suspected (situation)"
* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(throat-swab)
* specimen[+] = Reference(blood)
* specimen[+] = Reference(serum)