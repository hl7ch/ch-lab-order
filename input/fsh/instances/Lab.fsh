Instance: Lab
InstanceOf: ChOrfServiceRequest
Title: "laborder lab"
Description: "Example for generic Service Request"
Usage: #definition
* identifier[placerOrderIdentifier].type = V2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "7601000234407" // Prefix 760..769 is GS1 Schweiz, Suisse, Svizzera
// * identifier[+].type = V2-0203#FILL "Filler Identifier"
// * identifier[=].system = "http://example.com/identifier"
// * identifier[=].value = "456"
* status = #active
* intent = #original-order
* category = SCT#108252007
* category.text = "Laboratory procedure (procedure)"
* priority = #urgent
* subject = Reference(HansGuggindieluft)
* requester = Reference(MarcMustermannArztpraxis)
* performerType = SCT#61246008
* performerType.text = "Laboratory medicine specialist (occupation)"
* performer = Reference(EvaErlenmeyerLaborPipette)
* reasonCode = SCT#404223003
* reasonCode.text = "Deep venous thrombosis of lower extremity"
* insurance = Reference(HealthInsuranceCard)
* specimen = Reference(Serum) "Serum specimen"