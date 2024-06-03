Instance: 1-tvt-CompositionWithSR_andForm
InstanceOf: ChOrfComposition
Title: "CH LAB-Composition 1-tvt with ServiceRequest and Form"
Description: "Composition: Storyboard for suspected deep Vein Thrombosis"
Usage: #example
* id = "1-tvt-composition-with-sr-and-form"
* meta.versionId = "1"
* meta.lastUpdated = "2022-10-20T17:04:38.520+00:00"
* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Case study 1</div><div>      <h3>Suspicion of deep vein thrombosis</h3>      <p>A patient, Tobias Timmermann, presents to Dr. med. Marc Mustermann at the Olten group practice on 09.03.2016. He verbally identifies himself via his master data as   Tobias Timmermann, 01.01.1981. He reports unclear leg pain in the left lower leg as well as simultaneously occurring respiratory pain and cough. The doctor carries out the anamnesis and physical examination and prescribes the following laboratory parameters:       </p>        <ul>            <li>Blood cell count incl. differentiation</li>            <li>CRP</li>            <li>D-dimer</li>        </ul>      <p>        The doctor carries out the Blood count and the CRP determination himself by means of point of care diagnostics, the D-dimer diagnostics is prescribed as quantitative diagnostics in an external sending laboratory. To obtain the sample, a Blood sample is taken lying down (1 EDTA tube, 2 citrate tubes of 5 ml). The order is transmitted to the external laboratory and the sample is sent to the external dispatch laboratory by courier ordered by telephone. The results of the internal point of care diagnostics (Blood count and CRP) are entered in the patient`s laboratory sheet in the doctor`s office software (manually or via locally installed electronic interfaces). A prescription is therefore issued by the doctor to the patient for self-administration of an anti-thrombotic agent. The results of the sending-in laboratory arrive electronically at the GP`s on the same evening and are also entered in the patient`s laboratory sheet. By using the present exchange format, this process can be fully automated. After a telephone enquiry by the doctor at the sending laboratory due to a borderline D-dimer result, the information is given that a deep vein thrombosis cannot be ruled out in this situation by means of D-dimer and the patient is therefore called back the next day for a sonography of the legs.      </p>        <p>As it is probably a primary leg vein thrombosis, Dr Eva Erlenmeier from the Pipette laboratory sends feedback to Dr Mustermann with the recommendation to carry out a    thrombophilia screening, which includes the following analyses: Quick, aPTT, fibrinogen, antithrombin (funct.), thrombin time I 2.5 NIH/ml, APC resistance, D-dimers, protein C, (aPTT method), protein S antigen. The analyses can be carried out directly from the samples of the citrate tubes sent along.      </p>  </div></div>"

// ---- Sender and Receiver ----
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
* extension[=].valueReference = Reference(Patient/TobiasTimmermann)

// Auftrag: subject(Ref), author(Ref), Q(Ref), QR(Ref), SR(Ref)
* status = #final
* category = $sct#721963009 "Order (record artifact)"
* type = $sct#721965002 "Laboratory order (record artifact)"
* subject = Reference(Patient/TobiasTimmermann)
* date = "2019-03-31T11:46:09+02:00"
* author = Reference(MarcMustermannGruppenpraxis)
* title = "Laboratory Order by Form 1-tvt"

* section[orderReferral].title = "Order-Referral-Form 1-tvt"
* section[orderReferral].code = $loinc#93037-0 "Portable medical order form"
* section[orderReferral].text.status = #generated
* section[orderReferral].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n Order-Referral-Form 1-tvt\n </div>"
* section[orderReferral].entry[Questionnaire] = Reference(1-tvt-Questionnaire)
* section[orderReferral].entry[QuestionnaireResponse] = Reference(1-tvt-QuestionnaireResponse)
* section[orderReferral].entry[ServiceRequest] = Reference(1-tvt-ServiceRequest-0)

