Instance: LabOrder-Composition
InstanceOf: ChLabOrderComposition
Title: "LabOrder"
Description: "Composition for multiple SR"
Usage: #example
* id = "LabOrder"
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

// * status = #final
// * title = "Laborauftrag"
// * category = $sct#721963009 "Order (record artifact)"
// * type = $sct#721965002 "Laboratory order (record artifact)"
// * subject = Reference(Patient/HansGuggindieluft)
// * date = "2019-03-31T11:46:09+02:00"
// * author = Reference(MarcMustermannArztpraxis)
// 
// * section[orderReferral].title = "Order-Referral-Form LabOrder"
// * section[orderReferral].code = $loinc#93037-0 "Portable medical order form"
// * section[orderReferral].text.status = #generated
// * section[orderReferral].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n Order-Referral-Form LabOrder\n </div>"
// 
// // -- Q
// * section[orderReferral].entry[Questionnaire] = Reference(LabOrder-form)
// 
// // QR
// * section[orderReferral].entry[QuestionnaireResponse] = Reference(LabOrder-QuestionnaireResponse)
// 
// // --- SR
// * section[orderReferral].entry[ServiceRequest] = Reference(LabOrder-ServiceRequest)

* status = #final
* type = $sct#419891008 "Record artifact (record artifact)"
* category = $sct#721963009 "Order (record artifact)"
* subject = Reference(Patient/HansGuggindieluft)
* date = "2019-03-31T11:46:09+02:00"
* author = Reference(MarcMustermannArztpraxis)
* title = "Laborauftrag"
* section.title = "Auftrag für Laboruntersuchung"
* section.code = $loinc#93037-0 "Portable medical order form"
* section.text.status = #generated
* section.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n                Order-Referral-Form\n            </div>"
* section.entry[0] = Reference(LabOrder-form)
* section.entry[+] = Reference(LabOrder-QuestionnaireResponse)
* section.entry[+] = Reference(LabOrder-ServiceRequest)