Instance: PeterPap
InstanceOf: CHCorePractitioner
Title: "Peter Pap"
Description: "Practitioner, works at Gruppenpraxis, refers to 3-gyn"
Usage: #example
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000050703"
* name.use = #official
* name.family = "Pap"
* name.given = "Peter"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC
* telecom[0].system = #phone
* telecom[=].value = "032 333 22 40"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "peter.pap@gruppenpraxis.ch"
* telecom[=].use = #work