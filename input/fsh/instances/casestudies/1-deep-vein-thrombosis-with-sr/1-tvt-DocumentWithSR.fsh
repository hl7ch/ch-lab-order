Instance: 1-tvt-DocumentWithSR
InstanceOf: ChLabOrderDocumentWithSR
Title: "Deep Vein Thrombosis"
Description: "CH LAB-Order Document with Service Request"
Usage: #example
* id = "1-tvt-document-with-sr"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd33595f8"
* type = #document
* timestamp = "2019-04-01T20:18:41.341+00:00"

* entry[0].fullUrl = "http://example.com/fhir/Composition/1-tvt-CompositionWithSR"
* entry[=].resource = 1-tvt-CompositionWithSR

* entry[+].fullUrl = "http://example.com/fhir/Patient/TobiasTimmermann"
* entry[=].resource = TobiasTimmermann

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/MarcMustermann"
* entry[=].resource = MarcMustermann
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/MarcMustermannGruppenpraxis" // entry[3]
* entry[=].resource = MarcMustermannGruppenpraxis
* entry[+].fullUrl = "http://example.com/fhir/Organization/Gruppenpraxis"
* entry[=].resource = Gruppenpraxis

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/EvaErlenmeyer"
* entry[=].resource = EvaErlenmeyer
* entry[+].fullUrl = "http://example.com/fhir/Organization/LaborPipette"
* entry[=].resource = LaborPipette
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/EvaErlenmeyerLaborPipette"   // entry[7]
* entry[=].resource = EvaErlenmeyerLaborPipette

* entry[+].fullUrl = "http://example.com/fhir/Coverage/HealthInsuranceCardTobiasTimmermann"
* entry[=].resource = HealthInsuranceCardTobiasTimmermann

* entry[+].fullUrl = "http://example.com/fhir/Condition/ConditionRenalInsufficiency"
* entry[=].resource = ConditionRenalInsufficiency

* entry[+].fullUrl = "http://example.com/fhir/Specimen/Serum-1-tvt"   // entry[10]
* entry[=].resource = Serum-1-tvt
* entry[+].fullUrl = "http://example.com/fhir/Specimen/Blood-coag-1-tvt"
* entry[=].resource = Blood-coag-1-tvt
* entry[+].fullUrl = "http://example.com/fhir/Specimen/Blood-1-tvt"  
* entry[=].resource = Blood-1-tvt

* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/1-tvt-ServiceRequest-0" // entry[13]
* entry[=].resource = 1-tvt-ServiceRequest-0

* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/1-tvt-ServiceRequest-1" // entry[14]
* entry[=].resource = 1-tvt-ServiceRequest-1

* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/1-tvt-ServiceRequest-2" // entry[15]
* entry[=].resource = 1-tvt-ServiceRequest-2

* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/1-tvt-ServiceRequest-3" // entry[16]
* entry[=].resource = 1-tvt-ServiceRequest-3
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/1-tvt-ServiceRequest-4" // entry[17]
* entry[=].resource = 1-tvt-ServiceRequest-4

* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/1-tvt-ServiceRequest-5" // entry[18]
* entry[=].resource = 1-tvt-ServiceRequest-5