Instance: 2-pertussis-DocumentByForm
InstanceOf: ChOrfDocument
Title: "CH LAB-Order by Form 2-pertussis"
Description: "Example Document for referral/order Pertussis investigation"
Usage: #example
* id = "2-pertussis-document-by-form"
* meta.versionId = "1"
* meta.lastUpdated = "2019-04-01T20:18:41.341+00:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd33595f8"
* type = #document
* timestamp = "2019-04-01T20:18:41.341+00:00"

* entry[0].fullUrl = "http://example.com/fhir/Composition/2-pertussis-composition-by-form"
* entry[=].resource = 2-pertussis-CompositionByForm

* entry[+].fullUrl = "http://example.com/fhir/Patient/EmilKummer"
* entry[=].resource = EmilKummer
// * entry[+].fullUrl = "http://example.com/fhir/Patient/FranzMuster"
// * entry[=].resource = FranzMuster
// * entry[+].fullUrl = "http://example.com/fhir/Patient/BeatBorer"
// * entry[=].resource = BeatBorer

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/PeterPresto"
* entry[=].resource = PeterPresto
* entry[+].fullUrl = "http://example.com/fhir/Organization/Gruppenpraxis"
* entry[=].resource = Gruppenpraxis
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/PeterPrestoGruppenpraxis"
* entry[=].resource = PeterPrestoGruppenpraxis

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/MarcMustermann"
* entry[=].resource = MarcMustermann
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/MarcMustermannGruppenpraxis"
* entry[=].resource = MarcMustermannGruppenpraxis

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/EvaErlenmeyer" // entry[10]
* entry[=].resource = EvaErlenmeyer
* entry[+].fullUrl = "http://example.com/fhir/Organization/LaborPipette"
* entry[=].resource = LaborPipette
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/EvaErlenmeyerLaborPipette"
* entry[=].resource = EvaErlenmeyerLaborPipette

* entry[+].fullUrl = "http://example.com/fhir/Coverage/health-insurance-card-emil-kummer"
* entry[=].resource = HealthInsuranceCardEmilKummer

* entry[+].fullUrl = "http://example.com/fhir/Specimen/Serum-2-pertussis"
* entry[=].resource = Serum-2-pertussis
* entry[+].fullUrl = "http://example.com/fhir/Specimen/Throat-swab-2-pertussis" // entry[15]
* entry[=].resource = Throat-swab-2-pertussis
* entry[+].fullUrl = "http://example.com/fhir/Specimen/Blood-2-pertussis"
* entry[=].resource = Blood-2-pertussis

* entry[+].fullUrl = "http://example.com/fhir/Questionnaire/2-pertussis"
* entry[=].resource = 2-pertussis-Questionnaire
* entry[+].fullUrl = "http://example.com/fhir/QuestionnaireResponse/2-pertussis"
* entry[=].resource = 2-pertussis-QuestionnaireResponse
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/2-pertussis-service-request-by-form"
* entry[=].resource = 2-pertussis-ServiceRequestByForm