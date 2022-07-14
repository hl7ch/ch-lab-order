Instance: SpeiserRails
InstanceOf: CHCoreOrganization
Title: "Speiser Rails"
Description: "Example for Manufacturer, refers to 5-biol-monit"
Usage: #definition
* identifier.system = "urn:oid:2.16.756.5.45"  // BER (Business and Enterprise Register)
* identifier.value = "CHE-108.444.179"
* telecom[0].system = #phone
* telecom[=].value = "+41412345566"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "info@speiser-rails.ch"
* telecom[=].use = #work
* telecom[+].system = #url
* telecom[=].value = "http://www.speiser-rails.ch"
* telecom[=].use = #work
* address.line = "Gleisallee 123"
* address.city = "Arbon"
* address.postalCode = "9320"
* address.country = "CH"