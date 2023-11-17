Instance: 2-pertussis-Document
InstanceOf: ChOrfDocument
Title: "Referral 2-pertussis"
Description: "Example Bundle for referral/order for Pertussis investigation"
Usage: #example
* id = "2-pertussis"
* meta.versionId = "1"
* meta.lastUpdated = "2019-04-01T20:18:41.341+00:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd33595f8"
* type = #document
* timestamp = "2019-04-01T20:18:41.341+00:00"

* entry[0].fullUrl = "http://example.com/fhir/Composition/2-pertussis"
* entry[=].resource = 2-pertussis-Composition

* entry[+].fullUrl = "http://example.com/fhir/Patient/EmilKummer"
* entry[=].resource = EmilKummer
* entry[+].fullUrl = "http://example.com/fhir/Patient/FranzMuster"
* entry[=].resource = FranzMuster
* entry[+].fullUrl = "http://example.com/fhir/Patient/BeatBorer"
* entry[=].resource = BeatBorer

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/PeterPresto"
* entry[=].resource = PeterPresto
* entry[+].fullUrl = "http://example.com/fhir/Organization/Gruppenpraxis"
* entry[=].resource = Gruppenpraxis
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/PeterPrestoGruppenpraxis"
* entry[=].resource = PeterPrestoGruppenpraxis

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

* entry[+].fullUrl = "http://example.com/fhir/Coverage/HealthInsuranceCard"
* entry[=].resource = HealthInsuranceCard

* entry[+].fullUrl = "http://example.com/fhir/Specimen/Serum"
* entry[=].resource = Serum
* entry[+].fullUrl = "http://example.com/fhir/Specimen/Throat-swab"
* entry[=].resource = Throat-swab
* entry[+].fullUrl = "http://example.com/fhir/Specimen/Blood"
* entry[=].resource = Blood

* entry[+].fullUrl = "http://example.com/fhir/Questionnaire/2-pertussis"
* entry[=].resource = 2-pertussis-Questionnaire
* entry[+].fullUrl = "http://example.com/fhir/QuestionnaireResponse/2-pertussis"
* entry[=].resource = 2-pertussis-QuestionnaireResponse
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/2-pertussis"
* entry[=].resource = 2-pertussis-ServiceRequest