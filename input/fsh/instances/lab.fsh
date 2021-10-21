Instance: lab
InstanceOf: ChOrfServiceRequest
Title: "laborder lab"
Description: "Example for generic Service Request"
Usage: #definition
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
* priority = #urgent
* subject = Reference(HansGuggindieluft)
* requester = Reference(MarcMustermannArztpraxis)
* performerType = $sct#61246008
* performerType.text = "Laboratory medicine specialist (occupation)"
* performer = Reference(EvaErlenmeyerLaborPipette)
* reasonCode = $sct#404223003
* reasonCode.text = "Deep venous thrombosis of lower extremity"
* insurance = Reference(HealthInsuranceCard)
* specimen = Reference(serum) "Serum specimen"