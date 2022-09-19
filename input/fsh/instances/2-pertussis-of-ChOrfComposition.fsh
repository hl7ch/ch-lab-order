Instance: 2-pertussis-of-ChOrfComposition
InstanceOf: ChOrfComposition
Title: "2-pertussis"
Description: "Composition: Storyboard for Pertussis Investigation"
Usage: #definition
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
* extension[=].valueReference = Reference(MarcMustermannArztpraxis)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(Patient/EmilKummer)


* status = #final
* type = SCT#721965002 "Laboratory order (record artifact)"
* category = SCT#721963009 "Order (record artifact)"
* subject = Reference(Patient/EmilKummer)
* date = "2020-03-31T11:46:09+02:00"
* author = Reference(PeterPrestoGruppenpraxis)
* title = "Referral Pertussis"

// * section.title = "Order-Referral-Form 2-pertussis"
// * section.code = LOINC#93037-0 "Portable medical order form"
// * section.text.status = #generated
// * section.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n Order-Referral-Form 2-pertussis\n </div>"
// * section.entry[0] = Reference(Questionnaire/2-pertussis)
// * section.entry[+] = Reference(QuestionnaireResponse/2-pertussis)
// * section.entry[+] = Reference(ServiceRequest/2-pertussis)

* section[orderReferral].title = "Order-Referral-Form 2-pertussis"
* section[orderReferral].code = LOINC#93037-0 "Portable medical order form"
* section[orderReferral].text.status = #generated
* section[orderReferral].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n Order-Referral-Form 2-pertussis\n </div>"
* section[orderReferral].entry[Questionnaire] = Reference(2-pertussis-of-Questionnaire)
* section[orderReferral].entry[QuestionnaireResponse] = Reference(2-pertussis-of-ChOrfQuestionnaireResponse)
* section[orderReferral].entry[ServiceRequest] = Reference(2-pertussis-of-ChOrfServiceRequest)