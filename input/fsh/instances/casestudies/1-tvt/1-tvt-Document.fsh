Instance: 1-tvt-Document
InstanceOf: ChLabOrderDocumentWithSR
Title: "CH LAB-Order 1-tvt"
Description: "Example Document for referral/order due to suspected deep vein thrombosis"
Usage: #example
* id = "1-tvt-document"
* meta.versionId = "1"
* meta.lastUpdated = "2019-04-01T20:18:41.341+00:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd33595f8"
* type = #document
* timestamp = "2019-04-01T20:18:41.341+00:00"

* entry[0].fullUrl = "http://example.com/fhir/Composition/1-tvt"
* entry[=].resource = 1-tvt-Composition

* entry[+].fullUrl = "http://example.com/fhir/Patient/TobiasTimmermann"
* entry[=].resource = TobiasTimmermann

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

* entry[+].fullUrl = "http://example.com/fhir/Coverage/HealthInsuranceCardTobiasTimmermann"
* entry[=].resource = HealthInsuranceCardTobiasTimmermann

* entry[+].fullUrl = "http://example.com/fhir/Specimen/Serum-1-tvt"
* entry[=].resource = Serum-1-tvt
* entry[+].fullUrl = "http://example.com/fhir/Specimen/Blood-coag-1-tvt"  // entry[10]
* entry[=].resource = Blood-coag-1-tvt
* entry[+].fullUrl = "http://example.com/fhir/Specimen/Blood-1-tvt"  
* entry[=].resource = Blood-1-tvt

* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/1-tvt-service-request" // entry[12]
* entry[=].resource = 1-tvt-ServiceRequest

/*
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/1-tvt-service-request-d-dimer" // entry[12]
* entry[=].resource = 1-tvt-ServiceRequest-D-Dimer

* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/1-tvt-service-request-crp" // entry[12]
* entry[=].resource = 1-tvt-ServiceRequest-CRP
*/