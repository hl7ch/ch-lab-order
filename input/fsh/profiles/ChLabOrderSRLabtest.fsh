Profile: ChLabOrderSRLabtest
Parent: ChOrfServiceRequest
Id: ch-lab-order-SR-labtest
Title: "CH LAB-Order-SR Labtest"
Description: "Definition for ServiceRequests as lab tests in a ChLabOrderSRContainer  in the context of CH LAB-Order"

* . ^short = "CH LAB-Order ServiceRequest for a labtest"
* . ^definition = "The IHE Laboratory Testing Workflow Profile covers the workflow related to tests performed on in vitro specimens by a clinical laboratory inside a healthcare institution, for both existing and pending orders, related to identified patients and unidentified or misidentified patients. It maintains the consistency of patient and order information from registration through ordering, scheduling, pre-analytical processing, testing, technical and clinical validation, to results reporting and usage of laoratory observations and comments by the care providers."

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

* instantiatesCanonical 1..1

// ---- SR LabTest is based on one SR Container
* basedOn MS
* basedOn only Reference(ChLabOrderSRContainer)

// ---- SR Container and SR Labtest must have same requisition identifier ----
* requisition 1..1 MS

//---- Use Code from LOINC or Snomed CT -----
//---- https://www.devdays.com/wp-content/uploads/2021/12/Daniel-Vreeman-LOINC-_-DevDays-2019-Amsterdam-1.pdf

* code 1..1 MS
* code from $report-codes (extensible)
* code from $microbiol-procedures (extensible)

// * code from $microbiol-procedures (extensible)

// * code from http://hl7.org/fhir/ValueSet/report-codes or $microbiol-procedures

// Includes all codes defined in http://loinc.org
// * code from $microbiol-procedures
// * code from $sct
// error 'Found a reference to a CodeSystem (http://snomed.info/sct) where a ValueSet belongs'

// * code from $sct (example)
// * code ^binding.extension[=].valueString = "LOINC_Code"

// * code ^binding.extension[=].valueString = "AllergyCode"
// * code ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
// * code ^binding.extension[=].valueBoolean = true
// * code ^binding.description = "The code for allergy."

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



//------- category -------
// * category = $servicerequest-categories#RequestForHistopathExam "Anforderung von histopathologischen Untersuchungen"
// * category 1..1
// * category from ServiceRequestCategories (required)
// * category ^short = "Classification of Service Request: order of lab or histopathological tests/panels, request for test-results or request for 2nd opinion"
// * category ^binding.description = "High-level kind of a clinical document at a macro level."

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