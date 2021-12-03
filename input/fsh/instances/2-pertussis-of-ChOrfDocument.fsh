Instance: 2-pertussis-of-ChOrfDocument
InstanceOf: ChOrfDocument
Title: "Referral 2-pertussis"
Description: "Example Bundle for referral/order for Pertussis investigation"
Usage: #definition
* id = "2-pertussis"
* meta.versionId = "1"
* meta.lastUpdated = "2019-04-01T20:18:41.341+00:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd33595f8"
* type = #document
* timestamp = "2019-04-01T20:18:41.341+00:00"

// * entry[0].fullUrl = "http://example.com/fhir/Composition/2-pertussis"
// * entry[=].resource = Inline-Instance-for-2-pertussis-1
// * entry[+].fullUrl = "http://example.com/fhir/Patient/EmilKummer"
// * entry[=].resource = Inline-Instance-for-2-pertussis-2
// * entry[+].fullUrl = "http://example.com/fhir/Practitioner/PeterPresto"
// * entry[=].resource = Inline-Instance-for-2-pertussis-3
// * entry[+].fullUrl = "http://example.com/fhir/Organization/Gruppenpraxis"
// * entry[=].resource = Inline-Instance-for-2-pertussis-4
// * entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/PeterPrestoGruppenpraxis"
// * entry[=].resource = PeterPrestoGruppenpraxis
// * entry[+].fullUrl = "http://example.com/fhir/Questionnaire/2-pertussis"
// * entry[=].resource = 2-pertussis
// * entry[+].fullUrl = "http://example.com/fhir/QuestionnaireResponse/2-pertussis"
// * entry[=].resource = 2-pertussis
// * entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/2-pertussis"
// * entry[=].resource = Inline-Instance-for-2-pertussis-8

* entry[0].fullUrl = "http://example.com/fhir/Composition/2-pertussis"
* entry[=].resource = 2-pertussis-of-ChOrfComposition
* entry[+].fullUrl = "http://example.com/fhir/Patient/EmilKummer"
* entry[=].resource = EmilKummer
* entry[+].fullUrl = "http://example.com/fhir/Practitioner/PeterPresto"
* entry[=].resource = PeterPresto
* entry[+].fullUrl = "http://example.com/fhir/Organization/Gruppenpraxis"
* entry[=].resource = Gruppenpraxis
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/PeterPrestoGruppenpraxis"
* entry[=].resource = PeterPrestoGruppenpraxis
* entry[+].fullUrl = "http://example.com/fhir/Questionnaire/2-pertussis"
* entry[=].resource = 2-pertussis-of-Questionnaire
* entry[+].fullUrl = "http://example.com/fhir/QuestionnaireResponse/2-pertussis"
* entry[=].resource = 2-pertussis-of-ChOrfQuestionnaireResponse
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/2-pertussis"
* entry[=].resource = 2-pertussis-of-ChOrfServiceRequest