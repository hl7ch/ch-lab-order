Instance: MarcMustermann
InstanceOf: CHCorePractitioner
Title: "Practitioner Marc Mustermann"
Description: "Practitioner, works in Gruppenpraxis"
Usage: #example
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000050700"
* identifier[ZSR].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[ZSR].value = "L248519"

* name.use = #official
* name.family = "Mustermann"
* name.given = "Marc"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC
* telecom[0].system = #phone
* telecom[=].value = "033 444 22 11"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "marc.mustermann@gruppenpraxis.ch"
* telecom[=].use = #work