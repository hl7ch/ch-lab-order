Instance: 0-best-practice-Composition
InstanceOf: ChLabOrderCompositionWithSR
Usage: #inline
* id = "0-best-practice"
* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div><h3>Control of Anticoagulation Effect</h3>      <p>Mrs Birgit Blum had an unfortunate fall while skiing and sustained a open tibial plateau fracture. She was transferred to the Kantonsspital, a centre hospital, by helicopter and is waiting there for her operation. The patient is administered Liquemin 5000 E s.c. daily to prevent thromboembolic events, and the effect. To monitor the effect of this treatment, regular blood tests are carried out to determine anti-Xa activity. A special sample vessel with citrate additive is used for this purpose. The sample must be centrifuged and cooled within one hour.</p>  </div></div>"

// ---- Sender and Receiver ----
* extension[0].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-urgentnoficationcontactforthisdocument"
* extension[=].valueReference = Reference(EvaErlenmeyerLaborPipette)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-urgentnoficationcontactfortheresponsetothisdocument"
* extension[=].valueReference = Reference(MarcMustermannGruppenpraxis)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-receiver"
* extension[=].valueReference = Reference(EvaErlenmeyerLaborPipette)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(MarcMustermannGruppenpraxis) 
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(Patient/BirgitBlum)

// Auftrag: subject(Ref), author(Ref), Q(Ref), QR(Ref), SR(Ref)
* status = #final
* category = $sct#721963009 "Order (record artifact)"
* type = $sct#721965002 "Laboratory order (record artifact)"
* subject = Reference(Patient/BirgitBlum)
* date = "2025-03-05T11:46:09+02:00"
* author = Reference(MarcMustermannGruppenpraxis)
* title = "Laboratory order 0-best-practice"

* section[orderReferral].title = "Laboratory Order by Service Request 0-best-practice"
* section[orderReferral].entry[ServiceRequest][+] = Reference(0-best-practice-ServiceRequest-0)
* section[orderReferral].entry[ServiceRequest][+] = Reference(0-best-practice-ServiceRequest-1)
* section[orderReferral].entry[ServiceRequest][+] = Reference(0-best-practice-ServiceRequest-2)
* section[orderReferral].entry[ServiceRequest][+] = Reference(0-best-practice-ServiceRequest-3)
* section[orderReferral].entry[ServiceRequest][+] = Reference(0-best-practice-ServiceRequest-3-Hb)
* section[orderReferral].entry[ServiceRequest][+] = Reference(0-best-practice-ServiceRequest-3-Ht)



