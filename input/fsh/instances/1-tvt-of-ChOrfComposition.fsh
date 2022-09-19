Instance: 1-tvt-of-ChOrfComposition
InstanceOf: ChOrfComposition
Title: "1-tvt"
Description: "Composition: Storyboard for suspected deep Vein Thrombosis"
Usage: #definition
* id = "1-tvt"
* meta.versionId = "1"
* meta.lastUpdated = "2021-02-18T17:04:38.520+00:00"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Laboratory Order</div></div>"
* extension[0].extension.url = "enterer"
* extension[=].extension.valueReference = Reference(MarcMustermannArztpraxis)
* extension[=].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-dataenterer"

* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-urgentnoficationcontactforthisdocument"
* extension[=].valueReference = Reference(EvaErlenmeyerLaborPipette)

* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-urgentnoficationcontactfortheresponsetothisdocument"
* extension[=].valueReference = Reference(MarcMustermannArztpraxis)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-receiver"
* extension[=].valueReference = Reference(EvaErlenmeyerLaborPipette)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(PeterPrestoGruppenpraxis)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(Patient/HansGuggindieluft)

* status = #final
* type = SCT#721965002 "Laboratory order (record artifact)"
* category = SCT#721963009 "Order (record artifact)"
* subject = Reference(Patient/HansGuggindieluft)
* date = "2019-03-31T11:46:09+02:00"
* author = Reference(MarcMustermannArztpraxis)
* title = "Order-Referral-Form 1-tvt"

// * section.title = "Order-Referral-Form 1-tvt"
// * section.code = LOINC#93037-0 "Portable medical order form"
// * section.text.status = #generated
// * section.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n Order-Referral-Form 1-tvt\n</div>"
// * section.entry[0] = Reference(Questionnaire/1-tvt)
// * section.entry[+] = Reference(QuestionnaireResponse/1-tvt)
// * section.entry[+] = Reference(ServiceRequest/1-tvt)

* section[orderReferral].title = "Order-Referral-Form 1-tvt"
* section[orderReferral].code = LOINC#93037-0 "Portable medical order form"
* section[orderReferral].text.status = #generated
* section[orderReferral].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n Order-Referral-Form 1-tvt\n </div>"
* section[orderReferral].entry[Questionnaire] = Reference(1-tvt-of-ChOrfQuestionnaire)
* section[orderReferral].entry[QuestionnaireResponse] = Reference(1-tvt-of-ChOrfQuestionnaireResponse)
* section[orderReferral].entry[ServiceRequest] = Reference(1-tvt-of-ChOrfServiceRequest)
