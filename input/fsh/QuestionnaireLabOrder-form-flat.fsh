Instance: QuestionnaireLabOrder-form-flat
InstanceOf: ChOrfQuestionnaire
Title: "Questionnaire Lab Order"
Description: "Example for Questionnaire"
Usage: #definition
* id = "QuestionnaireLabOrder-form-flat"

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

* url = "http://fhir.ch/ig/ch-lab-order/Questionnaire/QuestionnaireLabOrder-form-flat"
* name = "QuestionnaireLabOrder"
* title = "Questionnaire Lab Order"
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

// ---- Patient: The principle target of a particular Form Content is one patient ------
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
// ########### Lab Service from Catalog #######################
// ############################################################
// To order one ore more Tests or Test-Panels as Lab Services, 
// we choose the wanted PlanDefinition, here potassium, panel electrolytes or 
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
// Service. Hier als Beispiel: Potassium, Electrolyt Panel und Vitamin-D

* item[+].linkId = "LabService"
* item[=].definition = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabServiceDefinition"
* item[=].text = "Laboratory Service (PlanDefinition)"
* item[=].type = #group
* item[=].required = true

//*  item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
//* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-lab-order/Catalog/Plandefinition|1.0"

// -- Choose Serum Potassium ---
* item[=].item[0].linkId = "potassium-serum"
* item[=].item[=].definition = LOINC#2823-3 "Potassium [Moles/volume] in Serum or Plasma"
* item[=].item[=].text = "Kalium im Serum"
* item[=].item[=].type = #boolean


// -- Choose Panel Electrolyte ---
* item[=].item[+].linkId = "panel-blood-electrolyte"
* item[=].item[=].definition = LOINC#24326-1 "Electrolytes 1998 panel - Serum or Plasma"
* item[=].item[=].text = "Elektrolyt Panel im Blut"
* item[=].item[=].type = #boolean

// -- Choose Serum Vitamin D ---
* item[=].item[+].linkId = "vitamin-d-serum"
* item[=].item[=].definition = LOINC#14635-7 "25-hydroxyvitamin D3 [Moles/volume] in Serum or Plasma"
* item[=].item[=].text = "Vitamin D im Serum"
* item[=].item[=].type = #boolean

// further plan definitions


// Instance: panel-blood-electrolyte-module
// InstanceOf: Questionnaire
// Title: "Module Questionnaire Panel Blood Electrolyte"
// Description: "Subquestionnaire Panel Blood Electrolyte"
// * extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/// sdc-questionnaire-assemble-expectation"
// * extension[=].valueCode = #assemble-child
// * url = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-order"
// * name = "ModuleQuestionnaireOrderForm"
// * title = "Module Questionnaire Order Form"
// * status = #active
// * date = "2022-05-04"
// * publisher = "HL7 Switzerland"
// 
// * item[+].linkId = "LabService-potassium-serum"
// * item[=].definition = "http://fhir.ch/ig/ch-lab-order/PlanDefinition/// ch-orf-servicerequest#..."
// * item[=].text = ""
// * item[=].type = #display
// 
// * item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
// * item[=].extension.valueBoolean = true
// * item[=].linkId = "order.placerOrderIdentifierDomain"
// * item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/// ch-orf-servicerequest#..."
// * item[=].text = "."
// * item[=].type = #display
// 
// // -- 2. Wahl Labor-Compendium: Composition, ext-catalog-reference, durch orf-receiver gegeben
// Instance: catalog-header-module
// InstanceOf: Questionnaire
// Title: "Wahl Labor Kompendium"
// Description: "Subquestionnaire Catalog"
// 
// // -- 3. ext-billing-code: (hier nur AL als xlsx Datei) in PD hinterlegt
// Instance: billing-code-module
// InstanceOf: Questionnaire
// Title: "Wahl Abrechnungscode aus der Analysenliste (xlsx-file)"
// Description: "Subquestionnaire Billing Code"
// 
// // -- 4. Wahl SpecimenDefinition Referenz
// Instance: SpecimenDefinition-module
// InstanceOf: Questionnaire
// Title: "Wahl der Proben Definition"
// Description: "Subquestionnair SpecimenDefinition"
// 
// // --5. Activity Definition, ist aber eigentlich


