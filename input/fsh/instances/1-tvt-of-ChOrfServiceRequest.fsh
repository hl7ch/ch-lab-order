Instance: 1-tvt-of-ChOrfServiceRequest
InstanceOf: ChOrfServiceRequest
Title: "laborder 1-tvt"
Description: "Example for Service Request due to suspected deep vein thrombosis"
Usage: #definition
* id = "1-tvt"
* identifier.type = $v2-0203#PLAC "Placer Identifier"
* identifier.system = "urn:oid:2.16.756.5.30"
* identifier.value = "123"
* status = #active
* intent = #original-order
* category = $ch-lab-order-servicerequest-categories#RequestForLabExam "Anforderung Laboruntersuchung"
* priority = #urgent
* subject = Reference(HansGuggindieluft)
* requester = Reference(MarcMustermannArztpraxis)
* reasonCode = $sct#404223003
* reasonCode.text = "Deep venous thrombosis of lower extremity"
* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(serum) "Serum specimen"
* specimen[+] = Reference(blood)