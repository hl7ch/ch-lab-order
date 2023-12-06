Instance: 5-biol-monit-DocumentByForm
InstanceOf: ChOrfDocument
Title: "CH LAB-Order by Form 5-biol-monit"
Description: "Example Bundle for referral/order for toxicological Monitoring"
Usage: #example
* id = "5-biol-monit-document-by-form"
* meta.versionId = "1"
* meta.lastUpdated = "2019-04-01T20:18:41.341+00:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd3359505"
* type = #document
* timestamp = "2019-04-01T20:18:41.341+00:00"

* entry[0].fullUrl = "http://example.com/fhir/Composition/5-biol-monit-composition-by-form"
* entry[=].resource = 5-biol-monit-CompositionByForm

* entry[+].fullUrl = "http://example.com/fhir/Patient/BeatBorer"
* entry[=].resource = BeatBorer

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/PauloPorcellini"
* entry[=].resource = PauloPorcellini
* entry[+].fullUrl = "http://example.com/fhir/Organization/Suva"
* entry[=].resource = Suva
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/PauloPorcelliniSuva"
* entry[=].resource = PauloPorcelliniSuva

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/ArminAhrens"
* entry[=].resource = ArminAhrens
* entry[+].fullUrl = "http://example.com/fhir/Organization/Arztpraxis"
* entry[=].resource = Arztpraxis
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/ArminAhrensArztpraxis"
* entry[=].resource = ArminAhrensArztpraxis

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/EvaErlenmeyer"
* entry[=].resource = EvaErlenmeyer
* entry[+].fullUrl = "http://example.com/fhir/Organization/LaborPipette"
* entry[=].resource = LaborPipette
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/EvaErlenmeyerLaborPipette" // entry[10]
* entry[=].resource = EvaErlenmeyerLaborPipette

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/WoodyWorkdoc"
* entry[=].resource = WoodyWorkdoc
* entry[+].fullUrl = "http://example.com/fhir/Organization/SpeiserRails"
* entry[=].resource = SpeiserRails
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/WoodyWorkdocSpeiserRails" // entry[10]
* entry[=].resource = WoodyWorkdocSpeiserRails

* entry[+].fullUrl = "http://example.com/fhir/Coverage/HealthInsuranceCardBeatBorer"
* entry[=].resource = HealthInsuranceCardBeatBorer

* entry[+].fullUrl = "http://example.com/fhir/Specimen/Blood-biol-monit"
* entry[=].resource = Blood-biol-monit
* entry[+].fullUrl = "http://example.com/fhir/Specimen/Urine-biol-monit"
* entry[=].resource = Urine-biol-monit


* entry[+].fullUrl = "http://example.com/fhir/Questionnaire/5-biol-monit"
* entry[=].resource = 5-biol-monit-Questionnaire
* entry[+].fullUrl = "http://example.com/fhir/QuestionnaireResponse/5-biol-monit"
* entry[=].resource = 5-biol-monit-QuestionnaireResponse
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/5-biol-monit-service-request-by-form"
* entry[=].resource = 5-biol-monit-ServiceRequestByForm

