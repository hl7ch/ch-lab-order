Instance: Inline-Instance-for-3-gyn-1
InstanceOf: ChOrfComposition
Usage: #inline
* id = "3-gyn"
* meta.versionId = "1"
* meta.lastUpdated = "2021-02-18T17:04:38.520+00:00"
* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Laboratory Order</div></div>"
* extension[0].extension.url = "enterer"
* extension[=].extension.valueReference = Reference(PeterPapGruppenpraxis)
* extension[=].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-dataenterer"
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-receiver"
* extension[=].valueReference = Reference(EvaErlenmeyerLaborPipette)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(Gruppenpraxis)
* status = #final
* type = $sct#721965002 "Laboratory order (record artifact)"
* category = $sct#721963009 "Order (record artifact)"
* subject = Reference(MarinaRubella)
* date = "2020-03-31T11:46:09+02:00"
* author = Reference(PeterPapGruppenpraxis)
* title = "Referral 3-gyn"
* section.title = "Order-Referral-Form 3-gyn"
* section.code = $loinc#93037-0 "Portable medical order form"
* section.text.status = #generated
* section.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n              Order-Referral-Form 3-gyn\n            </div>"
* section.entry[0] = Reference(Questionnaire/3-gyn)
* section.entry[+] = Reference(QuestionnaireResponse/3-gyn)
* section.entry[+] = Reference(ServiceRequest/3-gyn)