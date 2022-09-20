Instance: QuestionnaireLabOrder-form-modular
InstanceOf: ChOrfQuestionnaire
Title: "Questionnaire Lab Order"
Description: "Example for Questionnaire"
Usage: #definition
* id = "QuestionnaireLabOrder-form-modular"

* meta.versionId = "1"
* meta.lastUpdated = "2012-09-01T20:17:53.340+00:00"
* meta.profile[+] = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-smap"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-pop-exp"

* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-root

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/StructureMap/OrfQrToBundle"

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-sourceStructureMap"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/StructureMap/OrfPrepopBundleToQr"

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[=].extension[0].url = "name"
* extension[=].extension[=].valueCoding.system = "http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext"
* extension[=].extension[=].valueCoding.code = #patient
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #Patient

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[=].extension[0].url = "name"
* extension[=].extension[=].valueCoding = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext#user "User"
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #Practitioner
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "The practitioner that is to be used to pre-populate the form"

* url = "http://fhir.ch/ig/ch-lab-order/Questionnaire/QuestionnaireLabOrder-form-modular"
* name = "QuestionnaireLabOrder"
* title = "Questionnaire Lab Order"
// * derivedFrom = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-questionnaire"
* status = #active
* subjectType = #Patient
* date = "2022-09-09"
* publisher = "HL7 Switzerland"

// ############################################################
// ################## General Part from ORF ###################
// ############################################################

// ---------- order (Auftrag) ----------
* item[+].linkId = "order"
* item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-document#Bundle"
* item[=].text = "Auftrag"
* item[=].type = #group
* item[=].required = true

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-order|2.0.0"
* item[=].item.linkId = "order.1"
* item[=].item.text = "Unable to resolve 'order' sub-questionnaire"
* item[=].item.type = #display

// ---------- Receiver: Person/organization who receives the document ----------
* item[+].linkId = "receiver"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:receiver"
* item[=].text = "Empfänger"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-receiver|2.0.0"
* item[=].item.linkId = "receiver.1"
* item[=].item.text = "Unable to resolve 'receiver' sub-questionnaire"
* item[=].item.type = #display

// ----------Initiator: Person/organization who initated this order / application ; e.g. spitex, retirement home etc. ----------
* item[+].linkId = "initiator"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:initiator"
* item[=].text = "Initiant dieser Anmeldung"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-initiator|2.0.0"
* item[=].item.linkId = "initiator.1"
* item[=].item.text = "Unable to resolve 'intitiator' sub-questionnaire"
* item[=].item.type = #display

// ---------- Patient: The principle target of a particular Form Content is one patient ----------
* item[+].linkId = "patient"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.subject"
* item[=].text = "Patient"
* item[=].type = #group
* item[=].required = true
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].extension[0].valueExpression.name = "linkIdPrefix"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "'patient.'"
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].extension[=].valueExpression.name = "address"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "%patient.address"
* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-patient|2.0.0"
* item[=].item.linkId = "patient.1"
* item[=].item.text = "Unable to resolve 'patient' sub-questionnaire"
* item[=].item.type = #display

// ---------- Encounter Class (Ambulant / Satinär / Notfall) ----------
* item[+].linkId = "requestedEncounter"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.extension:requestedEncounterDetails"
* item[=].text = "Patientenaufnahme"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-requestedencounter|2.0.0"
* item[=].item.linkId = "requestedEncounter.1"
* item[=].item.text = "Unable to resolve 'requestedEncounter' sub-questionnaire"
* item[=].item.type = #display


// ---------- Coverage (Kostenträger) ----------
// Design as agreed with eHealth Suisse and Cistec 09.06.2021

* item[+].linkId = "coverage"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.insurance"
* item[=].text = "Kostenträger"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-coverage|2.0.0"
* item[=].item.linkId = "coverage.1"
* item[=].item.text = "Unable to resolve 'coverage' sub-questionnaire"
* item[=].item.type = #display

// ---------- sender (Absender) ----------
* item[+].linkId = "sender"
* item[=].text = "Absender"
* item[=].type = #group
* item[=].required = true

// ---------- Author: The person/organization responsible for Form Content ----------
* item[=].item[+].linkId = "sender.author"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.author"
* item[=].item[=].text = "Verantwortlicher"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-sender|2.0.0"
* item[=].item.linkId = "sender.1"
* item[=].item.text = "Unable to resolve 'sender' sub-questionnaire"
* item[=].item.type = #display

