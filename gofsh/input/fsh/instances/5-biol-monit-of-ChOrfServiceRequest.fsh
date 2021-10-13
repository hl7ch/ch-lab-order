Instance: 5-biol-monit-of-ChOrfServiceRequest
InstanceOf: ChOrfServiceRequest
Title: "laborder 5-biol-monit"
Description: "Example for Service Request for toxicological Monitoring"
Usage: #definition
* id = "5-biol-monit"
* identifier[0].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "urn:oid:1.3.4.5.6.7"
* identifier[=].value = "123"
* identifier[+].type = $v2-0203#FILL "Filler Identifier"
* identifier[=].system = "urn:oid:7.8.9.10.11"
* identifier[=].value = "456"
* status = #active
* intent = #original-order
* priority = #urgent
* subject = Reference(BeatBorer)
* requester = Reference(PauloPorcelliniSuva)
* reasonCode = $sct#409967009
* reasonCode.text = "Toxicology (qualifier value)"
* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(blood)
* specimen[+] = Reference(urin)