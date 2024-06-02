Instance: 1-tvt-DocumentWithSR_andForm
InstanceOf: ChOrfDocument
Title: "CH LAB-Order 1-tvt with ServiceRequest and Form"
Description: "Document for referral/order due to suspected deep vein thrombosis"
Usage: #example
* id = "1-tvt-document-with-sr-and-form"
* meta.versionId = "1"
* meta.lastUpdated = "2019-04-01T20:18:41.341+00:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd11125f8"
* type = #document
* timestamp = "2019-04-01T20:18:41.341+00:00"

* entry[0].fullUrl = "http://example.com/fhir/Composition/1-tvt-composition-with-sr-and-form"
* entry[=].resource = 1-tvt-CompositionWithSR_andForm

* entry[+].fullUrl = "http://example.com/fhir/Patient/TobiasTimmermann"
* entry[=].resource = TobiasTimmermann
* entry[+].fullUrl = "http://example.com/fhir/Practitioner/MarcMustermann"
* entry[=].resource = MarcMustermann
* entry[+].fullUrl = "http://example.com/fhir/Organization/Gruppenpraxis"
* entry[=].resource = Gruppenpraxis
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/MarcMustermannGruppenpraxis"
* entry[=].resource = MarcMustermannGruppenpraxis
// * entry[+].fullUrl = "http://example.com/fhir/Practitioner/PeterPresto"
// * entry[=].resource = PeterPresto
// * entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/PeterPrestoGruppenpraxis"
// * entry[=].resource = PeterPrestoGruppenpraxis
* entry[+].fullUrl = "http://example.com/fhir/Practitioner/EvaErlenmeyer"
* entry[=].resource = EvaErlenmeyer
* entry[+].fullUrl = "http://example.com/fhir/Organization/LaborPipette"
* entry[=].resource = LaborPipette
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/EvaErlenmeyerLaborPipette"
* entry[=].resource = EvaErlenmeyerLaborPipette

* entry[+].fullUrl = "http://example.com/fhir/Coverage/HealthInsuranceCardTobiasTimmermann"  // entry[10]
* entry[=].resource = HealthInsuranceCardTobiasTimmermann
* entry[+].fullUrl = "http://example.com/fhir/Condition/ConditionTobiasTimmermann"  // entry[11]
* entry[=].resource = ConditionTobiasTimmermann

// ----- Specimen -----
* entry[+].fullUrl = "http://example.com/fhir/Specimen/Serum-1-tvt"
* entry[=].resource = Serum-1-tvt
* entry[+].fullUrl = "http://example.com/fhir/Specimen/Blood-coag-1-tvt"
* entry[=].resource = Blood-coag-1-tvt
* entry[+].fullUrl = "http://example.com/fhir/Specimen/Blood-1-tvt"  // entry[14]
* entry[=].resource = Blood-1-tvt

// ----- Q and QR -----
* entry[+].fullUrl = "http://example.com/fhir/Questionnaire/1-tvt"
* entry[=].resource = 1-tvt-Questionnaire
* entry[+].fullUrl = "http://example.com/fhir/QuestionnaireResponse/1-tvt"
* entry[=].resource = 1-tvt-QuestionnaireResponse

// ----- ServiceRequest -----
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/1-tvt-service-request-0"
* entry[=].resource = 1-tvt-ServiceRequest-0
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/1-tvt-service-request-1" 
* entry[=].resource = 1-tvt-ServiceRequest-1
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/1-tvt-service-request-2"  // entry[]
* entry[=].resource = 1-tvt-ServiceRequest-2
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/1-tvt-service-request-3" 
* entry[=].resource = 1-tvt-ServiceRequest-3
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/1-tvt-service-request-4" 
* entry[=].resource = 1-tvt-ServiceRequest-4
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/1-tvt-service-request-5" // entry[]
* entry[=].resource = 1-tvt-ServiceRequest-5