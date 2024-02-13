Instance: 5-biol-monit-CompositionWithSR_andForm
InstanceOf: ChOrfComposition
Title: "Composition 5-biol-monit with Service Request and Form"
Description: "Composition: Storyboard for Toxicological Monitoring"
Usage: #example
* id = "5-biol-monit-composition-with-sr-and-form"
* meta.versionId = "1"
* meta.lastUpdated = "2021-02-18T17:04:38.520+00:00"
* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Case study 5</div>     <div><h3> Collective order “SUVA biological monitoring”    </h3>      <p>Companies that work with substances hazardous to health and in which employees are exposed to special risks are subject to occupational health screening by SUVA. Biological monitoring is one of the control options. This assesses the exposure of workers to chemical agents by determining the agents or metabolites in biological material (e.g. urine). The Occupational Medical Prevention (AMV) of SUVA sends the laboratory a monthly list with the following information per company (collective order): </p>    <ul>      <li>Establishment (name, address, establishment number).      </li>      <li>Number of employees for biological monitoring      </li>      <li>Examinations to be carried out (e.g. arsenic, lead, mercury, mandelic acid). The companies receive a list from the AMV including labels with the affected employees. Here we take the document of an employee Beat Borer, born 6. 6. 1986. The laboratory prints the order forms with the company number and sends the necessary number of urine cups and order forms to the companies. In the company, order forms and urine cups are labelled with the labels supplied by the AMV and given to the employees. The samples, including the order form, are sent from the company to the laboratory.      </li>    </ul>                </div></div>"
* extension[0].extension.url = "enterer"
* extension[=].extension.valueReference = Reference(PauloPorcelliniSuva)
* extension[=].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-dataenterer"
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-receiver"
* extension[=].valueReference = Reference(EvaErlenmeyerLaborPipette)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(ArminAhrensArztpraxis)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(WoodyWorkdocSpeiserRails)

* status = #final
* type = $sct#721965002 "Laboratory order (record artifact)"
* category = $sct#721963009 "Order (record artifact)"
* subject = Reference(Patient/BeatBorer)
* date = "2019-03-31T11:46:09+02:00"
* author = Reference(PauloPorcelliniSuva)
* title = "Referral 5-biol-monit"

// * section.title = "Order-Referral-Form 5-biol-monit"
// * section.code = $loinc#93037-0 "Portable medical order form"
// * section.text.status = #generated
// * section.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n        Order-Referral-Form 5-biol-monit\n      </div>"
// * section.entry[0] = Reference(Questionnaire/5-biol-monit)
// * section.entry[+] = Reference(QuestionnaireResponse/5-biol-monit)
// * section.entry[+] = Reference(ServiceRequest/5-biol-monit)

* section[orderReferral].title = "Order-Referral-Form 5-biol-monit"
* section[orderReferral].code = $loinc#93037-0 "Portable medical order form"
* section[orderReferral].text.status = #generated
* section[orderReferral].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n Order-Referral-Form 5-biol-monit\n </div>"
* section[orderReferral].entry[Questionnaire] = Reference(5-biol-monit-Questionnaire)
* section[orderReferral].entry[QuestionnaireResponse] = Reference(5-biol-monit-QuestionnaireResponse)
* section[orderReferral].entry[ServiceRequest] = Reference(5-biol-monit-ServiceRequest)

