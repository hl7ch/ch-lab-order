Instance: 6-histopath-CompositionWithSR
InstanceOf: ChLabOrderCompositionWithSR
Usage: #inline
* id = "6-histopath-composition-with-sr"

// ---- Sender and Receiver ----
* extension[0].extension.url = "enterer"
* extension[=].extension.valueReference = Reference(ArminAhrensArztpraxis)
* extension[=].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-dataenterer"
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-urgentnoficationcontactforthisdocument"
* extension[=].valueReference = Reference(EvaErlenmeyerLaborPipette)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-urgentnoficationcontactfortheresponsetothisdocument"
* extension[=].valueReference = Reference(ArminAhrensArztpraxis)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-receiver"
* extension[=].valueReference = Reference(EvaErlenmeyerLaborPipette)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(PeterPrestoGruppenpraxis)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(Patient/SimoneStuder)

// Auftrag: subject(Ref), author(Ref), Q(Ref), QR(Ref), SR(Ref)
* status = #final
* title = "Histopathology order 6-histopath"
* category = $sct#721963009 "Order (record artifact)"
* type = $sct#721966001 "Pathology order (record artifact)"
* subject = Reference(Patient/SimoneStuder)
* date = "2025-03-05T11:46:09+02:00"
* author = Reference(ArminAhrensArztpraxis)

* section[orderReferral].title = "Laboratory Order with ServiceRequest 6-histopath"
* section[orderReferral].entry[ServiceRequest] = Reference(6-histopath-ServiceRequest)
