Instance: 3-gyn-CompositionWithSR_andForm
InstanceOf: ChOrfComposition
Title: "Composition 3-gyn with ServiceRequest and Form"
Description: "Composition: Storyboard for Preventive Gynecological Check-up"
Usage: #example
* id = "with3-gyn-composition-with-sr-and-form"
* meta.versionId = "1"
* meta.lastUpdated = "2021-02-18T17:04:38.520+00:00"
* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Case study 3</div><div><h3>Annual gynaecological check-up</h3>      <p>The doctor`s assistent of the gynaecology department in the Olten group practice, Dr Peter Pap, prepares the next day`s consultations. As the practice only has a minimal laboratory of its own, certain patients are sent to the nearby Pipette laboratory outpatient clinic before the appointment, including the young patient Ms Marina Rubella, born 8. 8. 1992. In her practice software, the MPA prescribes the standard analyses agreed with the laboratory for the gynaecological 3-year check-up for patient Rubella. This also includes the Blood sample for the serotonary for any follow-up prescriptions. The laboratory transmits the results to the practice no later than 90 minutes after the Blood sample has been taken. Dr Pap prescribes the following orders during the consultation:       </p>    <ul>      <li>Gynaecological cervical cytology: Pap smear - if indicated, detection and typing of HPV (human papilloma virus) should also be performed. Collection material according to the laboratory`s instructions. The cytological examination is carried out in the Pipette laboratory. The Pipette laboratory does not perform the typing itself.      </li>      <li>Partial urine status (Combur9 test): carried out by the MPA in the practice: the following parameters are examined: pH, leucocytes, erythrocytes, nitrite, protein, glucose, ketones, urobilinogen, bilirubin (semi-quantitative examinations, results are probably entered manually into the practice laboratory system).</li>      <li>Urine bacteriology: collection material according to the laboratory`s instructions. General bact, incl. fungi to the laboratory pipette Transmission of the order is triggered by the MPA (collection time)      </li>      <li>Supplementary order “Screening before pregnancy”: All tests can be carried out from the materials (serum, EDTA Blood) taken in advance in the outpatient clinic (hepatitis-Bc antibodies, HIV 1+2 (Ak+p24), rubella IgG, lues/syphilis screening test)      </li>      <li>Mammography: Order for the Dr. Curie X-ray Institute.      </li>    </ul>             </div></div>"

// ---- Sender and Receiver ----
* extension[0].extension.url = "enterer"
* extension[=].extension.valueReference = Reference(PeterPapGruppenpraxis)
* extension[=].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-dataenterer"
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-receiver"
* extension[=].valueReference = Reference(EvaErlenmeyerLaborPipette)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(MarcMustermannGruppenpraxis)

// Auftrag: subject(Ref), author(Ref), Q(Ref), QR(Ref), SR(Ref)
* status = #final
* type = $sct#721965002 "Laboratory order (record artifact)"
* category = $sct#721963009 "Order (record artifact)"
* subject = Reference(Patient/MarinaRubella)
* date = "2020-03-31T11:46:09+02:00"
* author = Reference(PeterPapGruppenpraxis)
* title = "Laboratory Order by Form 3-gyn"

* section[orderReferral].title = "Order-Referral-Form 3-gyn"
* section[orderReferral].code = $loinc#93037-0 "Portable medical order form"
* section[orderReferral].text.status = #generated
* section[orderReferral].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n Order-Referral-Form 3-gyn\n </div>"
* section[orderReferral].entry[Questionnaire] = Reference(3-gyn-Questionnaire)
* section[orderReferral].entry[QuestionnaireResponse] = Reference(3-gyn-QuestionnaireResponse)
* section[orderReferral].entry[ServiceRequest] = Reference(3-gyn-ServiceRequest)
