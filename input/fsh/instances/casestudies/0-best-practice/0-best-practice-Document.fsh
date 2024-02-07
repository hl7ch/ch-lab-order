Instance: BestPracticeDocument
InstanceOf: ChLabOrderDocumentWithSR
Title: "CH LAB-Order best-practice"
Description: "Example Bundle for laboratory order"
Usage: #example
* id = "0-best-practice-document"
* meta.versionId = "1"
* meta.lastUpdated = "2023-04-01T20:18:41.341+00:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd33595f8"
* type = #document
* timestamp = "2023-04-01T20:18:41.341+00:00"

* entry[0].fullUrl = "http://example.com/fhir/Composition/0-best-practice"
* entry[=].resource = 0-best-practice-Composition

* entry[+].fullUrl = "http://example.com/fhir/Patient/BirgitBlum"
* entry[=].resource = BirgitBlum

* entry[+].fullUrl = "http://example.com/fhir/Encounter/FirstEncounter"
* entry[=].resource = FirstEncounter

* entry[+].fullUrl = "http://example.com/fhir/Medication/Liquemin"
* entry[=].resource = Liquemin

// * entry[+].fullUrl = "http://example.com/fhir/Substance/Heparin"
// * entry[=].resource = Heparin

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/MarcMustermann"
* entry[=].resource = MarcMustermann
* entry[+].fullUrl = "http://example.com/fhir/Organization/Gruppenpraxis"   // entry[5]
* entry[=].resource = Gruppenpraxis
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/MarcMustermannGruppenpraxis"
* entry[=].resource = MarcMustermannGruppenpraxis

* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/HansHauserKantonsspital"
* entry[=].resource = HansHauserKantonsspital

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/EvaErlenmeyer"
* entry[=].resource = EvaErlenmeyer
* entry[+].fullUrl = "http://example.com/fhir/Organization/LaborPipette"
* entry[=].resource = LaborPipette
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/EvaErlenmeyerLaborPipette"
* entry[=].resource = EvaErlenmeyerLaborPipette
                      
// * entry[+].fullUrl = "http://example.com/fhir/Coverage/HealthInsuranceCardBirgitBlum"   // entry[10]
// * entry[=].resource = HealthInsuranceCardBirgitBlum
// * entry[+].fullUrl = "http://example.com/fhir/Condition/ConditionHeartDisorder"
// * entry[=].resource = ConditionHeartDisorder

* entry[+].fullUrl = "http://example.com/fhir/Specimen/Serum-0-best-practice"
* entry[=].resource = Serum-0-best-practice
* entry[+].fullUrl = "http://example.com/fhir/Specimen/Blood-coag-0-best-practice"  // entry[12]
* entry[=].resource = Blood-coag-0-best-practice
* entry[+].fullUrl = "http://example.com/fhir/Specimen/Blood-0-best-practice"  
* entry[=].resource = Blood-0-best-practice

* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/0-best-practice-service-request-0" // entry[14]
* entry[=].resource = 0-best-practice-ServiceRequest-0

* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/0-best-practice-service-request-1" // entry[15]
* entry[=].resource = 0-best-practice-ServiceRequest-1
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/0-best-practice-service-request-2" // entry[16]
* entry[=].resource = 0-best-practice-ServiceRequest-2
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/0-best-practice-service-request-3" // entry[17]
* entry[=].resource = 0-best-practice-ServiceRequest-3


