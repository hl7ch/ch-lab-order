Instance: 4-sepsis-of-ChOrfDocument
InstanceOf: ChOrfDocument
Title: "Referreal 4-sepsis"
Description: "Example Bundle for referral/order for Sepsis Investigation"
Usage: #definition
* id = "4-sepsis"
* meta.versionId = "1"
* meta.lastUpdated = "2019-04-01T20:18:41.341+00:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd33595f8"
* type = #document
* timestamp = "2019-04-01T20:18:41.341+00:00"

// * entry[0].fullUrl = "http://example.com/fhir/Composition/referral-min"
// * entry[=].resource = Inline-Instance-for-4-sepsis-1
// * entry[+].fullUrl = "http://example.com/fhir/Patient/KlebsiellaKeller"
// * entry[=].resource = Inline-Instance-for-4-sepsis-2
// * entry[+].fullUrl = "http://example.com/fhir/Practitioner/HansHauser"
// * entry[=].resource = Inline-Instance-for-4-sepsis-3
// * entry[+].fullUrl = "http://example.com/fhir/Organization/Kantonsspital"
// * entry[=].resource = Inline-Instance-for-4-sepsis-4
// * entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/HansHauserKantonsspital"
// * entry[=].resource = HansHauserKantonsspital
// * entry[+].fullUrl = "http://example.com/fhir/Questionnaire/4-sepsis"
// * entry[=].resource = 4-sepsis
// * entry[+].fullUrl = "http://example.com/fhir/QuestionnaireResponse/4-sepsis"
// * entry[=].resource = 4-sepsis
// * entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/4-sepsis"
// * entry[=].resource = Inline-Instance-for-4-sepsis-8

* entry[0].fullUrl = "http://example.com/fhir/Composition/4-sepsis"
* entry[=].resource = 4-sepsis-of-ChOrfComposition
* entry[+].fullUrl = "http://example.com/fhir/Patient/KlebsiellaKeller"
* entry[=].resource = KlebsiellaKeller
* entry[+].fullUrl = "http://example.com/fhir/Practitioner/HansHauser"
* entry[=].resource = HansHauser
* entry[+].fullUrl = "http://example.com/fhir/Organization/Kantonsspital"
* entry[=].resource = Kantonsspital
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/HansHauserKantonsspital"
* entry[=].resource = HansHauserKantonsspital
* entry[+].fullUrl = "http://example.com/fhir/Questionnaire/4-sepsis"
* entry[=].resource = 4-sepsis-of-Questionnaire
* entry[+].fullUrl = "http://example.com/fhir/QuestionnaireResponse/4-sepsis"
* entry[=].resource = 4-sepsis-of-ChOrfQuestionnaireResponse
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/4-sepsis"
* entry[=].resource = 4-sepsis-of-ChOrfServiceRequest