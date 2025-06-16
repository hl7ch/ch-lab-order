Instance: 4-sepsis-DocumentWithSR
InstanceOf: ChLabOrderDocumentWithSR
Title: "CH LAB-Order 4-sepsis with ServiceRequest"
Description: "Document for referral/order Sepsis Investigation"
Usage: #example
* id = "4-sepsis-document-with-sr"
* meta.versionId = "1"
* meta.lastUpdated = "2019-04-01T20:18:41.341+00:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd33595f8"
* type = #document
* timestamp = "2019-04-01T20:18:41.341+00:00"

* entry[0].fullUrl = "http://example.com/fhir/Composition/4-sepsis-with-sr"
* entry[=].resource = 4-sepsis-CompositionWithSR

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

* entry[+].fullUrl = "http://example.com/fhir/Specimen/4-sepsis-Blood-bactec-plus-aerobic"
* entry[=].resource = 4-sepsis-Blood-bactec-plus-aerobic
* entry[+].fullUrl = "http://example.com/fhir/Specimen/Blood-4-sepsis"
* entry[=].resource = Blood-4-sepsis
* entry[+].fullUrl = "http://example.com/fhir/Specimen/Serum-4-sepsis"
* entry[=].resource = Serum-4-sepsis

* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/4-sepsis-ServiceRequest"  // entry[15]
* entry[=].resource = 4-sepsis-ServiceRequest
//* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/4-sepsis-ServiceRequestHbHt"  // entry[16]
//* entry[=].resource = 4-sepsis-ServiceRequestHbHt
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/4-sepsis-ServiceRequestCBCDiff"  // entry[16]
* entry[=].resource = 4-sepsis-ServiceRequestCBCDiff
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/4-sepsis-ServiceRequestGrowth-aerobic"  // entry[17]
* entry[=].resource = 4-sepsis-ServiceRequestGrowth-aerobic
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/4-sepsis-ServiceRequestCRP"  // entry[18]
* entry[=].resource = 4-sepsis-ServiceRequestCRP