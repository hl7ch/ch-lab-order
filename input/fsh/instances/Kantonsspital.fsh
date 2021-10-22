Instance: Kantonsspital
InstanceOf: CHCoreOrganization
Title: "Kantonsspital"
Description: "Example for Hospital"
Usage: #definition
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000235500"
* name = "Kantonsspital Zug"
* telecom[0].system = #phone
* telecom[=].value = "+41 45 334 55 66"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "info@kantonsspital.zug.ch"
* telecom[=].use = #work
* telecom[+].system = #url
* telecom[=].value = "http://www.kanstonsspital.zug.ch"
* telecom[=].use = #work
* address.use = #work
* address.line[0] = "Seestrasse 14"
* address.line[+] = "Postfach 14"
* address.city = "Zug"
* address.postalCode = "8000"
* address.country = "Schweiz"