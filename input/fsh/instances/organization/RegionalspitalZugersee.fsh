Instance: RegionalspitalZugersee
InstanceOf: CHCoreOrganization
Title: "Organization Regionalspital Zugersee"
Description: "Example for hospital"
Usage: #inline
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601980235500"
* name = "Regionalspital Zugersee"
* telecom[0].system = #phone
* telecom[=].value = "+41 45 334 55 66"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "info@regionalspital.zug.ch"
* telecom[=].use = #work
* telecom[+].system = #url
* telecom[=].value = "http://www.regionalspital.zug.ch"
* telecom[=].use = #work
* address.use = #work
* address.line[0] = "Uferstrasse 14"
* address.line[+] = "Postfach 80"
* address.city = "Walchwil"
* address.postalCode = "6318"
* address.country = "CH"