// ---------- Copy Receiver (Copy of this order and all results therefrom) ----------
* item[+].linkId = "receiverCopy"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:copyReceiver"
* item[=].text = "Kopieempfänger (Kopie dieses Auftrags und aller daraus resultierenden Resultate)"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-receivercopy|2.0.0"
* item[=].item.linkId = "receiverCopy.1"
* item[=].item.text = "Unable to resolve 'receiverCopy' sub-questionnaire"
* item[=].item.type = #display

// ------ Antecedent Episode of Care ------------------------------
* item[+].linkId = "antecedentEpisodeOfCare"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:antecedentEpisodeOfCare"
* item[=].text = "Vorgängiger Aufenthalt in Spital / Heim"
* item[=].type = #group

* item[=].item[+].linkId = "antecedentEpisodeOfCare.start"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-episodeofcare#EpisodeOfCare.Period.end"
* item[=].item[=].text = "Von"
* item[=].item[=].type = #dateTime

* item[=].item[+].linkId = "antecedentEpisodeOfCare.end"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-episodeofcare#EpisodeOfCare.Period.end"
* item[=].item[=].text = "Bis"
* item[=].item[=].type = #dateTime

* item[=].item[+].linkId = "antecedentEpisodeOfCare.managingOrganization"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-episodeofcare#EpisodeOfCare.managingOrganization"
* item[=].item[=].text = "Spital /Heim"
* item[=].item[=].type = #group

* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "'antecedentEpisodeOfCare.managingOrganization.'"

* item[=].item[=].item[+].linkId = "antecedentEpisodeOfCare.managingOrganization.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item[=].item[=].extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-address|2.0.0"
* item[=].item[=].item[=].linkId = "antecedentEpisodeOfCare.managingOrganization.1"
* item[=].item[=].item[=].text = "Unable to resolve 'address' sub-questionnaire"
* item[=].item[=].item[=].type = #display

// ------------------ Appointment ------------------------
* item[+].linkId = "appointment"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.extension:locationAndTime"
* item[=].text = "Ort und Zeit der Durchführung der angeforderten Leistung"
* item[=].type = #group
* item[=].repeats = true

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-appointment|2.0.0"
* item[=].item.linkId = "appointment.1"
* item[=].item.text = "Unable to resolve 'appointment' sub-questionnaire"
* item[=].item.type = #display

// --------------- Consent ------------------------------ 
* item[+].linkId = "consent"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:patientConsent"
* item[=].text = "Einverständniserklärung"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-consent|2.0.0"
* item[=].item.linkId = "consent.1"
* item[=].item.text = "Unable to resolve 'consent' sub-questionnaire"
* item[=].item.type = #display

// ------------------ Service Request Notes ------
* item[+].linkId = "note"
* item[=].text = "Bemerkungen"
* item[=].type = #group
* item[=].repeats = true

* item[=].item[+].linkId = "note.text"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.note.text"
* item[=].item[=].text = "Kommentar" 
* item[=].item[=].type = #string

// ############################################################
// ########### Lab Service Part from Catalog ##################
// ############################################################
// ############ We order the one ore more Tests, Test-Panels, as Lab Services, 
// we choose the
// Composition (Catalog Header) for each Test/Panel Order, we choose the Specimen
// Definition 
// ########################################################################

/* ============ Kerninhaltes der Lab-Order Form ==============================
CH LAB-Order verwendet vorgefüllte Formulare aus dem dem Labor Kompendium. Es kommt zu einer Kaskade von Entscheidungen. Hier sind einige Inhalte beispielhaft ausgefüllt:
1. PlanDefinition
  2. Referenz zu Composition (Catalog Header) auswählen
    3. Referenz zu ActivityDefinition auswählen
      4. Referenz zu ObservationDefinition auswählen
      4.a Referenz zu SpecimenDefinition auswählen

*/

//  -------- 1. Wahl Lab Servic (Plan Definition) ----------------
// Als erstes wählt der Author des Laborauftrages den gewünschten        
// Service. Hier als Beispiel: Potassium und Electrolyt Panel

* item[+].linkId = "LabService"
* item[=].definition = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabServiceDefinition"
* item[=].text = "Laboratory Service (PlanDefinition)"
* item[=].type = #group
* item[=].required = true

