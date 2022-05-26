Instance: PauloPorcellini
InstanceOf: CHCorePractitionerEPR
Title: "Paulo Porcellini"
Description: "Specialist for Occupational Medicine, works at SUVA, refers to 1-tvt"
Usage: #example
* identifier[0].system = "urn:oid:2.51.1.3"
* identifier[=].value = "7601000050700"
* identifier[+].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1" // ZSR
* identifier[=].value = "A123307"
* name.use = #official
* name.family = "Porcellini"
* name.given = "Paulo"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC
* telecom[0].system = #phone
* telecom[=].value = "036 336 22 33"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "paulo.porcellini@suva.ch"
* telecom[=].use = #work