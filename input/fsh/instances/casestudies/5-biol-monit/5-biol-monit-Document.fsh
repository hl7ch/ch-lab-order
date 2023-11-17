Instance: 5-biol-monit-Document
InstanceOf: ChOrfDocument
Title: "Referreal 5-biol-monit"
Description: "Example Bundle for referral/order for toxicological Monitoring"
Usage: #example
* id = "5-biol-monit"
* meta.versionId = "1"
* meta.lastUpdated = "2019-04-01T20:18:41.341+00:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd3359505"
* type = #document
* timestamp = "2019-04-01T20:18:41.341+00:00"

// * entry[0].fullUrl = "http://example.com/fhir/Composition/5-biol-monit"
// * entry[=].resource = Inline-Instance-for-5-biol-monit-1
// * entry[+].fullUrl = "http://example.com/fhir/Patient/BeatBorer"
// * entry[=].resource = Inline-Instance-for-5-biol-monit-2
// * entry[+].fullUrl = "http://example.com/fhir/Practitioner/PauloPorcellini"
// * entry[=].resource = Inline-Instance-for-5-biol-monit-3
// * entry[+].fullUrl = "http://example.com/fhir/Organization/Suva"
// * entry[=].resource = Inline-Instance-for-5-biol-monit-4
// * entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/PauloPorcelliniSuva"
// * entry[=].resource = PauloPorcelliniSuva
// * entry[+].fullUrl = "http://example.com/fhir/Questionnaire/5-biol-monit"
// * entry[=].resource = 5-biol-monit
// * entry[+].fullUrl = "http://example.com/fhir/QuestionnaireResponse/5-biol-monit"
// * entry[=].resource = 5-biol-monit
// * entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/5-biol-monit"
// * entry[=].resource = Inline-Instance-for-5-biol-monit-8

* entry[0].fullUrl = "http://example.com/fhir/Composition/5-biol-monit"
* entry[=].resource = 5-biol-monit-Composition
* entry[+].fullUrl = "http://example.com/fhir/Patient/BeatBorer"
* entry[=].resource = BeatBorer
* entry[+].fullUrl = "http://example.com/fhir/Practitioner/PauloPorcellini"
* entry[=].resource = PauloPorcellini
* entry[+].fullUrl = "http://example.com/fhir/Organization/Suva"
* entry[=].resource = Suva
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/PauloPorcelliniSuva"
* entry[=].resource = PauloPorcelliniSuva
* entry[+].fullUrl = "http://example.com/fhir/Questionnaire/5-biol-monit"
* entry[=].resource = 5-biol-monit-Questionnaire
* entry[+].fullUrl = "http://example.com/fhir/QuestionnaireResponse/5-biol-monit"
* entry[=].resource = 5-biol-monit-QuestionnaireResponse
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/5-biol-monit"
* entry[=].resource = 5-biol-monit-ServiceRequest

* entry[+].fullUrl = "http://example.com/fhir/Coverage/HealthInsuranceCard"
* entry[=].resource = HealthInsuranceCard

* entry[+].fullUrl = "http://example.com/fhir/Specimen/Blood"
* entry[=].resource = Blood
* entry[+].fullUrl = "http://example.com/fhir/Specimen/Urine"
* entry[=].resource = Urine