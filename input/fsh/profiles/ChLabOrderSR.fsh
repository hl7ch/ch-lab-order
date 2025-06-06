Profile: ChLabOrderSR
Parent: ChOrfServiceRequest
Id: ch-lab-order-SR
Title: "CH LAB-Order-SR"
Description: "Definition of a ServiceRequests of a single LabTest in the context of CH LAB-Order"

* . ^short = "CH LAB-Order ServiceRequest for a labtest"
* . ^definition = "The IHE Laboratory Testing Workflow Profile covers the workflow related to tests performed on in vitro specimens by a clinical laboratory inside a healthcare institution, for both existing and pending orders, related to identified patients and unidentified or misidentified patients. It maintains the consistency of patient and order information from registration through ordering, scheduling, pre-analytical processing, testing, technical and clinical validation, to results reporting and usage of laoratory observations and comments by the care providers."

* ^version = "3.0.0"
* ^status = #active
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
* obeys sr-1
* intent = #original-order (exactly)
* instantiatesCanonical 0..1 MS   // canonical(ActivityDefinition | PlanDefinition)

// ---- SR Container and SR Labtest must have same requisition identifier ----

// * basedOn only Reference(ChLabOrderSR or ChLabOrderSRContainer) // Labtest
* replaces only Reference(ChLabOrderSR)
  * ^short = "references the previous ServiceRequest in the situation of ordering supplemental laboratory tests"

// * requisition 0..1 MS
* category = $sct#108252007 "Laboratory procedure (procedure)"

* code 1..1
* code.coding 1..1
* code.coding from LoincOrSnomed (preferred)

//------- orderDetail -------
* orderDetail.coding. 0..1 MS
* orderDetail.coding.code from Hl7VSOrderControl (required) // for UC with additional tests

//------- reasonCode -------
* reasonCode MS
* reasonCode ^short = "Clinical Question in free text"
* reasonCode.text 1.. MS
* reasonCode.coding from http://hl7.org/fhir/ValueSet/clinical-findings (extensible)

//------- reasonReference -------
* reasonReference MS
* reasonReference ^short = "Reason for the referral (primary diagnosis)"
* reasonReference only Reference(ChLabOrderDiagnosisCondition or ChLabOrderDiagnosticReport or Observation) 

//------- insurance -------
* insurance 0..1 MS
* insurance 
  * ^short = "Insurance information"
  * ^comment = "The insurance information is not mandatory for the ServiceRequest, but it is recommended to be included in the ServiceRequest."  
* insurance only Reference(ChOrfCoverage)

//------- supportingInfo -------
* supportingInfo 0..* MS
* supportingInfo ^short = "Supporting information"
* supportingInfo only Reference(ChLabOrderDiagnosisCondition or ChLabOrderMedication or MedicationStatement or ChOrfDocumentReference or ChLabOrderSR or ChOrfServiceRequest)

// additional information in supportingInfo when ch-lab-report and ch-rad-order is in the dependencyies
//* supportingInfo only Reference(ChLabOrderDiagnosisCondition or ChLabOrderMedication or ChOrfDocumentReference or ChLabDiagnosticReport ChRadOrderImagingStudy or ChOrfServiceRequest)

Invariant: sr-1
Severity: #error
Description: "If serviceRequest.orderDetail = RP (Order/service replace request), then the element 'replaces' must be present"
Expression: "orderDetail.exists() and orderDetail.where($this.memberOf('http://fhir.ch/ig/ch-lab-order/ValueSet/ch-lab-vs-order-control')).exists() implies replaces.exists()"
