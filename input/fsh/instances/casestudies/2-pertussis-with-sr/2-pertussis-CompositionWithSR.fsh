Instance: 2-pertussis-CompositionWithSR
InstanceOf: ChLabOrderCompositionWithSR
Usage: #inline
* id = "2-pertussis-with-sr"

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
* section[orderReferral].entry[ServiceRequest][+] = Reference(2-pertussis-ServiceRequest)
* section[orderReferral].entry[ServiceRequest][+] = Reference(2-pertussis-ServiceRequestCBC)
* section[orderReferral].entry[ServiceRequest][+] = Reference(2-pertussis-ServiceRequestCRP)
* section[orderReferral].entry[ServiceRequest][+] = Reference(2-pertussis-ServiceRequestAddTest)