ValueSet: ChLabVsServiceType
Id: ch-lab-vs-service-type
Title: "Service Request Categories for Questionnaires"
Description: "ch-lab-order Service Request Categories"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^date = "2021-06-01T10:21:46+00:00"
* ^publisher = "HL7 Switzerland"
* ^contact.name = "HL7 Switzerland"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.hl7.ch/"
* ^jurisdiction = urn:iso:std:iso:3166#CH
* include codes from system http://fhir.ch/ig/ch-lab-order/CodeSystem/ch-lab-cs-service-type   // only test or panel