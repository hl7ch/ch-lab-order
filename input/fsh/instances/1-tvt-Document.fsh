Instance: 1-tvt-Document
InstanceOf: ChOrfDocument
Title: "Referral 1-tvt"
Description: "Example Bundle for referral/order due to suspected deep vein thrombosis"
Usage: #example
* id = "1-tvt"
* meta.versionId = "1"
* meta.lastUpdated = "2019-04-01T20:18:41.341+00:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd33595f8"
* type = #document
* timestamp = "2019-04-01T20:18:41.341+00:00"

* entry[0].fullUrl = "http://example.com/fhir/Composition/1-tvt"
* entry[=].resource = 1-tvt-Composition
* entry[+].fullUrl = "http://example.com/fhir/Patient/HansGuggindieluft"
* entry[=].resource = HansGuggindieluft
* entry[+].fullUrl = "http://example.com/fhir/Practitioner/MarcMustermann"
* entry[=].resource = MarcMustermann
* entry[+].fullUrl = "http://example.com/fhir/Organization/Arztpraxis"
* entry[=].resource = Arztpraxis
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/MarcMustermannArztpraxis"
* entry[=].resource = MarcMustermannArztpraxis
* entry[+].fullUrl = "http://example.com/fhir/Questionnaire/1-tvt"
* entry[=].resource = 1-tvt-Questionnaire
* entry[+].fullUrl = "http://example.com/fhir/QuestionnaireResponse/1-tvt"
* entry[=].resource = 1-tvt-QuestionnaireResponse
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/1-tvt"
* entry[=].resource = 1-tvt-ServiceRequest