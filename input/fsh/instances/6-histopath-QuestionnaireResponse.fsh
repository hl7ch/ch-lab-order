Instance: 6-histopath-mod-QuestionnaireResponse
InstanceOf: ChOrfQuestionnaireResponse
Title: "QuestionnaireResponse 6-histopath (modular version)"
Description: "Example for QuestionnaireResponse of Histopathology Examination"
* questionnaire = "http://fhir.ch/ig/ch-lab-order/Questionnaire/6-histopath-mod-Questionnaire"
* status = #completed

// ---------- order (Auftrag) item[0] ----------
* item[+].linkId = "order"
* item[=].text = "Auftrag"

* item[=].item[+].linkId = "order.placerOrderIdentifier" // [0][0]
* item[=].item[=].text = "Auftragsnummer des Auftraggebers"
* item[=].item[=].answer.valueString = "12345"

* item[=].item[+].linkId = "order.placerOrderIdentifierDomain" //[0][1]
* item[=].item[=].text = "Identifier Domain der Auftragsnummer des Auftraggebers"
* item[=].item[=].answer.valueString = "urn:oid:1.3.4.5.6.7"



// ---------- Order Priority ----------
* item[=].item[+].linkId = "order.priority" // [0][2]
* item[=].item[=].text = "Auftragspriorität"
* item[=].item[=].answer.valueCoding = RequestPriority#urgent "Die Anfrage hat normale Priorität."


// ---------- Receiver: Person/organization who receives the document item[1] ---
* item[+].linkId = "receiver"
* item[=].text = "Empfänger"

// -- Patient: The principle target of a particular Form Content is one patient item[2]--
* item[+].linkId = "patient"
* item[=].text = "Patient"

* item[=].item[+].linkId = "patient.familyName"
* item[=].item[=].text = "Name"
* item[=].item[=].answer.valueString = "Keller"

* item[=].item[+].linkId = "patient.maidenName"
* item[=].item[=].text = "Ledigname"
* item[=].item[=].answer.valueString = ""

* item[=].item[+].linkId = "patient.givenName"
* item[=].item[=].text = "Vorname"
* item[=].item[=].answer.valueString = "Klebsiella"

* item[=].item[+].linkId = "patient.birthDate"
* item[=].item[=].text = "Geburtsdatum"
* item[=].item[=].answer.valueDate = "1975-12-12"

* item[=].item[+].linkId = "patient.gender"
* item[=].item[=].text = "Geschlecht"
* item[=].item[=].answer.valueCoding = AdministrativeGender#female

* item[=].item[+].linkId = "patient.phone"
* item[=].item[=].text = "Telefon"
* item[=].item[=].answer.valueString = "+41 64 123 45 67"

* item[=].item[+].linkId = "patient.email"
* item[=].item[=].text = "E-Mail"
* item[=].item[=].answer.valueString = "klebsiella.keller@example.ch"

* item[=].item[+].linkId = "patient.streetAddressLine"
* item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].answer[+].valueString = "Hubelmattweg"
* item[=].item[=].answer[+].valueString = "66"

* item[=].item[+].linkId = "patient.postalCode"
* item[=].item[=].text = "PLZ"
* item[=].item[=].answer.valueString = "4600"

* item[=].item[+].linkId = "patient.city"
* item[=].item[=].text = "Ort"
* item[=].item[=].answer.valueString = "Olten"

* item[=].item[+].linkId = "patient.country"
* item[=].item[=].text = "Land"
* item[=].item[=].answer.valueString = "Schweiz"

// ---------- Encounter Class (Ambulant / Stationär / Notfall) ----------
* item[+].linkId = "requestedEncounter"
// * item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.extension:requestedEncounterDetails"
* item[=].text = "Patientenaufnahme"

// * item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
// * item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-requestedencounter|2.0.0"
// * item[=].item.linkId = "requestedEncounter.1"
// * item[=].item.text = "Unable to resolve 'requestedencounter' sub-questionnaire"

// ---------- Coverage (Kostenträger) ----------
* item[+].linkId = "coverage"
// * item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.insurance"
* item[=].text = "Kostenträger"

// * item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
// * item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-coverage|2.0.0"
// * item[=].item.linkId = "coverage.1"
// * item[=].item.text = "Unable to resolve 'coverage' sub-questionnaire"

// ---------- sender (Absender) ----------
* item[+].linkId = "sender"
* item[=].text = "Absender"

// ---------- Author: The person/organization responsible for Form Content ----------
* item[=].item[+].linkId = "sender.author"
// * item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.author"
* item[=].item[=].text = "Verantwortlicher"

// * item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
// * item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-sender|2.0.0"
//* item[=].item.linkId = "sender.1"
* item[=].item.answer.valueString = "Marc Mustermann"
//* item[=].item.text = "Unable to resolve 'sender' sub-questionnaire"

// ---------- Copy Receiver (Copy of this order and all results therefrom) ----------
* item[+].linkId = "receiverCopy"
// * item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:copyReceiver"
* item[=].text = "Kopieempfänger (Kopie dieses Auftrags und aller daraus resultierenden Resultate)"

// * item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
// * item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-receivercopy|2.0.0"
// * item[=].item.linkId = "receiverCopy.1"
// * item[=].item.text = "Unable to resolve 'receivercopy' sub-questionnaire"

// ------ Appointment ----------------------------
* item[+].linkId = "appointment"
// * item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.extension:locationAndTime"
* item[=].text = "Ort und Zeit der Durchführung der angeforderten Leistung"

// * item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
// * item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-appointment|2.0.0"
// * item[=].item.linkId = "appointment.1"
// * item[=].item.text = "Unable to resolve 'appointment' sub-questionnaire"

// -------- Service Request Notes ------
* item[+].linkId = "note"
* item[=].text = "Bemerkungen"

* item[=].item[+].linkId = "note.text"
// * item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.note.text"
* item[=].item[=].text = "Kommentar"
* item[=].item[=].answer.valueString = "mark in the skin specimen points to the cranio-medial part"

// ########### specific Part ######################
// ------------Choice of Specialty-----------------
* item[+]
  * linkId = "labSpecialties"
  * text = "Labor Sparten"

  // Histopathology
  * item[+]
    * linkId = "labSpecialties.pathology"
    * text = "Pathology"
    * answer.valueBoolean = true

    * answer.item[+]
      * linkId = "labSpecialties.pathology.panels"
      * text = "Pathology Panels"
      * item[+]
        * definition = LOINC#18743-5 "Autopsy report"
        * linkId = "labSpecialties.pathology.panels.Autopsy"
        * text = "Autopsy report"
        * answer.valueBoolean = false
      * item[+]
        * definition = LOINC#11526-1 "Pathology study"
        * linkId = "labSpecialties.pathology.panels.PathologyStudy"
        * text = "Pathology Study"
        * answer.valueBoolean = false
      * item[+]
        * definition = LOINC#11529-5 "Surgical pathology study"
        * linkId = "labSpecialties.pathology.panels.SurgicalPathologyStudy"
        * text = "Surgical pathology study"
        * answer.valueBoolean = true