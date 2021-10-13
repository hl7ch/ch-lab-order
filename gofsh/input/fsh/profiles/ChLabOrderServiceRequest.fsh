Profile: ChLabOrderServiceRequest
Parent: ChOrfServiceRequest
Id: ch-lab-order-servicerequest
Title: "CH LAB-Order ServiceRequest"
Description: "Definition for ServiceRequest in the context of CH LAB-Order"
* ^version = "0.9.0"
* ^status = #draft
* ^date = "2019-02-05"
* ^publisher = "HL7 Switzerland"
* ^contact[0].name = "HL7 Switzerland"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.hl7.ch/"
* ^contact[+].name = "Marcel Hanselmann"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "hanselmann48@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CH
* ^copyright = "CC-BY-SA-4.0"
* category 1..
* category from ServiceRequestCategories (required)
* category ^short = "Classification of Service Request: order of lab-test, request for test-results or request for second opinion"
* category ^binding.description = "High-level kind of a clinical document at a macro level."
* specimen ^short = "Must be present, if order is request for test"