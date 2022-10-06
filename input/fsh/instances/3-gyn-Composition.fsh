Instance: 3-gyn-Composition
InstanceOf: ChOrfComposition
Title: "3-gyn"
Description: "Composition: Storyboard for Preventive Gynaecological Check-up"
Usage: #example
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
* extension[=].valueReference = Reference(MarcMustermannArztpraxis)
* status = #final
* type = SCT#721965002 "Laboratory order (record artifact)"
* category = SCT#721963009 "Order (record artifact)"
* subject = Reference(Patient/MarinaRubella)
* date = "2020-03-31T11:46:09+02:00"
* author = Reference(PeterPapGruppenpraxis)
* title = "Referral 3-gyn"

// * section.title = "Order-Referral-Form 3-gyn"
// * section.code = LOINC#93037-0 "Portable medical order form"
// * section.text.status = #generated
// * section.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n        Order-Referral-Form 3-gyn\n      </div>"
// * section.entry[0] = Reference(Questionnaire/3-gyn)
// * section.entry[+] = Reference(QuestionnaireResponse/3-gyn)
// * section.entry[+] = Reference(ServiceRequest/3-gyn)

* section[orderReferral].title = "Order-Referral-Form 3-gyn"
* section[orderReferral].code = LOINC#93037-0 "Portable medical order form"
* section[orderReferral].text.status = #generated
* section[orderReferral].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n Order-Referral-Form 3-gyn\n </div>"
* section[orderReferral].entry[Questionnaire] = Reference(3-gyn-Questionnaire)
* section[orderReferral].entry[QuestionnaireResponse] = Reference(3-gyn-QuestionnaireResponse)
* section[orderReferral].entry[ServiceRequest] = Reference(3-gyn-ServiceRequest)
