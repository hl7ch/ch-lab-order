Instance: WoodyWorkdoc
InstanceOf: CHCorePractitionerEPR
Title: "Woody Worksdoc"
Description: "Works doctor, works at SpeiserRails, refers to 5-biol-monit"
Usage: #example
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000050711"
* name.use = #official
* name.family = "Worksdoc"
* name.given = "Woody"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC
* telecom[0].system = #phone
* telecom[=].value = "077 888 88 11"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "woody.worksdoc@speiser-rails.ch"
* telecom[=].use = #work