Instance: PeterPap
InstanceOf: CHCorePractitioner
Title: "Peter Pap"
Description: "Practitioner, works at Gruppenpraxis, refers to 3-gyn"
Usage: #example
* identifier[0].system = "urn:oid:2.51.1.3"  // GLN
* identifier[=].value = "7601003050700"
* identifier[+].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1" // ZSR
* identifier[=].value = "A123305"
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