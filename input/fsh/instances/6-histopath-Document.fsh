Instance: 6-histopath-Document
InstanceOf: ChOrfDocument
Title: "Referral 6-histopath"
Description: "Example Bundle for referral/order due to suspected deep vein thrombosis"
Usage: #example
* id = "6-histopath"
* meta.versionId = "1"
* meta.lastUpdated = "2019-04-01T20:18:41.341+00:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd33595f8"
* type = #document
* timestamp = "2019-04-01T20:18:41.341+00:00"

* entry[0].fullUrl = "http://example.com/fhir/Composition/6-histopath"
* entry[=].resource = 6-histopath-Composition
* entry[+].fullUrl = "http://example.com/fhir/Patient/KlebsiellaKeller"
* entry[=].resource = KlebsiellaKeller
* entry[+].fullUrl = "http://example.com/fhir/Practitioner/MarcMustermann"
* entry[=].resource = MarcMustermann
* entry[+].fullUrl = "http://example.com/fhir/Organization/Arztpraxis"
* entry[=].resource = Arztpraxis
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/MarcMustermannArztpraxis"
* entry[=].resource = MarcMustermannArztpraxis
* entry[+].fullUrl = "http://example.com/fhir/Questionnaire/6-histopath-flat"
* entry[=].resource = 6-histopath-flat-Questionnaire
* entry[+].fullUrl = "http://example.com/fhir/QuestionnaireResponse/6-histopath-flat-QuestionnaireResponse"
* entry[=].resource = 6-histopath-flat-QuestionnaireResponse
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/6-histopath"
* entry[=].resource = 6-histopath-ServiceRequest