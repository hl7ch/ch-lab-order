Instance: 0-best-practice-Composition
InstanceOf: ChLabOrderComposition
Title: "Composition 0-best-practice"
Description: "Composition: Storyboard for suspected deep Vein Thrombosis"
Usage: #example
* id = "0-best-practice"
* meta.versionId = "1"
* meta.lastUpdated = "2022-10-20T17:04:38.520+00:00"
* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Laboratory Order</div><div>      <h3>Best practice example: Control of Anticoagulation effect</h3>      <p>A patient, Birgit Blum,        </p>         <p>As she gets daily injections or Heparin, the effect must me controlled. Dr Eva Erlenmeier from the Pipette laboratory sends feedback to etc.    </p>  </div></div>"

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
* extension[=].valueReference = Reference(MarcMustermannGruppenpraxis) 
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(Patient/BirgitBlum)

// Auftrag: subject(Ref), author(Ref), Q(Ref), QR(Ref), SR(Ref)
* status = #final
* category = $sct#721963009 "Order (record artifact)"
* type = $sct#721965002 "Laboratory order (record artifact)"
* subject = Reference(Patient/BirgitBlum)
* date = "2019-03-31T11:46:09+02:00"
* author = Reference(MarcMustermannGruppenpraxis)
* title = "Laboratory order 0-best-practice"

* section[orderReferral].title = "Laboratory Order by Service Request 0-best-practice"
* section[orderReferral].text.status = #generated
* section[orderReferral].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n Laboratory Order by Service Request 0-best-practice\n </div>"
* section[orderReferral].entry[ServiceRequest][+] = Reference(0-best-practice-ServiceRequest-0)
* section[orderReferral].entry[ServiceRequest][+] = Reference(0-best-practice-ServiceRequest-1)
* section[orderReferral].entry[ServiceRequest][+] = Reference(0-best-practice-ServiceRequest-2)
* section[orderReferral].entry[ServiceRequest][+] = Reference(0-best-practice-ServiceRequest-3)