*  item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-lab-order/Catalog/Plandefinition|1.0"

* item[=].item[0].linkId = "pipette-potassium-serum"
* item[=].item[=].text = "Unable to resolve 'plandefinition' sub-questionnaire"
* item[=].item[=].type = #display

* item[=].item[+].linkId = "pipette-panel-blood-electrolyte"
* item[=].item[=].text = "Unable to resolve 'plandefinition' sub-questionnaire"
* item[=].item[=].type = #display

// further plan definitions


//  
//  /*-----------  2. Wahl Composition, Catalog Header
//  */
//  * item[+].linkId = "reason"
//  * item[=].text = "Klinische Fragestellung"
//  * item[=].type = #group
//  
//  * item[=].item[+].linkId = "reason.question"
//  * item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-servicerequest#ServiceRequest.reasonCode.text"
//  * item[=].item[=].text = "Fragestellung"                
//  * item[=].item[=].type = #string
//  * item[=].item[=].repeats = true
//  
//  
//  /*-------------- 3. Aus der PlanDefinition ergibt sich die ActivityDefinition
//      
//  */
//  * item[+].linkId = "imagingService"
//  * item[=].text = "Bildgebendes Verfahren"
//  * item[=].type = #group
//  
//  * item[=].item[+].linkId = "imagingService.type"
//  * item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-servicerequest#ServiceRequest.code.coding:RdlxModType"
//  * item[=].item[=].text = "Art"                 
//  * item[=].item[=].type = #choice
//  * item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-lab-order/ValueSet/ch-lab-order-modality-type"
//  
//  
//  /*------------ 4. Die Activity Definition lässt die Auswahl der 
//                    ObservationDefinition und der SpecimenDefinition zu
//  */
//  * item[+].linkId = "orderDetail"
//  * item[=].text = "Weitere Angaben zur Bildgebung"
//  * item[=].type = #group
//  
//  * item[=].item[+].linkId = "orderDetail.imagingRegion"
//  * item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-servicerequest#ServiceRequest.orderDetail:imagingRegion"
//  * item[=].item[=].text = "Region"
//  * item[=].item[=].type = #choice
//  * item[=].item[=].repeats = true
//  * item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-lab-order/ValueSet/ch-lab-order-imaging-region"
//  
//  * item[=].item[+].linkId = "orderDetail.imagingFocus"
//  * item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-servicerequest#ServiceRequest.bodySite"
//  * item[=].item[=].text = "Fokus"
//  * item[=].item[=].type = #choice
//  * item[=].item[=].repeats = true
//  * item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-lab-order/ValueSet/ch-lab-order-imaging-focus"
//  
//  * item[=].item[+].linkId = "orderDetail.laterality"
//  * item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-servicerequest#ServiceRequest.orderDetail:laterality"
//  * item[=].item[=].text = "Seitenangabe"
//  * item[=].item[=].type = #choice
//  * item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-lab-order/ValueSet/ch-lab-order-laterality"
//  
//  * item[=].item[+].linkId = "orderDetail.viewType"
//  * item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-servicerequest#ServiceRequest.orderDetail:viewType"
//  * item[=].item[=].text = "Ansicht"
//  * item[=].item[=].type = #choice
//  * item[=].item[=].repeats = true
//  * item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-lab-order/ValueSet/ch-lab-order-view-type"
//  
//  * item[=].item[+].linkId = "orderDetail.maneuverType"
//  * item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-servicerequest#ServiceRequest.orderDetail:maneuverType"
//  * item[=].item[=].text = "Manöver"
//  * item[=].item[=].type = #choice
//  * item[=].item[=].repeats = true
//  * item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-lab-order/ValueSet/ch-lab-order-maneuver-type"
//  
//  * item[=].item[+].linkId = "orderDetail.guidanceForAction"
//  * item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-servicerequest#ServiceRequest.orderDetail:guidanceForAction"
//  * item[=].item[=].text = "Handlungsanleitung"
//  * item[=].item[=].type = #choice
//  * item[=].item[=].enableWhen[+].question = "requestedService.service"
//  * item[=].item[=].enableWhen[=].operator = #=
//  * item[=].item[=].enableWhen[=].answerCoding = ChRadOrderRequestedService#RadIntervention
//  * item[=].item[=].enableWhen[+].question = "requestedService.service"
//  * item[=].item[=].enableWhen[=].operator = #=
//  * item[=].item[=].enableWhen[=].answerCoding = ChRadOrderRequestedService#ImagingRequestWithIntervention
//  * item[=].item[=].enableBehavior = #any
//  * item[=].item[=].repeats = true
//  * item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-lab-order/ValueSet/ch-lab-order-guidance-for-action"
//  
//  
//  /*----------------------------------------------------------------------
//  Gewünschter Radiologe: Noch offen, wie die Auswahlliste gemacht werden soll
//  */
//  * item[+].linkId = "desiredRadiologist"
//  * item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-servicerequest#ServiceRequest.performer"
//  * item[=].text = "Gewünschter Radiologe für die Befundung / für die Intervention"
//  * item[=].type = #group
//  
//  * item[=].item[+].linkId = "desiredRadiologist.familyName"
//  * item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
//  * item[=].item[=].text = "Name"
//  * item[=].item[=].type = #string
//  
//  * item[=].item[+].linkId = "desiredRadiologist.givenName"
//  * item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
//  * item[=].item[=].text = "Vorname"
//  * item[=].item[=].type = #string
//  
//  
//  /*----------------------------------------------------------------------
//  Darstellung der Diagnosen und Befunde
//  */
//  * item[+].linkId = "diagnosisList"
//  * item[=].text = "Diagnosen und Befunde"
//  * item[=].type = #group
//  
//  * item[=].item[+].linkId = "diagnosisList.primaryDiagnosis"  
//  * item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-servicerequest#ServiceRequest.reasonReference"
//  * item[=].item[=].text = "Hauptdiagnose"
//  * item[=].item[=].type = #string
//  * item[=].item[=].repeats = true
//  
//  * item[=].item[+].linkId = "diagnosisList.secondaryDiagnosis"  
//  * item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-servicerequest#ServiceRequest.supportingInfo:diagnosis"
//  * item[=].item[=].text = "Nebendiagnose"
//  * item[=].item[=].type = #string
//  * item[=].item[=].repeats = true
//  
//  * item[=].item[+].linkId = "diagnosisList.bodyHeight"
//  * item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-servicerequest#ServiceRequest.supportingInfo:bodyHeight"
//  * item[=].item[=].text = "Grösse (cm)"   
//  * item[=].item[=].type = #quantity
//  * item[=].item[=].repeats = false
//  
//  * item[=].item[+].linkId = "diagnosisList.bodyWeight"
//  * item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-servicerequest#ServiceRequest.supportingInfo:bodyWeight"
//  * item[=].item[=].text = "Gewicht (kg)"   
//  * item[=].item[=].type = #quantity
//  * item[=].item[=].repeats = false
//  
//  /*----------------------------------------------------------------------
//  Caveats   
//   */
//  * item[+].linkId = "caveat" 
//  * item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-servicerequest#ServiceRequest.supportingInfo:caveats" 
//  * item[=].text = "Caveats"
//  * item[=].type = #group
//  
//  * item[=].item[+].linkId = "caveat.bloodCoagulation"   
//  * item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-caveat-condition#Condition.code"  
//  * item[=].item[=].text = "Beinträchtigte Blutgerinnung"   
//  * item[=].item[=].type = #choice
//  * item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-lab-order/ValueSet/ch-lab-order-caveat-qualifier-value"
//  * item[=].item[=].initial.valueCoding = SCT#373068000
//  * item[=].item[=].required = true
//  
//  * item[=].item[=].item[+].linkId = "caveat.bloodCoagulation.INR" 
//  * item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-caveat-condition#Condition.evidence.detail"
//  * item[=].item[=].item[=].text = "INR"   
//  * item[=].item[=].item[=].type = #group
//  * item[=].item[=].item[=].enableWhen[+].question = "caveat.bloodCoagulation"
//  * item[=].item[=].item[=].enableWhen[=].operator = #=
//  * item[=].item[=].item[=].enableWhen[=].answerCoding = SCT#52101004
//  
//  * item[=].item[=].item[=].item[+].linkId = "caveat.bloodCoagulation.INR.quantity"
//  * item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-INR-observation#Observation.valueQuantity"
//  * item[=].item[=].item[=].item[=].text = "Wert (INR)"   
//  * item[=].item[=].item[=].item[=].type = #quantity
//  
//  * item[=].item[=].item[=].item[+].linkId = "caveat.bloodCoagulation.INR.dateTime"
//  * item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-INR-observation#Observation.effectiveDateTime"
//  * item[=].item[=].item[=].item[=].text = "Zeitpunkt der Bestimmung"   
//  * item[=].item[=].item[=].item[=].type = #dateTime
//  
//  * item[=].item[=].item[+].linkId = "caveat.bloodCoagulation.platelets"    
//  * item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-caveat-condition#Condition.evidence.detail"    
//  * item[=].item[=].item[=].text = "Thrombozyten"   
//  * item[=].item[=].item[=].type = #group
//  
//  * item[=].item[=].item[=].item[+].linkId = "caveat.bloodCoagulation.platelets.quantity"
//  * item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-platelets-observation#Observation.valueQuantity"
//  * item[=].item[=].item[=].item[=].text = "Wert (10^3/µL)"   
//  * item[=].item[=].item[=].item[=].type = #quantity
//  
//  * item[=].item[=].item[=].item[+].linkId = "caveat.bloodCoagulation.platelets.dateTime"
//  * item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-platelets-observation#Observation.effectiveDateTime"
//  * item[=].item[=].item[=].item[=].text = "Zeitpunkt der Bestimmung"   
//  * item[=].item[=].item[=].item[=].type = #dateTime
//  
//  * item[=].item[+].linkId = "caveat.renalInsufficiency"    
//  * item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-caveat-condition#Condition.code"   
//  * item[=].item[=].text = "Niereninsuffizienz"   
//  * item[=].item[=].type = #choice
//  * item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-lab-order/ValueSet/ch-lab-order-caveat-qualifier-value"
//  * item[=].item[=].initial.valueCoding = SCT#373068000
//  * item[=].item[=].required = true
//  
//  * item[=].item[=].item[+].linkId = "caveat.renalInsufficiency.creatinineClearance" 
//  * item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-caveat-condition#Condition.evidence.detail"
//  * item[=].item[=].item[=].text = "Creatinin-Clearance"   
//  * item[=].item[=].item[=].type = #group
//  
//  * item[=].item[=].item[=].item[+].linkId = "caveat.renalInsufficiency.creatinineClearance.quantity"
//  * item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-creatinineclearance-observation#Observation.valueQuantity"
//  * item[=].item[=].item[=].item[=].text = "Wert (mL/min)"   
//  * item[=].item[=].item[=].item[=].type = #quantity
//  
//  * item[=].item[=].item[=].item[+].linkId = "caveat.renalInsufficiency.creatinineClearance.dateTime"
//  * item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-creatinineclearance-observation#Observation.effectiveDateTime"
//  * item[=].item[=].item[=].item[=].text = "Zeitpunkt der Bestimmung"   
//  * item[=].item[=].item[=].item[=].type = #dateTime
//  
//  * item[=].item[=].item[+].linkId = "caveat.renalInsufficiency.creatinine"    
//  * item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-caveat-condition#Condition.evidence.detail"    
//  * item[=].item[=].item[=].text = "Creatinin"   
//  * item[=].item[=].item[=].type = #group
//  
//  * item[=].item[=].item[=].item[+].linkId = "caveat.renalInsufficiency.creatinine.quantity"
//  * item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-creatinine-observation#Observation.valueQuantity"
//  * item[=].item[=].item[=].item[=].text = "Wert (µmol/L)"   
//  * item[=].item[=].item[=].item[=].type = #quantity
//  
//  * item[=].item[=].item[=].item[+].linkId = "caveat.renalInsufficiency.creatinine.dateTime"
//  * item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-creatinine-observation#Observation.effectiveDateTime"
//  * item[=].item[=].item[=].item[=].text = "Zeitpunkt der Bestimmung"   
//  * item[=].item[=].item[=].item[=].type = #dateTime
//  
//  * item[=].item[+].linkId = "caveat.claustrophobia"    
//  * item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-caveat-condition#Condition.code"   
//  * item[=].item[=].text = "Klaustrophobie"   
//  * item[=].item[=].type = #choice
//  * item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-lab-order/ValueSet/ch-lab-order-caveat-qualifier-value"
//  * item[=].item[=].initial.valueCoding = SCT#373068000
//  * item[=].item[=].required = true
//  
//  * item[=].item[+].linkId = "caveat.bodyPiercing"     
//  * item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-caveat-condition#Condition.code"  
//  * item[=].item[=].text = "Körperpiercing"   
//  * item[=].item[=].type = #choice
//  * item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-lab-order/ValueSet/ch-lab-order-caveat-qualifier-value"
//  * item[=].item[=].initial.valueCoding = SCT#373068000
//  * item[=].item[=].required = true
//  
//  * item[=].item[+].linkId = "caveat.device" 
//  * item[=].item[=].text = "Device (Herzschrittmacher, Herzklappenersatz, Insulinpumpe etc.)"     
//  * item[=].item[=].type = #group
//  * item[=].item[=].repeats = true
//  
//  * item[=].item[=].item[+].linkId = "caveat.device.specifictype"
//  * item[=].item[=].item[=].text = "Device"     
//  * item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-caveat-condition#ch-lab-order-caveat-type"  
//  * item[=].item[=].item[=].type = #choice
//  * item[=].item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-lab-order/ValueSet/ch-lab-order-caveat-device"
//  
//  * item[=].item[=].item[+].linkId = "caveat.device.choice"  
//  * item[=].item[=].item[=].text = "Choice"     
//  * item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-caveat-condition#Condition.code"  
//  * item[=].item[=].item[=].type = #choice
//  * item[=].item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-lab-order/ValueSet/ch-lab-order-caveat-qualifier-value"
//  * item[=].item[=].item[=].initial.valueCoding = SCT#373068000
//  * item[=].item[=].item[=].required = true
//  
//  * item[=].item[+].linkId = "caveat.hyperthyroidism"     
//  * item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-caveat-condition#Condition.code"  
//  * item[=].item[=].text = "Hyperthyreose"   
//  * item[=].item[=].type = #choice
//  * item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-lab-order/ValueSet/ch-lab-order-caveat-qualifier-value"
//  * item[=].item[=].initial.valueCoding = SCT#373068000
//  * item[=].item[=].required = true
//  
//  * item[=].item[+].linkId = "caveat.diabetes"    
//  * item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-caveat-condition#Condition.code"   
//  * item[=].item[=].text = "Diabetes mellitus"   
//  * item[=].item[=].type = #choice
//  * item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-lab-order/ValueSet/ch-lab-order-caveat-qualifier-value"
//  * item[=].item[=].required = true
//  
//  * item[=].item[+].linkId = "caveat.gravida"     
//  * item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-caveat-condition#Condition.code"  
//  * item[=].item[=].text = "Schwangerschaft"   
//  * item[=].item[=].type = #choice
//  * item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-lab-order/ValueSet/ch-lab-order-caveat-qualifier-value"
//  * item[=].item[=].initial.valueCoding = SCT#373068000
//  * item[=].item[=].required = true
//  
//  * item[=].item[+].linkId = "caveat.contrastMediaAllergy"
//  * item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-caveat-condition#Condition.code"  
//  * item[=].item[=].text = "Kontrastmittelallergie"   
//  * item[=].item[=].type = #choice
//  * item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-lab-order/ValueSet/ch-lab-order-caveat-qualifier-value"
//  * item[=].item[=].initial.valueCoding = SCT#373068000
//  * item[=].item[=].required = true
//  
//  * item[=].item[+].linkId = "caveat.drugPrescription" 
//  * item[=].item[=].text = "Relevante Medikamente"     
//  * item[=].item[=].type = #group
//  * item[=].item[=].required = true
//  
//  * item[=].item[=].item[+].linkId = "caveat.drugPrescription.metformin"     
//  * item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-caveat-condition#Condition.code"  
//  * item[=].item[=].item[=].text = "Metformin"   
//  * item[=].item[=].item[=].type = #choice 
//  * item[=].item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-lab-order/ValueSet/ch-lab-order-caveat-qualifier-value"
//  * item[=].item[=].item[=].initial.valueCoding = SCT#373068000
//  * item[=].item[=].item[=].required = true
//  
//  * item[=].item[=].item[+].linkId = "caveat.drugPrescription.betaBlocker"     
//  * item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-caveat-condition#Condition.code"  
//  * item[=].item[=].item[=].text = "Betablocker"   
//  * item[=].item[=].item[=].type = #choice 
//  * item[=].item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-lab-order/ValueSet/ch-lab-order-caveat-qualifier-value"
//  * item[=].item[=].item[=].initial.valueCoding = SCT#373068000
//  * item[=].item[=].item[=].required = true
//  
//  /* ---------------------------------------------------------------------------
//  Vorherige Untersuchungsresultat:
//  Angaben zu Reports, auf die verwiesen wird
//  Angaben zu Bildern bzw. allfällige Vorbildern und Reports, auf die verwiesen wird  
//  mittels ImagingStudy Resource (DICOM WADO) oder die mitgegeben werden in der Media Resource.
//  */
//  * item[+].linkId = "previousResults"
//  * item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-servicerequest#ServiceRequest.supportingInfo:previousImagingResults"
//  * item[=].text = "Vorherige Untersuchungsresultate"
//  * item[=].type = #group
//  
//  * item[=].item[+].linkId = "previousResults.attachment"  
//  * item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-media#Media.content.data"
//  * item[=].item[=].text = "Daten"
//  * item[=].item[=].type = #attachment
//  * item[=].item[=].repeats = true
//  
//  * item[=].item[+].linkId = "previousResults.imagingStudy"
//  * item[=].item[=].text = "Bilder (DICOM)"
//  * item[=].item[=].type = #group
//  * item[=].item[=].repeats = true
//  
//  /*
//  The ImagingStudy’s DICOM Study Instance UID is encoded in the ImagingStudy.identifier element, 
//  which is of the Identifier datatype. When encoding a DICOM UID in an Identifier datatype, 
//  use the Identifier system of “urn:dicom:uid”, and prefix the UID value with “urn:oid:”. 
//  Therefore, an ImagingStudy with DICOM Study Instance UID of 2.16.124.113543.1154777499.30246.19789.3503430046 
//  is encoded as:
//  
//  	"identifier":{
//  		"system":"urn:dicom:uid",
//  		"value":"urn:oid:2.16.124.113543.1154777499.30246.19789.3503430046"
//  	} 
//  */
//  
//  * item[=].item[=].item[+].linkId = "previousResults.imagingStudy.StudyInstanceUid"  
//  * item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-imagingstudy#ImagingStudy.identifier"
//  * item[=].item[=].item[=].text = "DICOM Study Instance UID"
//  * item[=].item[=].item[=].type = #string
//  
//  /*
//   The study accession number can also be encoded as an Identifier using the “ACSN” identifier type, as follows:
//  
//    "identifier":{
//  		"type" : {
//  			"coding" : [
//  				{
//  					"system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
//  					"code" : "ACSN"
//  				}
//  			]
//  		},
//  		"system":"http://ginormoushospital.org/accession",
//  		"value":"GH334103"
//  	} 
//  */
//  
//  * item[=].item[=].item[+].linkId = "previousResults.imagingStudy.acsn"  
//  * item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-imagingstudy#ImagingStudy.identifier"
//  * item[=].item[=].item[=].text = "ACSN"
//  * item[=].item[=].item[=].type = #string
//  
//  /*
//  DICOM Series Instance UID and SOP Instance UID use the id datatype, and are encoded directly. 
//  For example, an image with SOP Instance UID of 2.16.124.113543.1154777499.30246.19789.3503430045.1.1 
//  is encoded in ImagingStudy.series.instance.uid as “2.16.124.113543.1154777499.30246.19789.3503430045.1.1”. 
//  */
//  
//  * item[=].item[=].item[+].linkId = "previousResults.imagingStudy.SeriesInstanceUid"  
//  * item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-imagingstudy#ImagingStudy.series.uid"
//  * item[=].item[=].item[=].text = "DICOM Series Instance UID"
//  * item[=].item[=].item[=].type = #string
//  
//  * item[=].item[=].item[+].linkId = "previousResults.imagingStudy.SopInstanceUid"  
//  * item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-imagingstudy#ImagingStudy.series.instance.uid"
//  * item[=].item[=].item[=].text = "DICOM SOP Instance UID"
//  * item[=].item[=].item[=].type = #string
//  
//  // -------- Service Request Notes ------
//  * item[+].linkId = "note"
//  * item[=].text = "Bemerkungen"
//  * item[=].type = #group
//  * item[=].repeats = true
//  
//  * item[=].item[+].linkId = "note.text"
//  * item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-servicerequest#ServiceRequest.note.text"
//  * item[=].item[=].text = "Kommentar" 
//  * item[=].item[=].type = #string
//  * item[=].item[=].required = true