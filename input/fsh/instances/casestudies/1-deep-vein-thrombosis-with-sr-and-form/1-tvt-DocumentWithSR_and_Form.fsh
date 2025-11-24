Instance: 1-tvt-DocumentWithSR_andForm
InstanceOf: ChLabOrderDocumentWithSR_AndForm
Title: "Deep Vein Thrombosis"
Description: "CH LAB-Order Document with Service Request and Form"
Usage: #example
* id = "1-tvt-document-with-sr-and-form"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd11125f8"
* type = #document
* timestamp = "2019-04-01T20:18:41.341+00:00"

* entry[0].fullUrl = "http://example.com/fhir/Composition/1-tvt-CompositionWithSRandForm"
* entry[=].resource = 1-tvt-CompositionWithSRandForm

* entry[+].fullUrl = "http://example.com/fhir/Patient/TobiasTimmermann"
* entry[=].resource = TobiasTimmermann

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/MarcMustermann"
* entry[=].resource = MarcMustermann
* entry[+].fullUrl = "http://example.com/fhir/Organization/Gruppenpraxis"
* entry[=].resource = Gruppenpraxis
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/MarcMustermannGruppenpraxis"
* entry[=].resource = MarcMustermannGruppenpraxis

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/PeterPresto"
* entry[=].resource = PeterPresto
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/PeterPrestoGruppenpraxis"
* entry[=].resource = PeterPrestoGruppenpraxis

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/EvaErlenmeyer"
* entry[=].resource = EvaErlenmeyer
* entry[+].fullUrl = "http://example.com/fhir/Organization/LaborPipette"
* entry[=].resource = LaborPipette
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/EvaErlenmeyerLaborPipette"
* entry[=].resource = EvaErlenmeyerLaborPipette

* entry[+].fullUrl = "http://example.com/fhir/Coverage/HealthInsuranceCardTobiasTimmermann"  // entry[10]
* entry[=].resource = HealthInsuranceCardTobiasTimmermann

* entry[+].fullUrl = "http://example.com/fhir/Condition/ConditionRenalInsufficiency"  // entry[11]
* entry[=].resource = ConditionRenalInsufficiency

* entry[+].fullUrl = "http://example.com/fhir/Specimen/Serum-1-tvt"
* entry[=].resource = Serum-1-tvt
* entry[+].fullUrl = "http://example.com/fhir/Specimen/Blood-coag-1-tvt"
* entry[=].resource = Blood-coag-1-tvt
* entry[+].fullUrl = "http://example.com/fhir/Specimen/Blood-1-tvt"
* entry[=].resource = Blood-1-tvt

* entry[+].fullUrl = "http://example.com/fhir/Questionnaire/1-tvt"  // entry[15]
* entry[=].resource = 1-tvt-Questionnaire
* entry[+].fullUrl = "http://example.com/fhir/QuestionnaireResponse/1-tvt"
* entry[=].resource = 1-tvt-QuestionnaireResponse
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/1-tvt-ServiceRequest-0"
* entry[=].resource = 1-tvt-ServiceRequest-0

* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/1-tvt-ServiceRequest-1" // entry[14]
* entry[=].resource = 1-tvt-ServiceRequest-1

* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/1-tvt-ServiceRequest-2" // entry[14]
* entry[=].resource = 1-tvt-ServiceRequest-2

* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/1-tvt-ServiceRequest-3" // entry[14]
* entry[=].resource = 1-tvt-ServiceRequest-3
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/1-tvt-ServiceRequest-4" // entry[14]
* entry[=].resource = 1-tvt-ServiceRequest-4

* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/1-tvt-ServiceRequest-5" // entry[14]
* entry[=].resource = 1-tvt-ServiceRequest-5