Instance: 6-histopath-mod-QuestionnaireResponse
InstanceOf: ChOrfQuestionnaireResponse
Title: "QuestionnaireResponse 6-histopath (modular version)"
Description: "Example for QuestionnaireResponse of Histopathology Examination"
* questionnaire = "http://fhir.ch/ig/ch-lab-order/Questionnaire/6-histopath-mod"
* status = #completed

// ---------- order (Auftrag) ----------
* item[+].linkId = "order"
* item[=].text = "Auftrag"

// * item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
// * item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-order|2.0.0"
* item[=].item.linkId = "order.1"
* item[=].item.text = "Unable to resolve 'order' sub-questionnaire"

// ---------- Receiver: Person/organization who receives the document ----------
* item[+].linkId = "receiver"
// * item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:receiver"
* item[=].text = "Empfänger"

// * item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
// * item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-receiver|2.0.0"
* item[=].item.linkId = "receiver.1"
* item[=].item.text = "Unable to resolve 'receiver' sub-questionnaire"

// ---------- Patient: The principle target of a particular Form Content is one patient ----------
* item[+].linkId = "patient"
// * item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.subject"
* item[=].text = "Patient"

// * item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
// * item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-patient|2.0.0"
* item[=].item.linkId = "patient.1"
* item[=].item.text = "Unable to resolve 'patient' sub-questionnaire"

// ---------- Encounter Class (Ambulant / Stationär / Notfall) ----------
* item[+].linkId = "requestedEncounter"
// * item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.extension:requestedEncounterDetails"
* item[=].text = "Patientenaufnahme"

// * item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
// * item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-requestedencounter|2.0.0"
* item[=].item.linkId = "requestedEncounter.1"
* item[=].item.text = "Unable to resolve 'requestedencounter' sub-questionnaire"

// ---------- Coverage (Kostenträger) ----------
* item[+].linkId = "coverage"
// * item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.insurance"
* item[=].text = "Kostenträger"

// * item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
// * item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-coverage|2.0.0"
* item[=].item.linkId = "coverage.1"
* item[=].item.text = "Unable to resolve 'coverage' sub-questionnaire"

// ---------- sender (Absender) ----------
* item[+].linkId = "sender"
* item[=].text = "Absender"

// ---------- Author: The person/organization responsible for Form Content ----------
* item[=].item[+].linkId = "sender.author"
// * item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.author"
* item[=].item[=].text = "Verantwortlicher"

// * item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
// * item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-sender|2.0.0"
* item[=].item.linkId = "sender.1"
* item[=].item.answer.valueString = "Marc Mustermann"
* item[=].item.text = "Unable to resolve 'sender' sub-questionnaire"

// ---------- Copy Receiver (Copy of this order and all results therefrom) ----------
* item[+].linkId = "receiverCopy"
// * item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:copyReceiver"
* item[=].text = "Kopieempfänger (Kopie dieses Auftrags und aller daraus resultierenden Resultate)"

// * item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
// * item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-receivercopy|2.0.0"
* item[=].item.linkId = "receiverCopy.1"
* item[=].item.text = "Unable to resolve 'receivercopy' sub-questionnaire"

// ------ Appointment ----------------------------
* item[+].linkId = "appointment"
// * item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.extension:locationAndTime"
* item[=].text = "Ort und Zeit der Durchführung der angeforderten Leistung"

// * item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
// * item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-appointment|2.0.0"
* item[=].item.linkId = "appointment.1"
* item[=].item.text = "Unable to resolve 'appointment' sub-questionnaire"

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

// ##### Subquestionnaires #################
// #############################################

// Order
Instance: 6-histopath-mod-order-Response
InstanceOf: QuestionnaireResponse
Title: "Module QuestionnaireResponse order"
Description: "SubquestionnaireResponse order"
* questionnaire = "http://fhir.ch/ig/ch-lab-order/Questionnaire/6-histopath-mod-order"
* status = #completed

* item[+].linkId = "order.placerOrderIdentifier"
* item[=].text = "Auftragsnummer des Auftraggebers"
* item[=].answer.valueString = "AN-1234567"

* item[=].linkId = "order.placerOrderIdentifierDomain"
* item[=].text = "Identifier Domain der Auftragsnummer des Auftraggebers"
* item[=].answer.valueString = "Domain-22334455"

* item[+].linkId = "order.fillerOrderIdentifier"
* item[=].text = "Auftragsnummer des Auftragsempfängers"
* item[=].answer.valueString = "N/A"

* item[=].linkId = "order.fillerOrderIdentifierDomain"
* item[=].text = "Identifier Domain der Auftragsnummer des Auftragsempfängers"
* item[=].answer.valueString = "N/A"

* item[=].linkId = "order.precedentDocumentIdentifier"
* item[=].text = "Identifier des Vorgängerdokuments"
* item[=].answer.valueString = "N/A"

// ---------- Urgent Notification Contact for this document ----------
* item[+].linkId = "order.notificationContactDocument"
* item[=].text = "Dringender Benachrichtigungskontakt für dieses Dokument"

* item[=].item[+].linkId = "order.notificationContactDocument.practitioner"
* item[=].item[=].text = "Zu benachrichtigende Person"

// * item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
// * item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
// * item[=].item[=].extension.valueExpression.language = #text/fhirpath
// * item[=].item[=].extension.valueExpression.expression = "'order.notificationContactDocument.practitioner.'"
// 
// * item[=].item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
// * item[=].item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-practitioner-nametel|2.0.0"
* item[=].item[=].item.linkId = "order.notificationContactDocument.practitioner.1"
* item[=].item[=].item.text = "Unable to resolve 'practitioner-nametel' sub-questionnaire"

