Instance: 6-histopath-mod-QuestionnaireResponse
InstanceOf: ChOrfQuestionnaireResponse
Title: "QuestionnaireResponse 6-histopath (modular version)"
Description: "Example for QuestionnaireResponse of Histopathology Examination"
* questionnaire = "http://fhir.ch/ig/ch-lab-order/Questionnaire/6-histopath-mod"
* status = #completed

// ---------- order (Auftrag) ----------
* item[+].linkId = "order"
* item[=].text = "Auftrag"

* item[=].item.linkId = "order.1"
* item[=].item.text = "Unable to resolve 'order' sub-questionnaire"

// ---------- Receiver: Person/organization who receives the document ----------
* item[+].linkId = "receiver"
* item[=].text = "Empfänger"

* item[=].item.linkId = "receiver.1"
* item[=].item.text = "Unable to resolve 'receiver' sub-questionnaire"

// ---------- Patient: The principle target of a particular Form Content is one patient ----------
* item[+].linkId = "patient"
* item[=].text = "Patient"

* item[=].item.linkId = "patient.1"
* item[=].item.text = "Unable to resolve 'patient' sub-questionnaire"

// ---------- Encounter Class (Ambulant / Stationär / Notfall) ----------
* item[+].linkId = "requestedEncounter"
* item[=].text = "Patientenaufnahme"

* item[=].item.linkId = "requestedEncounter.1"
* item[=].item.text = "Unable to resolve 'requestedencounter' sub-questionnaire"

// ---------- Coverage (Kostenträger) ----------
* item[+].linkId = "coverage"
* item[=].text = "Kostenträger"

* item[=].item.linkId = "coverage.1"
* item[=].item.text = "Unable to resolve 'coverage' sub-questionnaire"

// ---------- sender (Absender) ----------
* item[+].linkId = "sender"
* item[=].text = "Absender"

// ---------- Author: The person/organization responsible for Form Content ----------
* item[=].item[+].linkId = "sender.author"
* item[=].item[=].text = "Verantwortlicher"

* item[=].item.linkId = "sender.1"
* item[=].item.answer.valueString = "Marc Mustermann"
* item[=].item.text = "Unable to resolve 'sender' sub-questionnaire"

// ---------- Copy Receiver (Copy of this order and all results therefrom) ----------
* item[+].linkId = "receiverCopy"
* item[=].text = "Kopieempfänger (Kopie dieses Auftrags und aller daraus resultierenden Resultate)"

* item[=].item.linkId = "receiverCopy.1"
* item[=].item.text = "Unable to resolve 'receivercopy' sub-questionnaire"

// ------ Appointment ----------------------------
* item[+].linkId = "appointment"
* item[=].text = "Ort und Zeit der Durchführung der angeforderten Leistung"

* item[=].item.linkId = "appointment.1"
* item[=].item.text = "Unable to resolve 'appointment' sub-questionnaire"

// -------- Service Request Notes ------
* item[+].linkId = "note"
* item[=].text = "Bemerkungen"

* item[=].item[+].linkId = "note.text"
* item[=].item[=].text = "Kommentar"
* item[=].item[=].answer.valueString = "mark in the skin specimen points to the cranio-medial part"
