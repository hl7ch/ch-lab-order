Profile: ChLabOrderSRContainer
Parent: ChOrfServiceRequest
Id: ch-lab-order-SR-container
Title: "CH LAB-Order-SR Container"
Description: "Definition for ServiceRequest Container in the context of CH LAB-Order"

* . ^short = "CH LAB-Order ServiceRequest Container"
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
* ^copyright = "CC0-1.0"

// ---- instantiates Canonical
* instantiatesCanonical 0.. MS

// * Is based On ChLabOrderSRSingletest or other SRContainer
* basedOn 0.. MS
* basedOn only Reference(ChLabOrderSRSingletest or ChLabOrderSRContainer) // Labtest or Selfreferential
* requisition 0..1 MS

* code ^binding.description = "Codes for tests or services that can be carried out by a designated individual, organization or healthcare service. For laboratory, LOINC is preferred."


// * code ^short = "Only allow code from LOINC and/or SNOMED CT"
// 
// * code.coding ^slicing.discriminator.type = #value
// * code.coding ^slicing.discriminator.path = "this"
// * code.coding ^slicing.rules = #closed
// * code.coding ^slicing.description = ""
// * code.coding ^slicing.ordered = false
// * code.coding.version = ""
// * code.coding contains
//     LoincCode 0..1 and
//     SnomedCode 0..1
// * code.coding[LoincCode] MS
// * code.coding[LoincCode] from LOINC
// * code.coding[SnomedCode] MS
// * code.coding[SnomedCode] from SCT 


//------- orderDetail -------

//------- reasonCode -------
* reasonCode MS
* reasonCode ^short = "Clinical Question in free text"
* reasonCode.text 1.. MS
//------- reasonReference -------
* reasonReference MS
* reasonReference ^short = "Reason for the referral (primary diagnosis)"
* reasonReference only Reference(ChLabOrderDiagnosisCondition or ChLabOrderDiagnosticReport) 

//------- insurance -------

//------- supportingInfo -------

// ---- specimen ----
* specimen ^short = "Must be present, if order category is #RequestForLabExam or #RequestForHistopathExam"