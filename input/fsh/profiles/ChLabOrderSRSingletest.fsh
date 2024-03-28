Profile: ChLabOrderSRSingletest
Parent: ChLabOrderSR
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

// if not based on a Reference, a code must be present
* code 1..1 //  What is being requested/ordered
* code ^binding.description = "Codes for tests or services that can be carried out by a designated individual, organization or healthcare service. For laboratory, LOINC is preferred, SNOMED CT may be used in particular situations, microbiology etc."

* obeys obs-1

//------- orderDetail -------
* orderDetail from Hl7VSOrderControl (required) // for UC additional tests

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

Invariant: obs-1
Severity: #error
Description: "If servoceRequest.orderDetail = RO (Replace Order), then the element 'replaces' must be present"
Expression: "orderDetail = 'RO' implies replaces.exists()"
