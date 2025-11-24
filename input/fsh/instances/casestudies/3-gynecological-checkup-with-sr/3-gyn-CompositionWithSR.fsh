Instance: 3-gyn-CompositionWithSR
InstanceOf: ChLabOrderCompositionWithSR
Usage: #inline
* id = "3-gyn-with-sr"

// ---- Sender and Receiver -----
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
* title = "Laboratory Order 3-gyn"

* section[orderReferral].title = "Laboratory Order with Service Request 3-gyn"
* section[orderReferral].entry[ServiceRequest][+] = Reference(3-gyn-ServiceRequest-SmearTest)
* section[orderReferral].entry[ServiceRequest][+] = Reference(3-gyn-ServiceRequest-HPV)
* section[orderReferral].entry[ServiceRequest][+] = Reference(3-gyn-ServiceRequest-Urine-Panel)
* section[orderReferral].entry[ServiceRequest][+] = Reference(3-gyn-ServiceRequest-Obstetric-Panel)
 