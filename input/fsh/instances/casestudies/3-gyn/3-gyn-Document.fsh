Instance: 3-gyn-Document
InstanceOf: ChLabOrderDocument
Title: "CH-LAB-Order 3-gyn"
Description: "Example Bundle for referral/order for preventive gynaecological check-up"
Usage: #example
* id = "3-gyn"
* meta.versionId = "1"
* meta.lastUpdated = "2019-04-01T20:18:41.341+00:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd33595f8"
* type = #document
* timestamp = "2019-04-01T20:18:41.341+00:00"

* entry[0].fullUrl = "http://example.com/fhir/Composition/3-gyn"
* entry[=].resource = 3-gyn-Composition

* entry[+].fullUrl = "http://example.com/fhir/Patient/MarinaRubella"
* entry[=].resource = MarinaRubella

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/MarcMustermann"
* entry[=].resource = MarcMustermann
* entry[+].fullUrl = "http://example.com/fhir/Organization/Arztpraxis"
* entry[=].resource = Arztpraxis
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/MarcMustermannArztpraxis"
* entry[=].resource = MarcMustermannArztpraxis

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/EvaErlenmeyer" // entry[5]
* entry[=].resource = EvaErlenmeyer
* entry[+].fullUrl = "http://example.com/fhir/Organization/LaborPipette"
* entry[=].resource = LaborPipette
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/EvaErlenmeyerLaborPipette"
* entry[=].resource = EvaErlenmeyerLaborPipette

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/PeterPap"
* entry[=].resource = PeterPap
* entry[+].fullUrl = "http://example.com/fhir/Organization/Gruppenpraxis"
* entry[=].resource = Gruppenpraxis
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/PeterPapGruppenpraxis" // entry[10]
* entry[=].resource = PeterPapGruppenpraxis

* entry[+].fullUrl = "http://example.com/fhir/Coverage/HealthInsuranceCardMarinaRubella"
* entry[=].resource = HealthInsuranceCardMarinaRubella

* entry[+].fullUrl = "http://example.com/fhir/Specimen/Cervix-swab" // entry [12]
* entry[=].resource = Cervix-swab
* entry[+].fullUrl = "http://example.com/fhir/Specimen/Blood-gyn"
* entry[=].resource = Blood-gyn
* entry[+].fullUrl = "http://example.com/fhir/Specimen/Serum-gyn"
* entry[=].resource = Serum-gyn
* entry[+].fullUrl = "http://example.com/fhir/Specimen/Urine-gyn"
* entry[=].resource = Urine-gyn


// * entry[+].fullUrl = "http://example.com/fhir/Questionnaire/3-gyn"
// * entry[=].resource = 3-gyn-Questionnaire
// * entry[+].fullUrl = "http://example.com/fhir/QuestionnaireResponse/3-gyn"
// * entry[=].resource = 3-gyn-QuestionnaireResponse
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/3-gyn"
* entry[=].resource = 3-gyn-ServiceRequest
