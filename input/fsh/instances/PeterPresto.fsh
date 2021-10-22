Instance: PeterPresto
InstanceOf: CHCorePractitionerEPR
Title: "Peter Presto"
Description: "Practitioner, works at Gruppenpraxis, refers to 2-pertussis"
Usage: #example
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000050704"
* name.use = #official
* name.family = "Presto"
* name.given = "Peter"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC
* telecom[0].system = #phone
* telecom[=].value = "032 333 22 33"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "peter.presto@arztpraxis.ch"
* telecom[=].use = #work