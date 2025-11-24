Profile: ChLabOrderSR
Parent: ChOrfServiceRequest
Id: ch-lab-order-SR
Title: "CH LAB-Order ServiceRequest"
Description: "Definition of the ServiceRequest resource to describe a single lab test order."
* . ^short = "CH LAB-Order ServiceRequest"

* obeys sr-1

* instantiatesCanonical 0..1 MS   // canonical(ActivityDefinition | PlanDefinition)

// ---- SR Container and SR Labtest must have same requisition identifier ----

// * basedOn only Reference(ChLabOrderSR or ChLabOrderSRContainer) // Labtest
* replaces only Reference(ChLabOrderSR)
  * ^short = "references the previous ServiceRequest in the situation of ordering supplemental laboratory tests"

// * requisition 0..1 MS
* category = $sct#108252007 "Laboratory procedure (procedure)"

* code ^binding.description = "Codes for tests or services that can be carried out by a designated individual, organization or healthcare service. For laboratory, LOINC is preferred."

//------- orderDetail -------
* orderDetail.coding. 0..1 MS
* orderDetail.coding.code from Hl7VSOrderControl (required) // for UC with additional tests

//------- reasonCode -------
* reasonCode MS
* reasonCode ^short = "Clinical Question in free text"
* reasonCode.text 1.. MS

//------- reasonReference -------
* reasonReference MS
* reasonReference ^short = "Reason for the referral (primary diagnosis)"
* reasonReference only Reference(CHCoreCondition or DiagnosticReport or Observation) 

//------- insurance -------

* insurance 0..1 MS
* insurance ^short = "Insurance information"
* insurance only Reference(ChOrfCoverage)
  //* ^short = "Insurance information"
  //* ^definition = "The insurance information of the patient. The insurance information is not mandatory for the ServiceRequest, but it is recommended to be included in the ServiceRequest."
  //* ^comment = "The insurance information is not mandatory for the ServiceRequest, but it is recommended to be included in the ServiceRequest."
  //* ^binding.strength = #inline
  //* ^binding.description = "The insurance information of the patient. The insurance information is not mandatory for the ServiceRequest, but it is recommended to be included in the ServiceRequest."
  //* ^binding.valueSet = $coverage-type
  //* ^binding.valueSet.reference = "http://fhir.ch/ig/ch-core/CodeSystem/bfs-medstats-25-mainguarantor"
  //* ^binding.valueSet.reference = "http://fhir.ch/ig/ch-orf/ValueSet/ch-orf-vs-coveragetype"
  //* ^binding.valueSet.reference = "http://fhir.ch/ig/ch-orf/CodeSystem/ch-orf-cs-coverageidentifiertype"

//------- supportingInfo -------

* supportingInfo 0..* MS
* supportingInfo ^short = "Supporting information"
* supportingInfo only Reference(CHCoreCondition or CHCoreMedication or CHCoreMedicationStatement or ChOrfDocumentReference or ChLabOrderSR or ChOrfServiceRequest)

// additional information in supportingInfo when ch-lab-report and ch-rad-order is in the dependencies
//* supportingInfo only Reference(CHCoreCondition or CHCoreMedication or ChOrfDocumentReference or ChLabDiagnosticReport ChRadOrderImagingStudy or ChOrfServiceRequest)

Invariant: sr-1
Severity: #error
Description: "If serviceRequest.orderDetail = RP (Order/service replace request), then the element 'replaces' must be present"
Expression: "orderDetail.exists() and orderDetail.where($this.memberOf('http://fhir.ch/ig/ch-lab-order/ValueSet/ch-lab-vs-order-control')).exists() implies replaces.exists()"
