Instance: 4-sepsis-Document
InstanceOf: ChLabOrderDocumentWithSR
Title: "CH LAB-Order 4-sepsis"
Description: "Example Document for referral/order Sepsis Investigation"
Usage: #example
* id = "4-sepsis-document"
* meta.versionId = "1"
* meta.lastUpdated = "2019-04-01T20:18:41.341+00:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd33595f8"
* type = #document
* timestamp = "2019-04-01T20:18:41.341+00:00"

* entry[0].fullUrl = "http://example.com/fhir/Composition/4-sepsis"
* entry[=].resource = 4-sepsis-Composition

* entry[+].fullUrl = "http://example.com/fhir/Patient/SaraSpeckmann"
* entry[=].resource = SaraSpeckmann

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/HansHauser"
* entry[=].resource = HansHauser
* entry[+].fullUrl = "http://example.com/fhir/Organization/Kantonsspital"
* entry[=].resource = Kantonsspital
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/HansHauserKantonsspital"
* entry[=].resource = HansHauserKantonsspital

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/EvaErlenmeyer"
* entry[=].resource = EvaErlenmeyer
* entry[+].fullUrl = "http://example.com/fhir/Organization/LaborPipette"
* entry[=].resource = LaborPipette
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/EvaErlenmeyerLaborPipette" // entry[10]
* entry[=].resource = EvaErlenmeyerLaborPipette

* entry[+].fullUrl = "http://example.com/fhir/Coverage/HealthInsuranceCardSaraSpeckmann"
* entry[=].resource = HealthInsuranceCardSaraSpeckmann

* entry[+].fullUrl = "http://example.com/fhir/Specimen/Blood-bactec-plus"
* entry[=].resource = Blood-bactec-plus
* entry[+].fullUrl = "http://example.com/fhir/Specimen/Blood-sepsis"
* entry[=].resource = Blood-sepsis
* entry[+].fullUrl = "http://example.com/fhir/Specimen/Urine-sepsis"
* entry[=].resource = Urine-sepsis

* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/4-sepsis-service-request"  // entry[15]
* entry[=].resource = 4-sepsis-ServiceRequest

