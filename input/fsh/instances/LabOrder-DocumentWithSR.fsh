Instance: LabOrder-DocumentWithSR
InstanceOf: ChLabOrderDocumentWithSR
Title: "CH LAB-Order Document with ServiceRequest"
Description: "Document for referral/order of Potassium in Serum"
Usage: #example
* id = "ch-lab-order-document-with-sr"
* meta.versionId = "1"
* meta.lastUpdated = "2019-04-01T20:18:41.341+00:00"
* language = #en
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd33595f8"
* type = #document
* timestamp = "2019-04-01T20:18:41.341+00:00"

* entry[0].fullUrl = "http://example.com/fhir/Composition/ch-lab-order-composition-with-sr"
* entry[=].resource = LabOrder-CompositionWithSR

// * entry[+].fullUrl = "http://example.com/fhir/Patient/HansGuggindieluft"
// * entry[=].resource = HansGuggindieluft
* entry[+].fullUrl = "http://example.com/fhir/Patient/FranzMuster"
* entry[=].resource = FranzMuster
// * entry[+].fullUrl = "http://example.com/fhir/Patient/BeatBorer"
// * entry[=].resource = BeatBorer

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
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/PeterPrestoGruppenpraxis"
* entry[=].resource = PeterPrestoGruppenpraxis

* entry[+].fullUrl = "http://example.com/fhir/Coverage/HealthInsuranceCardFranzMuster"
* entry[=].resource = HealthInsuranceCardFranzMuster

* entry[+].fullUrl = "http://example.com/fhir/Specimen/Serum"
* entry[=].resource = Serum

* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/service-request-potassium-serum"  // entry[10]
* entry[=].resource = ServiceRequestPotassiumSerum
