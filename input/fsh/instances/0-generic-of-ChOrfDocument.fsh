Instance: 0-generic-of-ChOrfDocument
InstanceOf: ChOrfDocument
Title: "Referral 0-generic"
Description: "Example Bundle for referral/order due to suspected deep vein thrombosis"
Usage: #definition
* id = "0-generic"
* meta.versionId = "1"
* meta.lastUpdated = "2019-04-01T20:18:41.341+00:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd33595f8"
* type = #document
* timestamp = "2019-04-01T20:18:41.341+00:00"

// * entry[0].fullUrl = "http://example.com/fhir/Composition/0-generic"
// * entry[=].resource = Inline-Instance-for-0-generic-1
// * entry[+].fullUrl = "http://example.com/fhir/Patient/HansGuggindieluft"
// * entry[=].resource = Inline-Instance-for-0-generic-2
// * entry[+].fullUrl = "http://example.com/fhir/Practitioner/MarcMustermann"
// * entry[=].resource = Inline-Instance-for-0-generic-3
// * entry[+].fullUrl = "http://example.com/fhir/Organization/Gruppenpraxis"
// * entry[=].resource = Inline-Instance-for-0-generic-4
// * entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/MarcMustermannArztpraxis"
// * entry[=].resource = Inline-Instance-for-0-generic-5
// * entry[+].fullUrl = "http://example.com/fhir/Questionnaire/0-generic"
// * entry[=].resource = 0-generic
// * entry[+].fullUrl = "http://example.com/fhir/QuestionnaireResponse/0-generic"
// * entry[=].resource = 0-generic
// * entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/0-generic"
// * entry[=].resource = Inline-Instance-for-0-generic-8

* entry[0].fullUrl = "http://example.com/fhir/Composition/0-generic"
* entry[=].resource = 0-generic-of-ChOrfComposition
* entry[+].fullUrl = "http://example.com/fhir/Patient/HansGuggindieluft"
* entry[=].resource = HansGuggindieluft
* entry[+].fullUrl = "http://example.com/fhir/Practitioner/MarcMustermann"
* entry[=].resource = MarcMustermann
* entry[+].fullUrl = "http://example.com/fhir/Organization/Gruppenpraxis"
* entry[=].resource = Gruppenpraxis
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/MarcMustermannArztpraxis"
* entry[=].resource = MarcMustermannArztpraxis
* entry[+].fullUrl = "http://example.com/fhir/Questionnaire/0-generic"
* entry[=].resource = 0-generic-of-Questionnaire
* entry[+].fullUrl = "http://example.com/fhir/QuestionnaireResponse/0-generic"
* entry[=].resource = 0-generic-of-ChOrfQuestionnaireResponse
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/0-generic"
* entry[=].resource = 0-generic-of-ChOrfServiceRequest