Instance: 2-pertussis-CompositionWithSR
InstanceOf: ChLabOrderCompositionWithSR
Title: "CH LAB-Composition 2-pertussis with Service Request"
Description: "Composition: Storyboard for Pertussis Investigation"
Usage: #example
* id = "2-pertussis-with-sr"
* meta.versionId = "1"
* meta.lastUpdated = "2021-02-18T17:04:38.520+00:00"
* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Case study 2</div><div><h3>Suspicion of whooping cough</h3>      <p>A mother visits the family doctor Peter Presto of the Olten group practice with her 6-year-old son Emil Kummer, born 5 May 2014, because the child has been coughing increasingly for a fortnight, with cramping cough attacks, and has a fever. The doctor`s receptionist measures the fever, takes a fingertip Blood sample from the son, determines the CRP and prepares a Blood smear. The doctor suspects a viral infection, but wants to rule out whooping cough, although the child has been vaccinated against it. As he is under time pressure due to an emergency, he does not want to do the necessary throat swab himself, but asks the mother to accompany the child to the nearby laboratory to have the swab done in peace. He prepares a laboratory order to carry out a pertussis PCR on the child`s throat swab and gives the order to the mother. The mother herself is not sure whether she herself has been vaccinated against pertussis. Consequently, the family doctor Peter Presto gives her the pertussis vaccination right away and recommends that the same be done for the child`s father and grandparents. In the meantime, the MPA has looked at the son`s Blood smear under the microscope and finds a lot of reactive lymphocytes, which seem suspicious to her. She is unsure and asks the doctor, who gives the order to give the child`s Blood smears to the mother and also to have them examined more closely in the laboratory. The mother arrives at the laboratory with her son, where the doctor`s order is first to establish the son`s identity. Then a pharyngeal swab and a right cubital venepuncture are taken from the child in the laboratory`s Blood collection room and passed on to the laboratory together with the Blood smears and the doctor`s examination order.       </p>               </div></div>"

// ---- Sender and Receiver ----
* extension[0].extension.url = "enterer"
* extension[=].extension.valueReference = Reference(PeterPrestoGruppenpraxis)
* extension[=].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-dataenterer"
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-urgentnoficationcontactfortheresponsetothisdocument"
* extension[=].valueReference = Reference(EvaErlenmeyerLaborPipette)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(MarcMustermannGruppenpraxis)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(Patient/EmilKummer)

// Auftrag: subject(Ref), author(Ref), Q(Ref), QR(Ref), SR(Ref)
* status = #final
* type = $sct#721965002 "Laboratory order (record artifact)"
* category = $sct#721963009 "Order (record artifact)"
* subject = Reference(Patient/EmilKummer)
* date = "2020-03-31T11:46:09+02:00"
* author = Reference(PeterPrestoGruppenpraxis)
* title = "Laboratory Order 2-pertussis with Service Request"

* section[orderReferral].title = "Laboratory Order with Service Request 2-pertussis"
// * section[orderReferral].code = $loinc#93037-0 "Portable medical order form"
* section[orderReferral].text.status = #generated
* section[orderReferral].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n Laboratory Order with Service Request 2-pertussis\n </div>"
// * section[orderReferral].entry[Questionnaire] = Reference(2-pertussis-Questionnaire)
// * section[orderReferral].entry[QuestionnaireResponse] = Reference(2-pertussis-QuestionnaireResponse)
* section[orderReferral].entry[ServiceRequest] = Reference(2-pertussis-ServiceRequest)