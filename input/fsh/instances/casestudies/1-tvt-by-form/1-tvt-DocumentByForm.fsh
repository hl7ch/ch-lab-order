Instance: 1-tvt-DocumentByForm
InstanceOf: ChOrfDocument
Title: "CH-LAB-Order 1-tvt by Form"
Description: "Example Bundle for referral/order due to suspected deep vein thrombosis"
Usage: #example
* id = "1-tvt-by-form"
* meta.versionId = "1"
* meta.lastUpdated = "2019-04-01T20:18:41.341+00:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd33595f8"
* type = #document
* timestamp = "2019-04-01T20:18:41.341+00:00"

* entry[0].fullUrl = "http://example.com/fhir/Composition/1-tvt-composition-by-form"
* entry[=].resource = 1-tvt-CompositionByForm

* entry[+].fullUrl = "http://example.com/fhir/Patient/TobiasTimmermann"
* entry[=].resource = TobiasTimmermann

* entry[+].fullUrl = "http://example.com/fhir/Patient/FranzMuster"
* entry[=].resource = FranzMuster
* entry[+].fullUrl = "http://example.com/fhir/Patient/BeatBorer"
* entry[=].resource = BeatBorer

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/MarcMustermann"
* entry[=].resource = MarcMustermann
* entry[+].fullUrl = "http://example.com/fhir/Organization/Arztpraxis"
* entry[=].resource = Arztpraxis
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/MarcMustermannArztpraxis"
* entry[=].resource = MarcMustermannArztpraxis

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/EvaErlenmeyer"
* entry[=].resource = EvaErlenmeyer
* entry[+].fullUrl = "http://example.com/fhir/Organization/LaborPipette"
* entry[=].resource = LaborPipette
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/EvaErlenmeyerLaborPipette"
* entry[=].resource = EvaErlenmeyerLaborPipette

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/PeterPresto" // entry[10]
* entry[=].resource = PeterPresto
* entry[+].fullUrl = "http://example.com/fhir/Organization/Gruppenpraxis"
* entry[=].resource = Gruppenpraxis
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/PeterPrestoGruppenpraxis"
* entry[=].resource = PeterPrestoGruppenpraxis

* entry[+].fullUrl = "http://example.com/fhir/Coverage/HealthInsuranceCard"
* entry[=].resource = HealthInsuranceCard

* entry[+].fullUrl = "http://example.com/fhir/Specimen/Serum"
* entry[=].resource = Serum
* entry[+].fullUrl = "http://example.com/fhir/Specimen/Blood-coag"  // entry[15]
* entry[=].resource = Blood-coag

* entry[+].fullUrl = "http://example.com/fhir/Questionnaire/1-tvt-questionnaire-by-form"
* entry[=].resource = 1-tvt-QuestionnaireByForm
* entry[+].fullUrl = "http://example.com/fhir/QuestionnaireResponse/1-tvt-questionnaire-response-by-form"
* entry[=].resource = 1-tvt-QuestionnaireResponseByForm
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/1-tvt-service-request-by-form"
* entry[=].resource = 1-tvt-ServiceRequestByForm