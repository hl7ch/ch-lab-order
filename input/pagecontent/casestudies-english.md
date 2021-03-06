### Case study 1: Suspicion of deep vein thrombosis

A patient, Hans Guggindieluft, presents to Dr. med. Marc Mustermann at the Olten group practice on 09.03.2016. He verbally identifies himself via his master data as Hans Guggindieluft, 01.01.1981. He reports unclear leg pain in the left lower leg as well as simultaneously occurring respiratory pain and cough. The doctor carries out the anamnesis and physical examination and prescribes the following laboratory parameters:

* Blood cell count incl. differentiation
* CRP
* D-dimer

The doctor carries out the blood count and the CRP determination himself by means of point of care diagnostics, the D-dimer diagnostics is prescribed as quantitative diagnostics in an external sending laboratory. To obtain the sample, a blood sample is taken lying down (1 EDTA tube, 2 citrate tubes of 5 ml). The order is transmitted to the external laboratory and the sample is sent to the external dispatch laboratory by courier ordered by telephone. The results of the internal point of care diagnostics (blood count and CRP) are entered in the patient's laboratory sheet in the doctor's office software (manually or via locally installed electronic interfaces). A prescription is therefore issued by the doctor to the patient for self-administration of an anti-thrombotic agent.
The results of the sending-in laboratory arrive electronically at the GP's on the same evening and are also entered in the patient's laboratory sheet. By using the present exchange format, this process can be fully automated. After a telephone enquiry by the doctor at the sending laboratory due to a borderline D-dimer result, the information is given that a deep vein thrombosis cannot be ruled out in this situation by means of D-dimer and the patient is therefore called back the next day for a sonography of the legs.

