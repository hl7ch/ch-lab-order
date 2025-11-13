Instance: LabOrderCompositionWithSR_AndForm
InstanceOf: ChLabOrderCompositionWithSR_AndForm
Title: "CH LAB-Order Composition with ServiceRequest and Form"
Description: "Composition with ServiceRequest and Questionnaire/QuestionnaireResponse"
Usage: #inline
* id = "ch-lab-order-composition-with-sr-and-form"
* meta.versionId = "1"
* meta.lastUpdated = "2021-02-18T17:04:38.520+00:00"
* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Laboratory Order with ServiceRequest and Form</div></div>"

* extension[0].extension.url = "enterer"
* extension[=].extension.valueReference = Reference(MarcMustermannGruppenpraxis)
* extension[=].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-dataenterer"
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-urgentnoficationcontactforthisdocument"
* extension[=].valueReference = Reference(EvaErlenmeyerLaborPipette)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-urgentnoficationcontactfortheresponsetothisdocument"
* extension[=].valueReference = Reference(MarcMustermannGruppenpraxis)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-receiver"
* extension[=].valueReference = Reference(EvaErlenmeyerLaborPipette)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(PeterPrestoGruppenpraxis)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(Patient/HansGuggindieluft)

* status = #final
* type = $sct#721965002 "Laboratory order (record artifact)"
* category = $sct#721963009 "Order (record artifact)"
* subject = Reference(Patient/HansGuggindieluft)
* date = "2025-03-05T11:46:09+02:00"
* author = Reference(MarcMustermannGruppenpraxis)
* title = "Laborauftrag"
* section[orderReferral].title = "Auftrag für Laboruntersuchung"
* section[orderReferral].code = $loinc#93037-0 "Portable medical order form"
* section[orderReferral].text.status = #generated
* section[orderReferral].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n                Order-Referral-Form\n            </div>"
* section[orderReferral].entry[Questionnaire] = Reference(LabOrder-form)
* section[orderReferral].entry[QuestionnaireResponse] = Reference(LabOrder-QuestionnaireResponse)
* section[orderReferral].entry[ServiceRequest] = Reference(ServiceRequestPotassiumSerum)
