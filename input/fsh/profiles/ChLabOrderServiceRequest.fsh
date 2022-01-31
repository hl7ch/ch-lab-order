Profile: ChLabOrderServiceRequest
Parent: ChOrfServiceRequest
Id: ch-lab-order-servicerequest
Title: "CH LAB-Order ServiceRequest"
Description: "Definition for ServiceRequest in the context of CH LAB-Order"

* . ^short = "CH LAB-Order ServiceRequest"
* . ^definition = "This IG follows the IHE Scheduled Workflow (SWF) Profile: 
An Order Filler accepts from an Order Placer a single Order that it equates to a Filler Order 
(which is concept commonly used in HL7) or Laboratory Service Request (Concept commonly used in DICOM). 
Consequently one CH Lab-Order Document contains one CH LAB-Order ServiceRequest which depicts one Placer Order 
equal one Filler Order equal one Imaging Service Request."

// * ^version = "0.9.0"
// * ^status = #draft
// * ^date = "2019-02-05"
// * ^publisher = "HL7 Switzerland"
// * ^contact[0].name = "HL7 Switzerland"
// * ^contact[=].telecom.system = #url
// * ^contact[=].telecom.value = "https://www.hl7.ch/"
// * ^contact[+].name = "Marcel Hanselmann"
// * ^contact[=].telecom.system = #email
// * ^contact[=].telecom.value = "hanselmann48@gmail.com"
// * ^jurisdiction = urn:iso:std:iso:3166#CH
// * ^copyright = "CC-BY-SA-4.0"

* category 1..
* category from ServiceRequestCategories (required)
* category ^short = "Classification of Service Request: order of lab-test, request for test-results or request for second opinion"
* category ^binding.description = "High-level kind of a clinical document at a macro level."
* specimen ^short = "Must be present, if order is request for test"