// ---------- Urgent Notification Contact for the Response to this document ----------
* item[+].linkId = "order.notificationContactDocumentResponse"
* item[=].text = "Dringender Benachrichtigungskontakt für die Antwort auf dieses Dokument"

* item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner"
* item[=].item[=].text = "Zu benachrichtigende Person"

* item[=].item[=].item.linkId = "order.notificationContactDocumentResponse.practitioner.1"
* item[=].item[=].item.text = "Unable to resolve 'practitioner-nametel' sub-questionnaire" // TODO: Subquestionnaire Practitioner Name/Telecom

// ---------- Order Priority ----------
* item[+].linkId = "order.priority"
* item[=].definition = RequestPriority
// ""
* item[=].text = "Auftragspriorität"
* item[=].answer.valueCoding = RequestPriority#routine "Die Anfrage hat normale Priorität."

//##### Subquestionnaire Patient ###########################
Instance: 6-histopath-mod-patient-Response
InstanceOf: QuestionnaireResponse
Title: "Module QuestionnaireResponse patient"
Description: "SubquestionnaireResponse patient"
* questionnaire = "http://fhir.ch/ig/ch-lab-order/Questionnaire/6-histopath-mod-patient"
* status = #completed

* item[+].linkId = "patient.familyName"
* item[=].text = "Name"
* item[=].answer.valueString = "Keller"

* item[+].linkId = "patient.maidenName"
* item[=].text = "Ledigname"
* item[=].answer.valueString = ""

* item[+].linkId = "patient.givenName"
* item[=].text = "Vorname"
* item[=].answer.valueString = "Klebsiella"

* item[+].linkId = "patient.localPid"
* item[=].text = "Lokale Patienten-ID"
* item[=].answer.valueString = "012/08.111114"

* item[=].linkId = "patient.localPidDomain"
* item[=].text = "Lokale Patienten-ID Domain"
* item[=].answer.valueString = "urn:oid:2.16.756.5.30.999999.1"

* item[+].linkId = "patient.birthDate"
* item[=].text = "Geburtsdatum"
* item[=].answer.valueDate = "1975-12-12"

* item[+].linkId = "patient.gender"
* item[=].text = "Geschlecht"
// * item[=].answerOption[+].valueCoding = AdministrativeGender#male "Männlich"
// * item[=].answerOption[=].initialSelected = true
* item[=].answer.valueCoding = AdministrativeGender#female "Weiblich"
// * item[=].answerOption[+].valueCoding = AdministrativeGender#other "Anderes"

* item[+].linkId = "patient.maritalStatus"
* item[=].text = "Zivilstand"
// * item[=].answerOption[+].valueCoding = ECH-11-maritalstatus#1 "ledig"
* item[=].answer.valueCoding = ECH-11-maritalstatus#2 "verheiratet"
// * item[=].answerOption[+].valueCoding = ECH-11-maritalstatus#3 "verwitwet"
// * item[=].answerOption[+].valueCoding = ECH-11-maritalstatus#4 "geschieden"
// * item[=].answerOption[+].valueCoding = ECH-11-maritalstatus#5 "unverheiratet"
// * item[=].answerOption[+].valueCoding = ECH-11-maritalstatus#6 "in eingetragener Partnerschaft"
// * item[=].answerOption[+].valueCoding = ECH-11-maritalstatus#7 "aufgelöste Partnerschaft"
// * item[=].answerOption[+].valueCoding = ECH-11-maritalstatus#9 "unbekannt"

* item[+].linkId = "patient.phone"
* item[=].text = "Telefon"
* item[=].answer.valueString = "+41 64 123 45 67"

* item[+].linkId = "patient.email"
* item[=].text = "E-Mail"
* item[=].answer.valueString = "klebsiella.keller@example.ch"

// * item[+].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
// * item[=].extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-address|2.0.0"
// * item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
// * item[=].extension[=].valueExpression.name = "linkIdPrefix"
// * item[=].extension[=].valueExpression.language = #text/fhirpath
// * item[=].extension[=].valueExpression.expression = "'patient.'"
* item[=].linkId = "patient.1"
* item[=].text = "Unable to resolve 'address' sub-questionnaire"
// * item[=].type = #display

* item[+].linkId = "patient.languageOfCorrespondance"
// * item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.communication:languageOfCorrespondance"
* item[=].text = "Korrespondenssprache"
// * item[=].type = #choice
* item[=].answer.valueCoding = languageOfCorrespondance#de-CH "German (Switzerland)	"

// ---------- Patient Contact Person : The principle target of a particular Form Content is one patient ----------
* item[+].linkId = "patient.contactperson"
* item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.contact"
* item[=].text = "Kontaktperson"
// * item[=].type = #group

* item[=].item[+].linkId = "patient.contactperson.relationship"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.contact.relationship.text"
* item[=].item[=].answer.valueString = "Schwager"
// * item[=].item[=].type = #string

* item[=].item[+].linkId = "patient.contactperson.familyName"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.contact.name.family"
* item[=].item[=].answer.valueString = "Guggenbühl"
// * item[=].item[=].type = #string

* item[=].item[+].linkId = "patient.contactperson.givenName"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.contact.name.given"
* item[=].item[=].answer.valueString = "Max"
// * item[=].item[=].type = #string

* item[=].item[+].linkId = "patient.contactperson.phone"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.contact.telecom.value"
* item[=].item[=].answer.valueString = "077 888 99 00"
// * item[=].item[=].type = #string
// * item[=].item[=].repeats = true

* item[=].item[+].linkId = "patient.contactperson.email"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.contact.telecom.value"
* item[=].item[=].answer.valueString = "max.guggenbuehl@example.com"
//* item[=].item[=].type = #string/