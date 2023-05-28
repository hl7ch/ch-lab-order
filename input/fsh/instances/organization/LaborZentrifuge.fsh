Instance: LaborZentrifuge
InstanceOf: CHCoreOrganization
Title: "Labor Zentrifuge"
Description: "Laboratory Organization, refers to all Storyboards"
Usage: #example
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601055231222"
* name = "Labor Zentrifuge"
* telecom[0].system = #phone
* telecom[=].value = "+41223345222"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "info@labor-zentrifuge.ch"
* telecom[=].use = #work
* telecom[+].system = #url
* telecom[=].value = "http://www.labor-zentrifuge.ch"
* telecom[=].use = #work
* address.line = "Rte des Alpes 44"
* address.city = "Fribourg"
* address.postalCode = "1700"
* address.country = "CH"