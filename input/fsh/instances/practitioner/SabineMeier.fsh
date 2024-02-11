Instance: SabineMeier
InstanceOf: CHCorePractitioner
Title: "Practitioner: Sabine Meier"
Description: "Practitioner, works in Kantonsspital, refers to 4-sepsis"
Usage: #example
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000034823"
* identifier[ZSR].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[ZSR].value = "A123321"
* name.use = #official
* name.family = "Meier"
* name.given = "Sabine"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC
* telecom[0].system = #phone
* telecom[=].value = "044 333 22 11"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "sabine.meier@praxis.ch"
* telecom[=].use = #work