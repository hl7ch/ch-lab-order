Instance: 4-sepsis-CompositionWithSR
InstanceOf: ChLabOrderCompositionWithSR
Title: "CH LAB-Composition 4-sepsis with ServiceRequest"
Description: "Composition: Storyboard for Sepsis Investigation"
Usage: #example
* id = "4-sepsis-with-sr"
* meta.versionId = "1"
* meta.lastUpdated = "2021-02-18T17:04:38.520+00:00"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Laboratory Order</div><div><h3>Case study 4: Suspected sepsis</h3>      <p>The patient Sara Speckmann, born 12. 12. 1975, has been in the Cantonal Hospital for some time. Last night her general condition deteriorated massively. As there is a suspicion of sepsis, the senior physician in charge, Dr Hans Hauser, orders Blood to be taken from her in the morning for a Blood culture. 30 minutes later, another aerobic and an anaerobic Blood culture is taken, as well as a urine sample. All five samples are further processed in the external laboratory Pipette. There, germs are detected in all materials and then identified by mass spectrometry. The pathogens “Klebsiella pneumoniae” and “Escherichia coli” were detected in the four Blood culture bottles, and the bacterium “Streptococcus mitis” was also detected in one aerobic bottle. The germ identified in the urine sample is normally not pathogenic. An antibiogram is made of all three pathogens detected in the Blood. This shows that the two active substances “amoxicillin+clavulanic acid” and “ceftriaxone” are effective against all three germs. The microbiologist regularly informs Dr Hans Hauser about the various partial results.       </p>         </div></div>"

// ---- Sender and Receiver ----
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
* extension[=].valueReference = Reference(MarcMustermannGruppenpraxis)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(Patient/SaraSpeckmann)

// Auftrag: subject(Ref), author(Ref), Q(Ref), QR(Ref), SR(Ref)
* status = #final
* type = $sct#721965002 "Laboratory order (record artifact)"
* category = $sct#721963009 "Order (record artifact)"
* subject = Reference(Patient/SaraSpeckmann)
* date = "2025-03-05T11:46:09+02:00"
* author = Reference(HansHauserKantonsspital)
* title = "Laboratory Order 4-sepsis"

* section[orderReferral].title = "Laboratory Order with Service Request 4-sepsis"
* section[orderReferral].text.status = #generated
* section[orderReferral].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n Laboratory Order with Service Request 4-sepsis\n </div>"
* section[orderReferral].entry[ServiceRequest][+] = Reference(4-sepsis-ServiceRequest)
* section[orderReferral].entry[ServiceRequest][+] = Reference(4-sepsis-ServiceRequestHbHt)
* section[orderReferral].entry[ServiceRequest][+] = Reference(4-sepsis-ServiceRequestCBCDiff)
* section[orderReferral].entry[ServiceRequest][+] = Reference(4-sepsis-ServiceRequestCRP)

* section[orderReferral].entry[ServiceRequest][+] = Reference(4-sepsis-ServiceRequestGrowth)
