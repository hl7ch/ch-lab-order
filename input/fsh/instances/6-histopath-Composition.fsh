Instance: 6-histopath-Composition
InstanceOf: ChOrfComposition
Title: "6-histopath"
Description: "Composition: Storyboard for suspected Melanoma of skin"
Usage: #example
* id = "6-histopath"
* meta.versionId = "1"
* meta.lastUpdated = "2022-10-20T17:04:38.520+00:00"
* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Laboratory Order</div></div>"

// ---- Sender and Receiver ----
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
* extension[=].valueReference = Reference(Patient/KlebsiellaKeller)

// Auftrag: subject(Ref), author(Ref), Q(Ref), QR(Ref), SR(Ref)
* status = #final
* title = "Pathologieauftrag"
* category = SCT#721963009 "Order (record artifact)"
* type = SCT#721966001 "Pathology order (record artifact)"
* subject = Reference(Patient/KlebsiellaKeller)
* date = "2019-03-31T11:46:09+02:00"
* author = Reference(MarcMustermannArztpraxis)

* section[orderReferral].title = "Order-Referral-Form 6-histopath"
* section[orderReferral].code = $loinc#93037-0 "Portable medical order form"
* section[orderReferral].text.status = #generated
* section[orderReferral].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n Order-Referral-Form 6-histopath\n </div>"
* section[orderReferral].entry[Questionnaire] = Reference(6-histopath-Questionnaire)
* section[orderReferral].entry[QuestionnaireResponse] = Reference(6-histopath-QuestionnaireResponse)
* section[orderReferral].entry[ServiceRequest] = Reference(6-histopath-ServiceRequest)