Matching FHIR document that meets this specification:
[1-tvt.xml](https://github.com/hl7ch/ch-lab-order/tree/master/input/examples/bundle/1-tvt.xml)

As it is probably a primary leg vein thrombosis, Dr Eva Erlenmeier from the Pipette laboratory sends feedback to Dr Mustermann with the recommendation to carry out a thrombophilia screening, which includes the following analyses:
Quick, aPTT, fibrinogen, antithrombin (funct.), thrombin time I 2.5 NIH/ml, APC resistance, D-dimers, protein C, (aPTT method), protein S antigen.
The analyses can be carried out directly from the samples of the citrate tubes sent along.

### Case study 2: Suspicion of whooping cough

A mother visits the family doctor Peter Presto of the Olten group practice with her 6-year-old son Emil Kummer, born 5 May 2014, because the child has been coughing increasingly for a fortnight, with cramping cough attacks, and has a fever. The doctor's receptionist measures the fever, takes a fingertip blood sample from the son, determines the CRP and prepares a blood smear. The doctor suspects a viral infection, but wants to rule out whooping cough, although the child has been vaccinated against it. As he is under time pressure due to an emergency, he does not want to do the necessary throat swab himself, but asks the mother to accompany the child to the nearby laboratory to have the swab done in peace.
He prepares a laboratory order to carry out a pertussis PCR on the child's throat swab and gives the order to the mother. The mother herself is not sure whether she herself has been vaccinated against pertussis. Consequently, the family doctor Peter Presto gives her the pertussis vaccination right away and recommends that the same be done for the child's father and grandparents. In the meantime, the MPA has looked at the son's blood smear under the microscope and finds a lot of reactive lymphocytes, which seem suspicious to her. She is unsure and asks the doctor, who gives the order to give the child's blood smears to the mother and also to have them examined more closely in the laboratory.
The mother arrives at the laboratory with her son, where the doctor's order is first to establish the son's identity. Then a pharyngeal swab and a right cubital venepuncture are taken from the child in the laboratory's blood collection room and passed on to the laboratory together with the blood smears and the doctor's examination order.

 Matching FHIR document that meets this specification:
[2-pertussis.xml](https://github.com/hl7ch/ch-lab-order/tree/master/input/examples/bundle/2-pertussis.xml)

### Case study 3: Annual gynaecological check-up

The doctor's assistent of the gynaecology department in the Olten group practice, Dr Peter Pap, prepares the next day's consultations. As the practice only has a minimal laboratory of its own, certain patients are sent to the nearby Pipette laboratory outpatient clinic before the appointment, including the young patient Ms Marina Rubella, born 8. 8. 1992. In her practice software, the MPA prescribes the standard analyses agreed with the laboratory for the gynaecological 3-year check-up for patient Rubella. This also includes the blood sample for the serotonary for any follow-up prescriptions.
The laboratory transmits the results to the practice no later than 90 minutes after the blood sample has been taken. Dr Pap prescribes the following orders during the consultation:

* Gynaecological cervical cytology: Pap smear - if indicated, detection and typing of HPV (human papilloma virus) should also be performed.
 Collection material according to the laboratory's instructions.
 The cytological examination is carried out in the Pipette laboratory. The Pipette laboratory does not perform the typing itself.
* Partial urine status (Combur9 test): carried out by the MPA in the practice: the following parameters are examined: pH, leucocytes, erythrocytes, nitrite, protein, glucose, ketones, urobilinogen, bilirubin (semi-quantitative examinations, results are probably entered manually into the practice laboratory system).
* Urine bacteriology: collection material according to the laboratory's instructions.
General bact, incl. fungi to the laboratory pipette
Transmission of the order is triggered by the MPA (collection time)
* Supplementary order "Screening before pregnancy": All tests can be carried out from the materials (serum, EDTA blood) taken in advance in the outpatient clinic (hepatitis-Bc antibodies, HIV 1+2 (Ak+p24), rubella IgG, lues/syphilis screening test)
* Mammography: Order for the Dr. Curie X-ray Institute.

Matching FHIR document that meets this specification:
[3-gyn.xml](https://github.com/hl7ch/ch-lab-order/tree/master/input/examples/bundle/3-gyn.xml)

### Case study 4: Suspected sepsis

The patient Klebsiella Keller, born 12. 12. 1975, has been in the Cantonal Hospital for some time. Last night her general condition deteriorated massively. As there is a suspicion of sepsis, the senior physician in charge, Dr Hans Hauser, orders blood to be taken from her in the morning for a blood culture. 30 minutes later, another aerobic and an anaerobic blood culture is taken, as well as a urine sample.
All five samples are further processed in the external laboratory Pipette. There, germs are detected in all materials and then identified by mass spectrometry. The pathogens "Klebsiella pneumoniae" and "Escherichia coli" were detected in the four blood culture bottles, and the bacterium "Streptococcus mitis" was also detected in one aerobic bottle. The germ identified in the urine sample is normally not pathogenic.
An antibiogram is made of all three pathogens detected in the blood. This shows that the two active substances "amoxicillin+clavulanic acid" and "ceftriaxone" are effective against all three germs. The microbiologist regularly informs Dr Hans Hauser about the various partial results.

FHIR document corresponding to this specification:
[4-sepsis.xml](https://github.com/hl7ch/ch-lab-order/tree/master/input/examples/bundle/4-sepsis.xml)

### Case study 5: Collective order "SUVA biological monitoring"

Companies that work with substances hazardous to health and in which employees are exposed to special risks are subject to occupational health screening by SUVA. Biological monitoring is one of the control options. This assesses the exposure of workers to chemical agents by determining the agents or metabolites in biological material (e.g. urine).
The Occupational Medical Prevention (AMV) of SUVA sends the laboratory a monthly list with the following information per company (collective order):

* Establishment (name, address, establishment number).
* Number of employees for biological monitoring
* Examinations to be carried out (e.g. arsenic, lead, mercury, mandelic acid).
The companies receive a list from the AMV including labels with the affected employees. Here we take the document of an employee Beat Borer, born 6. 6. 1986. The laboratory prints the order forms with the company number and sends the necessary number of urine cups and order forms to the companies. In the company, order forms and urine cups are labelled with the labels supplied by the AMV and given to the employees. The samples, including the order form, are sent from the company to the laboratory.

Biological monitoring SUVA]<https://www.suva.ch/de-CH/material/Factsheets/biologisches-monitoring-und-biologische-arbeitsstofftoleranzwerte>

Matching FHIR document that corresponds to this specification:
[5-biol-monit.xml](https://github.com/hl7ch/ch-lab-order/tree/master/input/examples/bundle/5-biol-monit.xml)
