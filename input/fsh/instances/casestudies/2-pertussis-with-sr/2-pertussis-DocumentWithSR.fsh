Instance: 2-pertussis-DocumentWithSR
InstanceOf: ChLabOrderDocumentWithSR
Title: "CH LAB-Order 2-pertussis with ServiceRequest"
Description: "Document for referral/order for Pertussis investigation"
Usage: #example
* id = "2-pertussis-document-with-sr"

* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd33595f8"
* type = #document
* timestamp = "2019-04-01T20:18:41.341+00:00"

* entry[0].fullUrl = "http://example.com/fhir/Composition/2-pertussis-with-sr"
* entry[=].resource = 2-pertussis-CompositionWithSR

* entry[+].fullUrl = "http://example.com/fhir/Patient/EmilKummer"
* entry[=].resource = EmilKummer

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/PeterPresto"
* entry[=].resource = PeterPresto
* entry[+].fullUrl = "http://example.com/fhir/Organization/Gruppenpraxis"
* entry[=].resource = Gruppenpraxis
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/PeterPrestoGruppenpraxis"
* entry[=].resource = PeterPrestoGruppenpraxis

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/MarcMustermann"
* entry[=].resource = MarcMustermann
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/MarcMustermannGruppenpraxis"
* entry[=].resource = MarcMustermannGruppenpraxis

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/EvaErlenmeyer"
* entry[=].resource = EvaErlenmeyer
* entry[+].fullUrl = "http://example.com/fhir/Organization/LaborPipette"
* entry[=].resource = LaborPipette
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/EvaErlenmeyerLaborPipette"
* entry[=].resource = EvaErlenmeyerLaborPipette

// * entry[+].fullUrl = "http://example.com/fhir/Coverage/health-insurance-card-emil-kummer"
// * entry[=].resource = HealthInsuranceCardEmilKummer

* entry[+].fullUrl = "http://example.com/fhir/Specimen/Serum-2-pertussis"
* entry[=].resource = Serum-2-pertussis
* entry[+].fullUrl = "http://example.com/fhir/Specimen/ThroatSwab-2-pertussis" // entry[15]
* entry[=].resource = ThroatSwab-2-pertussis
* entry[+].fullUrl = "http://example.com/fhir/Specimen/Blood-2-pertussis"
* entry[=].resource = Blood-2-pertussis

* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/2-pertussis-ServiceRequest"
* entry[=].resource = 2-pertussis-ServiceRequest
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/2-pertussis-ServiceRequestCBC"
* entry[=].resource = 2-pertussis-ServiceRequestCBC
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/2-pertussis-ServiceRequestCRP"
* entry[=].resource = 2-pertussis-ServiceRequestCRP
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/2-pertussis-ServiceRequestAddTest"
* entry[=].resource = 2-pertussis-ServiceRequestAddTest