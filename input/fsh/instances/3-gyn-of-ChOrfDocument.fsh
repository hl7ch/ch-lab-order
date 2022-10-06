Instance: 3-gyn-of-ChOrfDocument
InstanceOf: ChOrfDocument
Title: "Referreal 3-gyn"
Description: "Example Bundle for referral/order for preventive gynaecological check-up"
Usage: #example
* id = "3-gyn"
* meta.versionId = "1"
* meta.lastUpdated = "2019-04-01T20:18:41.341+00:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd33595f8"
* type = #document
* timestamp = "2019-04-01T20:18:41.341+00:00"

// * entry[0].fullUrl = "http://example.com/fhir/Composition/3-gyn"
// * entry[=].resource = Inline-Instance-for-3-gyn-1
// * entry[+].fullUrl = "http://example.com/fhir/Patient/MarinaRubella"
// * entry[=].resource = Inline-Instance-for-3-gyn-2
// * entry[+].fullUrl = "http://example.com/fhir/Practitioner/PeterPap"
// * entry[=].resource = Reference(Practitioner/HansHauser)
// * entry[+].fullUrl = "http://example.com/fhir/Organization/Gruppenpraxis"
// * entry[=].resource = Inline-Instance-for-3-gyn-3
// * entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/PeterPapGruppenpraxis"
// * entry[=].resource = PeterPapGruppenpraxis
// * entry[+].fullUrl = "http://example.com/fhir/Questionnaire/3-gyn"
// * entry[=].resource = 3-gyn
// * entry[+].fullUrl = "http://example.com/fhir/QuestionnaireResponse/3-gyn"
// * entry[=].resource = 3-gyn
// * entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/3-gyn"
// * entry[=].resource = Inline-Instance-for-3-gyn-7

* entry[0].fullUrl = "http://example.com/fhir/Composition/3-gyn"
* entry[=].resource = 3-gyn-of-ChOrfComposition
* entry[+].fullUrl = "http://example.com/fhir/Patient/MarinaRubella"
* entry[=].resource = MarinaRubella
* entry[+].fullUrl = "http://example.com/fhir/Practitioner/PeterPap"
* entry[=].resource = PeterPap
* entry[+].fullUrl = "http://example.com/fhir/Organization/Gruppenpraxis"
* entry[=].resource = Gruppenpraxis
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/PeterPapGruppenpraxis"
* entry[=].resource = PeterPapGruppenpraxis
* entry[+].fullUrl = "http://example.com/fhir/Questionnaire/3-gyn"
* entry[=].resource = 3-gyn-of-Questionnaire
* entry[+].fullUrl = "http://example.com/fhir/QuestionnaireResponse/3-gyn"
* entry[=].resource = 3-gyn-of-ChOrfQuestionnaireResponse
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/3-gyn"
* entry[=].resource = 3-gyn-of-ChOrfServiceRequest