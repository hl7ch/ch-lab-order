Instance: 5-biol-monit-CompositionWithSR
InstanceOf: ChLabOrderCompositionWithSR
Usage: #inline
* id = "5-biol-monit-composition-with-sr"

// ---- Sender and Receiver ----
* extension[0].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-receiver"
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
* date = "2025-03-05T11:46:09+02:00"
* author = Reference(PauloPorcelliniSuva)
* title = "Laboratory order 5-biol-monit"

* section[orderReferral].title = "Laboratory Order with Service Request 5-biol-monit"
* section[orderReferral].entry[ServiceRequest][+] = Reference(5-biol-monit-ServiceRequest)
* section[orderReferral].entry[ServiceRequest][+] = Reference(5-biol-monit-ServiceRequestToxPanelBlood)
* section[orderReferral].entry[ServiceRequest][+] = Reference(5-biol-monit-ServiceRequestHeavyMetalsUrine)

/*
* section[orderReferral].entry[ServiceRequest][+] = Reference(5-biol-monit-ServiceRequestHbHt)
* section[orderReferral].entry[ServiceRequest][+] = Reference(5-biol-monit-ServiceRequestHbElectro)
* section[orderReferral].entry[ServiceRequest][+] = Reference(5-biol-monit-ServiceRequestCBC)
* section[orderReferral].entry[ServiceRequest][+] = Reference(5-biol-monit-ServiceRequestArsenic)
*/
