Instance: ArminAhrens
InstanceOf: CHCorePractitioner
Title: "Armin Ahrens"
Description: "Practitioner, works in Arztpraxis, refers to 6-histopath"
Usage: #example
* identifier[0].system = "urn:oid:2.51.1.3"
* identifier[=].value = "7601000050700"
* identifier[+].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1" // ZSR
* identifier[=].value = "A123309"
* name.use = #official
* name.family = "Ahrens"
* name.given = "Armin"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC
* telecom[0].system = #phone
* telecom[=].value = "033 123 22 11"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "armin.ahrens@arztpraxis.ch"
* telecom[=].use = #work
* qualification.code.coding.system = "urn:oid:2.16.756.5.30.1.127.3.5" 
// CodeSystem: ch-ehealth-codesystem-medreg
* qualification.code.coding.code = #1021
* qualification.code.text = "Dermatology and venereology"
