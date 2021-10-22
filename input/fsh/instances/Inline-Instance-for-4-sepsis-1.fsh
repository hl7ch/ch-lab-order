Instance: Inline-Instance-for-4-sepsis-1
InstanceOf: ChOrfComposition
Usage: #inline
* id = "4-sepsis"
* meta.versionId = "1"
* meta.lastUpdated = "2021-02-18T17:04:38.520+00:00"
* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Laboratory Order</div></div>"
* extension[0].extension.url = "enterer"
* extension[=].extension.valueReference = Reference(HansHauserKantonsspital)
* extension[=].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-dataenterer"
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-urgentnoficationcontactforthisdocument"
* extension[=].valueReference = Reference(EvaErlenmeyerLaborPipette)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-urgentnoficationcontactfortheresponsetothisdocument"
* extension[=].valueReference = Reference(HansHauserKantonsspital)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-receiver"
* extension[=].valueReference = Reference(EvaErlenmeyerLaborPipette)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(Gruppenpraxis)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(KlebsiellaKeller)
* status = #final
* type = $sct#721965002 "Laboratory order (record artifact)"
* category = $sct#721963009 "Order (record artifact)"
* subject = Reference(KlebsiellaKeller)
* date = "2019-03-31T11:46:09+02:00"
* author = Reference(HansHauserKantonsspital)
* title = "Referral 4-sepsis"
* section.title = "Order-Referral-Form 4-sepsis"
* section.code = $loinc#93037-0 "Portable medical order form"
* section.text.status = #generated
* section.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n              Order-Referral-Form 4-sepsis\n            </div>"
* section.entry[0] = Reference(Questionnaire/4-sepsis)
* section.entry[+] = Reference(QuestionnaireResponse/4-sepsis)
* section.entry[+] = Reference(ServiceRequest/4-sepsis)