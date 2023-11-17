Instance: 6-histopath-Composition
InstanceOf: ChOrfComposition
Title: "6-histopath"
Description: "Composition: Storyboard for suspected Melanoma of skin"
Usage: #example
* id = "6-histopath"
* meta.versionId = "1"
* meta.lastUpdated = "2022-10-20T17:04:38.520+00:00"
* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Laboratory Order</div><div><h3>Case study 6: Suspected Melanoma, order for histopathology examination    </h3>      <p>A 45-year-old female patient came for her regular skin check and this lesion was noted: Junctions nevi consisting of seborrheic area top end and atypical network constructed of many seperate dots, structures , etc , suggesting melanocytic involvement. Excision. Attachement of dermatoscopic images // TODO Specimen: 29 x 11 x 5 mm skin ellipse Body Site: Back paralumbar left
     </p>  <p>The skin sample, including the order form and the dermatoscopic image are sent to the laboratory.</p>        <p>Matching FHIR questionnaire that meets this specification:          <a href='https://fhir.ch/ig/ch-lab-order/Questionnaire-6-histopath-mod.xml.html'>6-histopath.xml</a>          <a href='https://fhir.ch/ig/ch-lab-order/Questionnaire-6-histopath-mod.json.html'>6-histopath.json</a>      </p>        </div></div>"

// ---- Sender and Receiver ----
* extension[0].extension.url = "enterer"
* extension[=].extension.valueReference = Reference(MarcMustermannArztpraxis)
* extension[=].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-dataenterer"
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-urgentnoficationcontactforthisdocument"
* extension[=].valueReference = Reference(EvaErlenmeyerLaborPipette)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-urgentnoficationcontactfortheresponsetothisdocument"
* extension[=].valueReference = Reference(MarcMustermannArztpraxis)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-receiver"
* extension[=].valueReference = Reference(EvaErlenmeyerLaborPipette)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(PeterPrestoGruppenpraxis)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(Patient/SimoneStuder)

// Auftrag: subject(Ref), author(Ref), Q(Ref), QR(Ref), SR(Ref)
* status = #final
* title = "Pathologieauftrag"
* category = $sct#721963009 "Order (record artifact)"
* type = $sct#721966001 "Pathology order (record artifact)"
* subject = Reference(Patient/SimoneStuder)
* date = "2019-03-31T11:46:09+02:00"
* author = Reference(MarcMustermannArztpraxis)

* section[orderReferral].title = "Order-Referral-Form 6-histopath"
* section[orderReferral].code = $loinc#93037-0 "Portable medical order form"
* section[orderReferral].text.status = #generated
* section[orderReferral].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n Order-Referral-Form 6-histopath\n </div>"
* section[orderReferral].entry[Questionnaire] = Reference(6-histopath-Questionnaire)
* section[orderReferral].entry[QuestionnaireResponse] = Reference(6-histopath-QuestionnaireResponse)
* section[orderReferral].entry[ServiceRequest] = Reference(6-histopath-ServiceRequest)
