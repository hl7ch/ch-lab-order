Instance: Inline-Instance-for-5-biol-monit-8
InstanceOf: ChOrfServiceRequest
Usage: #inline
* id = "5-biol-monit"
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
* subject = Reference(BeatBorer)
* requester = Reference(PauloPorcelliniSuva)
* reasonCode = $sct#409967009
* reasonCode.text = "Toxicology (qualifier value)"
* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(blood)
* specimen[+] = Reference(urin)