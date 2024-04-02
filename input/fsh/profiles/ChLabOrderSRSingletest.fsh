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

* obeys sr-1

//------- orderDetail -------
/*
* orderDetail ^slicing.discriminator.type = #value
* orderDetail ^slicing.discriminator.path = "orderDetail"
* orderDetail ^slicing.ordered = false
* orderDetail ^slicing.rules = #open
* orderDetail contains
    orderControl 1..1 MS
*/
* orderDetail.coding.code from Hl7VSOrderControl (required) // for UC with additional tests

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

Invariant: sr-1
Severity: #error
Description: "If serviceRequest.orderDetail = RP (Order/service replace request), then the element 'replaces' must be present"
Expression: "orderDetail = 'RP' implies replaces.exists()"


/*
warning
=======
fsh-generated/resources/StructureDefinition-ch-lab-order-SR-singletest.json Show Validation Information (1)
Path	Severity	Message
StructureDefinition​.snapshot​.element[0]​.constraint[6] (l1​/c21479)	warning	sr-1: The left side is inherently a collection, and so the expression 'orderDetail = 'RO'' may fail or return false if there is more than one item in the content being evaluated
StructureDefinition​.snapshot​.element[37]​.pattern​.ofType(CodeableConcept)	information	The repeating element has a pattern. The pattern will apply to all the repeats (this has not been clear to all users)
*/