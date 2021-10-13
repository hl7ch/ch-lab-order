Instance: Inline-Instance-for-3-gyn-7
InstanceOf: ChOrfServiceRequest
Usage: #inline
* id = "3-gyn"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "urn:oid:1.3.4.5.6.7"
* identifier[=].value = "123"
* identifier[+].type = $v2-0203#FILL "Filler Identifier"
* identifier[=].system = "urn:oid:7.8.9.10.11"
* identifier[=].value = "456"
* status = #active
* intent = #original-order
* category = $sct#108252007
* category.text = "Laboratory procedure (procedure)"
* priority = #routine
* subject = Reference(MarinaRubella)
* requester = Reference(PeterPapGruppenpraxis)
* reasonCode = $sct#702601001
* reasonCode.text = "Routine gynecologic examination (procedure)"
* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(cervix-swab)
* specimen[+] = Reference(blood)
* specimen[+] = Reference(serum)
* specimen[+] = Reference(urin)