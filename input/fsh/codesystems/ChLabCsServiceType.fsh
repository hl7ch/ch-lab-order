CodeSystem: ChLabCsServiceType
Id: ch-lab-cs-service-type
Title: "Service Request Service Types"
Description: "This CodeSystem resource provides the concepts that enable to characterize laboratory diagnostic services described as instances of PlanDefinition, in the PlanDefinition.type element"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-06-01T10:21:46+00:00"
* ^publisher = "HL7 Switzerland"
* ^contact.name = "HL7 Switzerland"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.hl7.ch/"
* ^jurisdiction = urn:iso:std:iso:3166#CH

* #test "unitary measurement performed on an in vitro biologic specimen" "single test or measurement performed on an in vitro biologic specimen."
* #panel "collection of tests and panels performed on one or more in vitro biologic specimens" "group of laboratory measurements performed on an in vitro biologic specimen"