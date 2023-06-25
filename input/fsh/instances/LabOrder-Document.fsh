Instance: LabOrder-Document
InstanceOf: ChLabOrderDocument
Title: "Referral LabOrder"
Description: "Example Bundle for referral/order due to suspected deep vein thrombosis"
Usage: #example
* id = "LabOrder"
* meta.versionId = "1"
* meta.lastUpdated = "2019-04-01T20:18:41.341+00:00"
* language = #en
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd33595f8"
* type = #document
* timestamp = "2019-04-01T20:18:41.341+00:00"

* entry[0].fullUrl = "http://example.com/fhir/Composition/LabOrder"
* entry[=].resource = LabOrder-Composition
* entry[+].fullUrl = "http://example.com/fhir/Patient/HansGuggindieluft"
* entry[=].resource = HansGuggindieluft
* entry[+].fullUrl = "http://example.com/fhir/Practitioner/MarcMustermann"
* entry[=].resource = MarcMustermann
* entry[+].fullUrl = "http://example.com/fhir/Organization/Arztpraxis"
* entry[=].resource = Arztpraxis
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/MarcMustermannArztpraxis"
* entry[=].resource = MarcMustermannArztpraxis
* entry[+].fullUrl = "http://example.com/fhir/Questionnaire/LabOrder-form" // entry[5]
* entry[=].resource = LabOrder-form
* entry[+].fullUrl = "http://example.com/fhir/QuestionnaireResponse/LabOrder-qr" //entry[6]
* entry[=].resource = LabOrder-QuestionnaireResponse

* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/LabOrder-sr-potassium"  // entry[7]
* entry[=].resource = LabOrder-ServiceRequest-potassium

// // ---- SR for Coagulation Tests ----
// * entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/LabOrder-coag"
// * entry[=].resource = LabOrder-ServiceRequest-coag
// 
// // ---- SR for Coagulation Tests ----
// * entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/LabOrder-cc"
// * entry[=].resource = LabOrder-ServiceRequest-cc

