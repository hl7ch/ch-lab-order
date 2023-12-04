Profile: ChLabOrderSRSingletest
Parent: ChOrfServiceRequest
Id: ch-lab-order-SR-singletest
Title: "CH LAB-Order-SR Single-test"
Description: "Definition of a ServiceRequests of a single LabTest in the context of CH LAB-Order"

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
* ^copyright = "CC0-1.0"

* instantiatesCanonical 0..1 MS   // canonical(ActivityDefinition | PlanDefinition)

// ---- SR Container and SR Labtest must have same requisition identifier ----

* basedOn 0..0 // since this is a SR for a Labtest, there are no further Labtests based on.
* requisition 0..1 MS

* code ^binding.description = "Codes for tests or services that can be carried out by a designated individual, organization or healthcare service. For laboratory, LOINC is preferred, SNOMED CT may be used in particular situations, microbiology etc."

* code 1..1 //  What is being requested/ordered


// * code from https://fhir.loinc.org/ValueSet/LL1162-8 // warning not found by validator

// * code from $microbiol-procedures (extensible)

// * code from http://hl7.org/fhir/ValueSet/report-codes or $microbiol-procedures

// Includes all codes defined in $loinc
// * code from $microbiol-procedures
// * code from $sct
// error 'Found a reference to a CodeSystem ($sct) where a ValueSet belongs'

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

// ######################################################################
// ---- Examples of Service Request of for single tests ----
// ######################################################################
