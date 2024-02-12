Instance: 5-biol-monit-CompositionWithSR
InstanceOf: ChLabOrderCompositionWithSR
Title: "Composition 5-biol with ServiceRequest"
Description: "Composition: Storyboard for Toxicological Monitoring"
Usage: #inline
* id = "5-biol-monit-composition-with-sr"
* meta.versionId = "1"
* meta.lastUpdated = "2021-02-18T17:04:38.520+00:00"
* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Case study 5</div>     <div><h3>Collective order “SUVA biological monitoring”    </h3>      <p>Companies that work with substances hazardous to health and in which employees are exposed to special risks are subject to occupational health screening by SUVA. Biological monitoring is one of the control options. This assesses the exposure of workers to chemical agents by determining the agents or metabolites in biological material (e.g. urine). The Occupational Medical Prevention (AMV) of SUVA sends the laboratory a monthly list with the following information per company (collective order): </p>    <ul>      <li>Establishment (name, address, establishment number).      </li>      <li>Number of employees for biological monitoring      </li>      <li>Examinations to be carried out (e.g. arsenic, lead, mercury, mandelic acid). The companies receive a list from the AMV including labels with the affected employees. Here we take the document of an employee Beat Borer, born 6. 6. 1986. The laboratory prints the order forms with the company number and sends the necessary number of urine cups and order forms to the companies. In the company, order forms and urine cups are labelled with the labels supplied by the AMV and given to the employees. The samples, including the order form, are sent from the company to the laboratory.      </li>    </ul>            <a href='https://www.suva.ch/de-CH/material/Factsheets/biologisches-monitoring-und-biologische-arbeitsstofftoleranzwerte'>Biological monitoring SUVA</a>              </div></div>"

// ---- Sender and Receiver ----
* extension[0].extension.url = "enterer"
* extension[=].extension.valueReference = Reference(PauloPorcelliniSuva)
* extension[=].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-dataenterer"
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-receiver"
* extension[=].valueReference = Reference(EvaErlenmeyerLaborPipette)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(ArminAhrensArztpraxis)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(WoodyWorkdocSpeiserRails)

// Auftrag: subject(Ref), author(Ref), Q(Ref), QR(Ref), SR(Ref)
* status = #final
* type = $sct#721965002 "Laboratory order (record artifact)"
* category = $sct#721963009 "Order (record artifact)"
* subject = Reference(Patient/BeatBorer)
* date = "2019-03-31T11:46:09+02:00"
* author = Reference(PauloPorcelliniSuva)
* title = "Laboratory order 5-biol-monit"

* section[orderReferral].title = "Laboratory Order with Service Request 5-biol-monit"
* section[orderReferral].text.status = #generated
* section[orderReferral].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n Laboratory Order with Service Request 5-biol-monit\n </div>"
* section[orderReferral].entry[ServiceRequest] = Reference(5-biol-monit-ServiceRequest)

