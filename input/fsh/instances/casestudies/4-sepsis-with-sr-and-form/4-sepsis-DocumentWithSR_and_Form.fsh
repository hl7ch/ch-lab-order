Instance: 4-sepsis-DocumentWithSR_andForm
InstanceOf: ChOrfDocument
Title: "CH LAB-Order 4-sepsis with ServiceRequest and Form"
Description: "Document for referral/order Sepsis Investigation"
Usage: #example
* id = "4-sepsis-document-with-sr-and-form"
* meta.versionId = "1"
* meta.lastUpdated = "2019-04-01T20:18:41.341+00:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd00005f8"
* type = #document
* timestamp = "2019-04-01T20:18:41.341+00:00"

* entry[0].fullUrl = "http://example.com/fhir/Composition/4-sepsis-composition-with-sr-and-form"
* entry[=].resource = 4-sepsis-CompositionWithSR_andForm

* entry[+].fullUrl = "http://example.com/fhir/Patient/SaraSpeckmann"
* entry[=].resource = SaraSpeckmann

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/HansHauser"
* entry[=].resource = HansHauser
* entry[+].fullUrl = "http://example.com/fhir/Organization/Kantonsspital"
* entry[=].resource = Kantonsspital
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/HansHauserKantonsspital"
* entry[=].resource = HansHauserKantonsspital

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/MarcMustermann"  // entry[5]
* entry[=].resource = MarcMustermann
* entry[+].fullUrl = "http://example.com/fhir/Organization/Gruppenpraxis"
* entry[=].resource = Gruppenpraxis
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/MarcMustermannGruppenpraxis"
* entry[=].resource = MarcMustermannGruppenpraxis

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/EvaErlenmeyer"
* entry[=].resource = EvaErlenmeyer
* entry[+].fullUrl = "http://example.com/fhir/Organization/LaborPipette"
* entry[=].resource = LaborPipette
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/EvaErlenmeyerLaborPipette" // entry[10]
* entry[=].resource = EvaErlenmeyerLaborPipette

// * entry[+].fullUrl = "http://example.com/fhir/Coverage/HealthInsuranceCardSaraSpeckmann"
// * entry[=].resource = HealthInsuranceCardSaraSpeckmann

* entry[+].fullUrl = "http://example.com/fhir/Specimen/Blood-bactec-plus-4-sepsis"
* entry[=].resource = Blood-bactec-plus-4-sepsis
* entry[+].fullUrl = "http://example.com/fhir/Specimen/Blood-4-sepsis"
* entry[=].resource = Blood-4-sepsis
* entry[+].fullUrl = "http://example.com/fhir/Specimen/Serum-4-sepsis"
* entry[=].resource = Serum-4-sepsis

* entry[+].fullUrl = "http://example.com/fhir/Questionnaire/4-sepsis"
* entry[=].resource = 4-sepsis-Questionnaire
* entry[+].fullUrl = "http://example.com/fhir/QuestionnaireResponse/4-sepsis"
* entry[=].resource = 4-sepsis-QuestionnaireResponse

* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/4-sepsis-ServiceRequest"  // entry[18]
* entry[=].resource = 4-sepsis-ServiceRequest

// * entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/4-sepsis-ServiceRequestHbHt"  // entry[16]
// * entry[=].resource = 4-sepsis-ServiceRequestHbHt
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/4-sepsis-ServiceRequestCBCDiff"  // entry[16]
* entry[=].resource = 4-sepsis-ServiceRequestCBCDiff
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/4-sepsis-ServiceRequestGrowth"  // entry[17]
* entry[=].resource = 4-sepsis-ServiceRequestGrowth
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/4-sepsis-ServiceRequestCRP"  // entry[18]
* entry[=].resource = 4-sepsis-ServiceRequestCRP