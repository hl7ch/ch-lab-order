Instance: 3-gyn-of-ChOrfServiceRequest
InstanceOf: ChOrfServiceRequest
Title: "laborder 3-gyn"
Description: "Example for Service Request for preventive gynaecological check-up"
Usage: #definition
* id = "3-gyn"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "urn:oid:2.16.756.5.30"
* identifier[=].value = "123"
// * identifier[+].type = $v2-0203#FILL "Filler Identifier"
// * identifier[=].system = "http://example.com/identifier"
// * identifier[=].value = "456"
* status = #active
* intent = #original-order
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