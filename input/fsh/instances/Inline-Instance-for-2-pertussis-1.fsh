Instance: Inline-Instance-for-2-pertussis-1
InstanceOf: ChOrfComposition
Usage: #inline
* id = "2-pertussis"
* meta.versionId = "1"
* meta.lastUpdated = "2021-02-18T17:04:38.520+00:00"
* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Laboratory Order</div></div>"
* extension[0].extension.url = "enterer"
* extension[=].extension.valueReference = Reference(PeterPrestoGruppenpraxis)
* extension[=].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-dataenterer"
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-urgentnoficationcontactfortheresponsetothisdocument"
* extension[=].valueReference = Reference(EvaErlenmeyerLaborPipette)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(Arztpraxis)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(EmilKummer)
* status = #final
* type = $sct#721965002 "Laboratory order (record artifact)"
* category = $sct#721963009 "Order (record artifact)"
* subject = Reference(EmilKummer)
* date = "2020-03-31T11:46:09+02:00"
* author = Reference(PeterPrestoGruppenpraxis)
* title = "Referral Pertussis"
* section.title = "Order-Referral-Form 2-pertussis"
* section.code = $loinc#93037-0 "Portable medical order form"
* section.text.status = #generated
* section.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n              Order-Referral-Form 2-pertussis\n            </div>"
* section.entry[0] = Reference(Questionnaire/2-pertussis)
* section.entry[+] = Reference(QuestionnaireResponse/2-pertussis)
* section.entry[+] = Reference(ServiceRequest/2-pertussis)