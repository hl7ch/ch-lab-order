Instance: 4-sepsis-Composition
InstanceOf: ChOrfComposition
Title: "4-sepsis"
Description: "Composition: Storyboard for Sepsis Investigation"
Usage: #example
* id = "4-sepsis"
* meta.versionId = "1"
* meta.lastUpdated = "2021-02-18T17:04:38.520+00:00"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Laboratory Order</div><div><h3>Case study 4: Suspected sepsis</h3>      <p>The patient Klebsiella Keller, born 12. 12. 1975, has been in the Cantonal Hospital for some time. Last night her general condition deteriorated massively. As there is a suspicion of sepsis, the senior physician in charge, Dr Hans Hauser, orders Blood to be taken from her in the morning for a Blood culture. 30 minutes later, another aerobic and an anaerobic Blood culture is taken, as well as a urine sample. All five samples are further processed in the external laboratory Pipette. There, germs are detected in all materials and then identified by mass spectrometry. The pathogens “Klebsiella pneumoniae” and “Escherichia coli” were detected in the four Blood culture bottles, and the bacterium “Streptococcus mitis” was also detected in one aerobic bottle. The germ identified in the urine sample is normally not pathogenic. An antibiogram is made of all three pathogens detected in the Blood. This shows that the two active substances “amoxicillin+clavulanic acid” and “ceftriaxone” are effective against all three germs. The microbiologist regularly informs Dr Hans Hauser about the various partial results.       </p>         <p>Matching FHIR questionnaire that meets this specification:          <a href='https://fhir.ch/ig/ch-lab-order/Questionnaire-4-sepsis.xml.html'>4-sepsis.xml</a>          <a href='https://fhir.ch/ig/ch-lab-order/Questionnaire-4-sepsis.json.html'>4-sepsis.json</a>      </p>        </div></div>"
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
* extension[=].valueReference = Reference(MarcMustermannArztpraxis)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(Patient/KlebsiellaKeller)
* status = #final
* type = $sct#721965002 "Laboratory order (record artifact)"
* category = $sct#721963009 "Order (record artifact)"
* subject = Reference(Patient/KlebsiellaKeller)
* date = "2019-03-31T11:46:09+02:00"
* author = Reference(HansHauserKantonsspital)
* title = "Referral 4-sepsis"

// * section.title = "Order-Referral-Form 4-sepsis"
// * section.code = $lnc#93037-0 "Portable medical order form"
// * section.text.status = #generated
// * section.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n        Order-Referral-Form 4-sepsis\n      </div>"
// * section.entry[0] = Reference(Questionnaire/4-sepsis)
// * section.entry[+] = Reference(QuestionnaireResponse/4-sepsis)
// * section.entry[+] = Reference(ServiceRequest/4-sepsis)

* section[orderReferral].title = "Order-Referral-Form 4-sepsis"
* section[orderReferral].code = $lnc#93037-0 "Portable medical order form"
* section[orderReferral].text.status = #generated
* section[orderReferral].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n Order-Referral-Form 4-sepsis\n </div>"
* section[orderReferral].entry[Questionnaire] = Reference(4-sepsis-Questionnaire)
* section[orderReferral].entry[QuestionnaireResponse] = Reference(4-sepsis-QuestionnaireResponse)
* section[orderReferral].entry[ServiceRequest] = Reference(4-sepsis-ServiceRequest)
