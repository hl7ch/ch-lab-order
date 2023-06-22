Instance: 0-generic-Composition
InstanceOf: ChOrfComposition
Title: "0-generic"
Description: "Composition: Storyboard for suspected deep Vein Thrombosis"
Usage: #example
* id = "0-generic"
* meta.versionId = "1"
* meta.lastUpdated = "2021-02-18T17:04:38.520+00:00"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Laboratory Order</div>
<h3>Sample Composition</h3>
</div>"
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
* title = "Laborauftrag"
* category = $sct#721963009 "Order (record artifact)"
* type = $sct#721965002 "Laboratory order (record artifact)"
* subject = Reference(Patient/HansGuggindieluft)
* date = "2019-03-31T11:46:09+02:00"
* author = Reference(MarcMustermannArztpraxis)

* section[orderReferral].title = "Order-Referral-Form 0-generic"
* section[orderReferral].code = $loinc#93037-0 "Portable medical order form"
* section[orderReferral].text.status = #generated
* section[orderReferral].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n Order-Referral-Form 0-generic\n </div>"
* section[orderReferral].entry[Questionnaire] = Reference(0-generic-Questionnaire)
* section[orderReferral].entry[QuestionnaireResponse] = Reference(0-generic-QuestionnaireResponse)
* section[orderReferral].entry[ServiceRequest] = Reference(0-generic-ServiceRequest)
