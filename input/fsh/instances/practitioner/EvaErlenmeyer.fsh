Instance: EvaErlenmeyer
InstanceOf: CHCorePractitioner
Title: "Practitioner: Eva Erlenmeyer"
Description: "Specialist for Laboratory Medicine, works in Labor Pipette"
Usage: #example
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000050717"
* identifier[ZSR].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[ZSR].value = "A123315"
* name.use = #official
* name.family = "Erlenmeyer"
* name.given = "Eva"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC
* telecom[0].system = #phone
* telecom[=].value = "033 444 55 66"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "eva.erlenmeyer@labor-pipette.ch"
* telecom[=].use = #work