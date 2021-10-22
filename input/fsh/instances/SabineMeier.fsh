Instance: SabineMeier
InstanceOf: CHCorePractitioner
Title: "Sabine Meier"
Description: "Practitioner, works in Kantonsspital, refers to 4-sepsis"
Usage: #example
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000034821"
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