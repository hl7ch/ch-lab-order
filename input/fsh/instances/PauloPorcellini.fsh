Instance: PauloPorcellini
InstanceOf: CHCorePractitionerEPR
Title: "Paulo Porcellini"
Description: "Specialist for Occupational Medicine, works at SUVA, refers to 5-tvt"
Usage: #example
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000050705"
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