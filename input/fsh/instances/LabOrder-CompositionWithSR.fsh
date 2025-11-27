Instance: LabOrderCompositionWithSR
InstanceOf: ChLabOrderCompositionWithSR
Usage: #inline
* id = "ch-lab-order-composition-with-sr"
* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Laboratory Order with ServiceRequest</div></div>"

* extension[0].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-urgentnoficationcontactforthisdocument"
* extension[=].valueReference = Reference(EvaErlenmeyerLaborPipette)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-urgentnoficationcontactfortheresponsetothisdocument"
* extension[=].valueReference = Reference(MarcMustermannGruppenpraxis)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-receiver"
* extension[=].valueReference = Reference(EvaErlenmeyerLaborPipette)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(PeterPrestoGruppenpraxis)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(Patient/HansGuggindieluft)

* status = #final
* type = $sct#721965002 "Laboratory order (record artifact)"
* category = $sct#721963009 "Order (record artifact)"
* subject = Reference(Patient/HansGuggindieluft)
* date = "2025-03-05T11:46:09+02:00"
* author = Reference(MarcMustermannGruppenpraxis)
* title = "Laborauftrag"
* section[orderReferral].title = "Auftrag für Laboruntersuchung"
// * section[orderReferral].code = $loinc#93037-0 "Portable medical order form"
* section[orderReferral].entry[ServiceRequest] = Reference(ServiceRequestPotassiumSerum)
