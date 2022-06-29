Instance: 6-histopath-flat-QuestionnaireResponse
InstanceOf: ChOrfQuestionnaireResponse
Title: "QuestionnaireResponse 6-histopath (modular version)"
Description: "Example for QuestionnaireResponse of Histopathology Examination"
* questionnaire = "http://fhir.ch/ig/ch-lab-order/Questionnaire/6-histopath-flat-Questionnaire"
* status = #completed

// ---------- order (Auftrag) item[0] ----------
// ################################################
* item[+].linkId = "order"
* item[=].text = "Auftrag"

* item[=].item[+].linkId = "order.placerOrderIdentifier" // [0][0]
* item[=].item[=].text = "Auftragsnummer des Auftraggebers"
* item[=].item[=].answer.valueString = "12345"

* item[=].item[+].linkId = "order.placerOrderIdentifierDomain" //[0][1]
* item[=].item[=].text = "Identifier Domain der Auftragsnummer des Auftraggebers"
* item[=].item[=].answer.valueString = "urn:oid:1.3.4.5.6.7"

* item[=].item[+].linkId = "order.fillerOrderIdentifier" // [0][2]
* item[=].item[=].text = "Auftragsnummer des Auftragsempfängers"
* item[=].item[=].answer.valueString = "112233"

* item[=].item[+].linkId = "order.fillerOrderIdentifierDomain" // [0][3]
* item[=].item[=].text = "Identifier Domain der Auftragsnummer des Auftragsempfängers"
* item[=].item[=].answer.valueString = "urn:oid:1.3.5.7.9.1"

* item[=].item[+].linkId = "order.precedentDocumentIdentifier" // [0][4]
* item[=].item[=].text = "Identifier des Vorgängerdokuments"
* item[=].item[=].answer.valueString = "ABC2233"

* item[=].item[+].linkId = "order.notificationContactDocument"  // [0][5]
* item[=].item[=].text = "Dringender Benachrichtigungskontakt für dieses Dokument"
* item[=].item[=].item.linkId = "order.notificationContactDocument.practitioner"
* item[=].item[=].item.text = "Zu benachrichtigende Person"
* item[=].item[=].item.item[0].linkId = "order.notificationContactDocument.practitioner.title"
* item[=].item[=].item.item[=].text = "Titel"
* item[=].item[=].item.item[=].answer.valueString = "Dr. med."
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocument.practitioner.familyName"
* item[=].item[=].item.item[=].text = "Name"
* item[=].item[=].item.item[=].answer.valueString = "Erlenmeyer"
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocument.practitioner.givenName"
* item[=].item[=].item.item[=].text = "Vorname"
* item[=].item[=].item.item[=].answer.valueString = "Eva"
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocument.practitioner.phone"
* item[=].item[=].item.item[=].text = "Telefon"
* item[=].item[=].item.item[=].answer.valueString = "033 444 55 66"
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocument.practitioner.email"
* item[=].item[=].item.item[=].text = "E-Mail"
* item[=].item[=].item.item[=].answer.valueString = "eva.erlenmeyer@labor-pipette.ch"

* item[=].item[+].linkId = "order.notificationContactDocumentResponse"  // [0][6]
* item[=].item[=].text = "Dringender Benachrichtigungskontakt für die Antwort auf dieses Dokument"
* item[=].item[=].item.linkId = "order.notificationContactDocumentResponse.practitioner"
* item[=].item[=].item.text = "Zu benachrichtigende Person"
* item[=].item[=].item.item[0].linkId = "order.notificationContactDocumentResponse.practitioner.title"
* item[=].item[=].item.item[=].text = "Titel"
* item[=].item[=].item.item[=].answer.valueString = "Dr. med."
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocumentResponse.practitioner.familyName"
* item[=].item[=].item.item[=].text = "Name"
* item[=].item[=].item.item[=].answer.valueString = "Mustermann"
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocumentResponse.practitioner.givenName"
* item[=].item[=].item.item[=].text = "Vorname"
* item[=].item[=].item.item[=].answer.valueString = "Marc"
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocumentResponse.practitioner.phone"
* item[=].item[=].item.item[=].text = "Telefon"
* item[=].item[=].item.item[=].answer.valueString = "033 333 22 11"
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocumentResponse.practitioner.email"
* item[=].item[=].item.item[=].text = "E-Mail"
* item[=].item[=].item.item[=].answer.valueString = "marc.mustermann@gruppenpraxis.ch"

// --- order priority ---
* item[=].item[+].linkId = "order.priority" // [0][7]
* item[=].item[=].text = "Auftragspriorität"
* item[=].item[=].answer.valueCoding = RequestPriority#routine "Die Anfrage hat normale Priorität."
* item[=].item[=].answer.valueCoding = RequestPriority#routine

