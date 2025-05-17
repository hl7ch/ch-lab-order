Instance: EvaErlenmeyerLaborPipette
InstanceOf: CHCorePractitionerRole
Title: "PractitionerRole Eva Erlenmeyer Labor Pipette"
Description: "PractitionerRole, Specialist for Laboratory Medicine, refers to all story boards"
Usage: #example
* identifier[+].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1" // ZSR
* identifier[=].value = "K333333"
* practitioner = Reference(Practitioner/EvaErlenmeyer)
* organization = Reference(Organization/LaborPipette)