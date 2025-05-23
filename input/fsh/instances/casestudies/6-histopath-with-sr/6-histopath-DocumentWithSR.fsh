Instance: 6-histopath-DocumentWithSR
InstanceOf: ChLabOrderDocumentWithSR
Title: "CH LAB-Order 6-histopath with ServiceRequest"
Description: "Document for referral/order due to suspected skin melanoma"
Usage: #example
* id = "6-histopath-document-with-sr"
* meta.versionId = "1"
* meta.lastUpdated = "2019-04-01T20:18:41.341+00:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd33595f8"
* type = #document
* timestamp = "2019-04-01T20:18:41.341+00:00"

* entry[0].fullUrl = "http://example.com/fhir/Composition/6-histopath-composition-with-sr"
* entry[=].resource = 6-histopath-CompositionWithSR

* entry[+].fullUrl = "http://example.com/fhir/Patient/SimoneStuder"
* entry[=].resource = SimoneStuder

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/ArminAhrens"
* entry[=].resource = ArminAhrens
* entry[+].fullUrl = "http://example.com/fhir/Organization/Arztpraxis"
* entry[=].resource = Arztpraxis
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/ArminAhrensArztpraxis"
* entry[=].resource = ArminAhrensArztpraxis

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/PeterPresto" // entry[6]
* entry[=].resource = PeterPresto
* entry[+].fullUrl = "http://example.com/fhir/Organization/Gruppenpraxis"
* entry[=].resource = Gruppenpraxis
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/PeterPrestoGruppenpraxis"
* entry[=].resource = PeterPrestoGruppenpraxis

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/EvaErlenmeyer"
* entry[=].resource = EvaErlenmeyer
* entry[+].fullUrl = "http://example.com/fhir/Organization/LaborPipette"
* entry[=].resource = LaborPipette
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/EvaErlenmeyerLaborPipette" // entry[10]
* entry[=].resource = EvaErlenmeyerLaborPipette

// * entry[+].fullUrl = "http://example.com/fhir/Coverage/HealthInsuranceCardSimoneStuder"
// * entry[=].resource = HealthInsuranceCardSimoneStuder

* entry[+].fullUrl = "http://example.com/fhir/Specimen/Skin"
* entry[=].resource = Skin

* entry[+].fullUrl = "http://example.com/fhir/DiagnosticReport/skin-dermatoscopy" // entry[13] 
* entry[=].resource = SkinDermatoscopy

* entry[+].fullUrl = "http://example.com/fhir/Media/skin-dermatoskopy-image" // entry[14] 
* entry[=].resource = SkinDermatoscopyImage

* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/6-histopath-service-request"
* entry[=].resource = 6-histopath-ServiceRequest

