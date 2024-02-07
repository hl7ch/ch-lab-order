/*
Instance: LabOrder-Document-by-Form
InstanceOf: ChLabOrderDocumentByForm
Title: "CH LAB-Order Document by Form"
Description: "Example Bundle for referral/order due to suspected deep vein thrombosis"
Usage: #example
* id = "ch-lab-order-by-form"
* meta.versionId = "1"
* meta.lastUpdated = "2019-04-01T20:18:41.341+00:00"
* language = #en
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd33595f8"
* type = #document
* timestamp = "2019-04-01T20:18:41.341+00:00"

* entry[0].fullUrl = "http://example.com/fhir/Composition/ch-lab-order-composition-with-sr-and-form"
* entry[=].resource = LabOrderCompositionWithSR_AndForm

* entry[+].fullUrl = "http://example.com/fhir/Patient/HansGuggindieluft"
* entry[=].resource = HansGuggindieluft
* entry[+].fullUrl = "http://example.com/fhir/Patient/FranzMuster"
* entry[=].resource = FranzMuster
* entry[+].fullUrl = "http://example.com/fhir/Patient/BeatBorer"
* entry[=].resource = BeatBorer

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/MarcMustermann"
* entry[=].resource = MarcMustermann
* entry[+].fullUrl = "http://example.com/fhir/Organization/Gruppenpraxis"
* entry[=].resource = Gruppenpraxis
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/MarcMustermannGruppenpraxis"
* entry[=].resource = MarcMustermannGruppenpraxis

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/EvaErlenmeyer"
* entry[=].resource = EvaErlenmeyer
* entry[+].fullUrl = "http://example.com/fhir/Organization/LaborPipette"
* entry[=].resource = LaborPipette
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/EvaErlenmeyerLaborPipette"
* entry[=].resource = EvaErlenmeyerLaborPipette

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/PeterPresto"
* entry[=].resource = PeterPresto
// * entry[+].fullUrl = "http://example.com/fhir/Organization/Gruppenpraxis"
// * entry[=].resource = Gruppenpraxis
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/PeterPrestoGruppenpraxis"
* entry[=].resource = PeterPrestoGruppenpraxis

* entry[+].fullUrl = "http://example.com/fhir/Coverage/HealthInsuranceCard"
* entry[=].resource = HealthInsuranceCard

* entry[+].fullUrl = "http://example.com/fhir/Specimen/Serum"
* entry[=].resource = Serum

* entry[+].fullUrl = "http://example.com/fhir/Questionnaire/LabOrder-form" // entry[8]
* entry[=].resource = LabOrder-form
* entry[+].fullUrl = "http://example.com/fhir/QuestionnaireResponse/LabOrder-qr" //entry[9]
* entry[=].resource = LabOrder-QuestionnaireResponse

* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/LabOrder-potassium"  // entry[10]
* entry[=].resource = LabOrder-ServiceRequest-potassium

// // ---- SR for Coagulation Tests ----
// * entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/LabOrder-coag"
// * entry[=].resource = LabOrder-ServiceRequest-coag
// 
// // ---- SR for Coagulation Tests ----
// * entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/LabOrder-cc"
// * entry[=].resource = LabOrder-ServiceRequest-cc

*/