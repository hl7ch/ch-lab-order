Instance: 5-biol-monit-of-ChOrfComposition
InstanceOf: ChOrfComposition
Title: "5-biol-monit"
Description: "Composition: Storyboard for Toxicological Monitoring"
Usage: #definition
* id = "5-biol-monit"
* meta.versionId = "1"
* meta.lastUpdated = "2021-02-18T17:04:38.520+00:00"
* extension[0].extension.url = "enterer"
* extension[=].extension.valueReference = Reference(PauloPorcelliniSuva)
* extension[=].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-dataenterer"
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-receiver"
* extension[=].valueReference = Reference(EvaErlenmeyerLaborPipette)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(Gruppenpraxis)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(SpeiserRails)
* status = #final
* type = $sct#721965002 "Laboratory order (record artifact)"
* category = $sct#721963009 "Order (record artifact)"
* subject = Reference(BeatBorer)
* date = "2019-03-31T11:46:09+02:00"
* author = Reference(PauloPorcelliniSuva)
* title = "Referral 5-biol-monit"
* section.title = "Order-Referral-Form 5-biol-monit"
* section.code = $loinc#93037-0 "Portable medical order form"
* section.text.status = #generated
* section.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n        Order-Referral-Form 5-biol-monit\n      </div>"
* section.entry[0] = Reference(Questionnaire/5-biol-monit)
* section.entry[+] = Reference(QuestionnaireResponse/5-biol-monit)
* section.entry[+] = Reference(ServiceRequest/5-biol-monit)