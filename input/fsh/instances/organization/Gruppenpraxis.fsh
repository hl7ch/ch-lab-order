Instance: Gruppenpraxis
InstanceOf: CHCoreOrganizationEPR
Title: "Praxis Seeblick"
Description: "Example for group practice"
Usage: #definition
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000241115"
* name = "Gruppenpraxis Olten"
* telecom[0].system = #phone
* telecom[=].value = "+41555556677"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "info@gruppenpraxis.ch"
* telecom[=].use = #work
* telecom[+].system = #url
* telecom[=].value = "http://www.gruppenpraxis.ch"
* telecom[=].use = #work
* address.line = "Gerbergasse 12"
* address.city = "Olten"
* address.postalCode = "4600"
* address.country = "CH"