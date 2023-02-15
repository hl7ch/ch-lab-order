Profile: ChLabOrderSR_labtest
Parent: ChOrfServiceRequest
Id: ch-lab-order-SR-labtest
Title: "CH LAB-Order ServiceRequest - Container"
Description: "Definition for ServiceRequest for a lab test in the context of CH LAB-Order"

* . ^short = "CH LAB-Order ServiceRequest for a labtest"
* . ^definition = "The IHE Laboratory Testing Workflow Profile covers the workflow related to tests performed on in vitro specimens by a clinical laboratory inside a healthcare institution, for both existing and pending orders, related to identified patients and unidentified or misidentified patients. It maintains the consistency of patient and order information from registration through ordering, scheduling, pre-analytical processing, testing, technical and clinical validation, to results reporting and usage of laoratory observations and comments by the care providers."

// ---- Canonical --- url to PlanDefinition | ActivityDefinition
//* instantiatesCanonical ^slicing.discriminator.type = #value
//* instantiatesCanonical ^slicing.discriminator.path = "Catalog/PlanDefinition"
//* instantiatesCanonical ^slicing.rules = #open
//* instantiatesCanonical ^slicing.description = "choose desired PlanDefinition of test/panel"
//* instantiatesCanonical ^slicing.ordered = false


// ---- Reference to further SR
// * basedOn ^slicing.discriminator.type = #value
// * basedOn ^slicing.discriminator.path = "this"
// * basedOn ^slicing.rules = #open
// * basedOn ^slicing.description = ""
// * basedOn ^slicing.ordered = false

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

//------- category -------
// * category = $servicerequest-categories#RequestForHistopathExam "Anforderung von histopathologischen Untersuchungen"
// * category 1..1
// * category from ServiceRequestCategories (required)
// * category ^short = "Classification of Service Request: order of lab or histopathological tests/panels, request for test-results or request for 2nd opinion"
// * category ^binding.description = "High-level kind of a clinical document at a macro level."

// ------ code -------

* code MS
// * code from $ch-vacd-immunization-allergyintolerances-vs (extensible)
// * code ^short = "Allergy Intolerance code"
// * code ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
// * code ^binding.extension[=].valueString = "AllergyCode"
// * code ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
// * code ^binding.extension[=].valueBoolean = true
// * code ^binding.description = "The code for allergy."


//------- orderDetail -------

//------- reasonCode -------
* reasonCode MS
* reasonCode ^short = "Clinical Question in free text"
* reasonCode.text 1.. MS
//------- reasonReference -------
* reasonReference MS
* reasonReference ^short = "Reason for the referral (primary diagnosis)"
* reasonReference only Reference(ChLabOrderDiagnosisCondition) 

//------- insurance -------

//------- supportingInfo -------

// ---- specimen ----
* specimen ^short = "Must be present, if order category is #RequestForLabExam or #RequestForHistopathExam"