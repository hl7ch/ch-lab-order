Instance: 0-generic-Document
InstanceOf: ChOrfDocument
Title: "Referral 0-generic"
Description: "Example Bundle for referral/order due to suspected deep vein thrombosis"
Usage: #example
* id = "0-generic"
* meta.versionId = "1"
* meta.lastUpdated = "2019-04-01T20:18:41.341+00:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd33595f8"
* type = #document
* timestamp = "2019-04-01T20:18:41.341+00:00"

* entry[0].fullUrl = "http://example.com/fhir/Composition/0-generic"
* entry[=].resource = 0-generic-Composition
* entry[+].fullUrl = "http://example.com/fhir/Patient/HansGuggindieluft"
* entry[=].resource = HansGuggindieluft
* entry[+].fullUrl = "http://example.com/fhir/Practitioner/MarcMustermann"
* entry[=].resource = MarcMustermann
* entry[+].fullUrl = "http://example.com/fhir/Organization/Arztpraxis"
* entry[=].resource = Arztpraxis
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/MarcMustermannArztpraxis"
* entry[=].resource = MarcMustermannArztpraxis
* entry[+].fullUrl = "http://example.com/fhir/Questionnaire/0-generic-flat"
* entry[=].resource = 0-generic-flat-Questionnaire
* entry[+].fullUrl = "http://example.com/fhir/QuestionnaireResponse/0-generic-flat-QuestionnaireResponse"
* entry[=].resource = 0-generic-flat-QuestionnaireResponse
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/0-generic"
* entry[=].resource = 0-generic-ServiceRequest