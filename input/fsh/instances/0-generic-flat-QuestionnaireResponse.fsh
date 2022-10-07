Instance: 0-generic-flat-QuestionnaireResponse
InstanceOf: ChOrfQuestionnaireResponse
Title: "QuestionnaireResponse 0-generic (modular version)"
Description: "Example for QuestionnaireResponse of Histopathology Examination"
* questionnaire = "http://fhir.ch/ig/ch-lab-order/Questionnaire/0-generic-flat"
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

// ---------- Receiver item[1] ----------
// ################################################
* item[+].linkId = "receiver"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:receiver"
* item[=].text = "Empfänger"

// --- receiver.practitioner ------------------------
* item[=].item[0].linkId = "receiver.practitioner"
* item[=].item[=].text = "Empfangende Person"
* item[=].item[=].item[0].linkId = "receiver.practitioner.title"
* item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].answer.valueString = "Dr. med."
* item[=].item[=].item[+].linkId = "receiver.practitioner.familyName"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].answer.valueString = "Erlenmeyer"
* item[=].item[=].item[+].linkId = "receiver.practitioner.givenName"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].answer.valueString = "Eva"
* item[=].item[=].item[+].linkId = "receiver.practitioner.gln"
* item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].answer.valueString = "7601000050717"
* item[=].item[=].item[+].linkId = "receiver.practitioner.zsr"
* item[=].item[=].item[=].text = "ZSR"
* item[=].item[=].item[=].answer.valueString = "A123315"
* item[=].item[=].item[+].linkId = "receiver.practitioner.phone"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].answer.valueString = "033 444 55 66"
* item[=].item[=].item[+].linkId = "receiver.practitioner.email"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].answer.valueString = "eva.erlenmeyer@labor-pipette.ch"

// --- receiver.organization ------------------------
* item[=].item[+].linkId = "receiver.organization"
* item[=].item[=].text = "Empfangende Organisation"
* item[=].item[=].item[0].linkId = "receiver.organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].answer.valueString = "Labor Pipette"
* item[=].item[=].item[+].linkId = "receiver.organization.gln"
* item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].answer.valueString = "7601000234407"
* item[=].item[=].item[+].linkId = "receiver.organization.streetAddressLine"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].answer.valueString = "Laborstrasse 23"
* item[=].item[=].item[+].linkId = "receiver.organization.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].answer.valueString = "4600"
* item[=].item[=].item[+].linkId = "receiver.organization.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].answer.valueString = "Olten"
* item[=].item[=].item[+].linkId = "receiver.organization.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].answer.valueString = "CH"


// ---------- Patient item[2] ----------
// ################################################
* item[+].linkId = "patient"
* item[=].text = "Patient"
* item[=].item[0].linkId = "patient.familyName"
* item[=].item[=].text = "Name"
* item[=].item[=].answer.valueString = "Keller"
* item[=].item[+].linkId = "patient.maidenName"
* item[=].item[=].text = "Ledigname"
* item[=].item[=].answer.valueString = ""
* item[=].item[+].linkId = "patient.givenName"
* item[=].item[=].text = "Vorname"
* item[=].item[=].answer.valueString = "Klebsiella"
* item[=].item[+].linkId = "patient.localPid"
* item[=].item[=].text = "Lokale Patienten-ID"
* item[=].item[=].answer.valueString = "012/08.111114"
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension.valueBoolean = true
* item[=].item[=].linkId = "patient.localPidDomain"
* item[=].item[=].text = "Lokale Patienten-ID Domain"
* item[=].item[=].answer.valueString = "urn:oid:2.16.756.5.30.999999.1"
* item[=].item[+].linkId = "patient.birthDate"
* item[=].item[=].text = "Geburtsdatum"
* item[=].item[=].answer.valueDate = "1975-12-12"

// --- patient.gender ------------------------
* item[=].item[+].linkId = "patient.gender"
* item[=].item[=].text = "Geschlecht"
* item[=].item[=].answer.valueCoding = http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.gender#female "Weiblich"

// --- patient.maritalStatus
* item[=].item[+].linkId = "patient.maritalStatus"
* item[=].item[=].text = "Zivilstand"
* item[=].item[=].answer.valueCoding = http://fhir.ch/ig/ch-core/CodeSystem/ech-11-maritalstatus#2 "verheiratet"

* item[=].item[+].linkId = "patient.phone"
* item[=].item[=].text = "Telefon"
* item[=].item[=].answer.valueString = "+41 64 123 45 67"
* item[=].item[+].linkId = "patient.email"
* item[=].item[=].text = "E-Mail"
* item[=].item[=].answer.valueString = "klebsiella.keller@example.ch"
* item[=].item[+].linkId = "patient.streetAddressLine"
* item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].answer.valueString = ""
* item[=].item[+].linkId = "patient.postalCode"
* item[=].item[=].text = "PLZ"
* item[=].item[=].answer.valueString = "5600"
* item[=].item[+].linkId = "patient.city"
* item[=].item[=].text = "Ort"
* item[=].item[=].answer.valueString = "Lenzburg"
* item[=].item[+].linkId = "patient.country"
* item[=].item[=].text = "Land"
* item[=].item[=].answer.valueString = "CH"

// --- patient.languageOfCorrespondance ---------------------------
* item[=].item[+].linkId = "patient.languageOfCorrespondance"
// * item[=].item[=].text = "Korrespondenssprache"
// * item[=].item[=].answer.valueCoding = "http://fhir.ch/ig/ch-epr-term/ValueSet/DocumentEntry.languageCode#de-CH"

// --- patient.contactperson ---------------------------
* item[=].item[+].linkId = "patient.contactperson"
* item[=].item[=].text = "Kontaktperson"
* item[=].item[=].item[0].linkId = "patient.contactperson.relationship"
* item[=].item[=].item[=].text = "Beziehung"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].linkId = "patient.contactperson.familyName"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].linkId = "patient.contactperson.givenName"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].linkId = "patient.contactperson.phone"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].linkId = "patient.contactperson.email"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].answer.valueString = ""


// ---------- requestEncounter item[3] ----------
// ################################################
* item[+].linkId = "requestedEncounter"
* item[=].text = "Patientenaufnahme"
* item[=].item[0].linkId = "requestedEncounter.class"
* item[=].item[=].text = "Voraussichtlich: Ambulant / Stationär / Notfall"
* item[=].item[=].answer.valueCoding = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "Ambulant"

* item[=].item[+].linkId = "requestedEncounter.desiredAccommodation"
* item[=].item[=].text = "Zimmerkategorie"

* item[=].item[=].answer.valueCoding = http://fhir.ch/ig/ch-core/CodeSystem/bfs-medstats-21-encountertype#3 "privat"

// ---------- Coverage item[4] ----------
// ################################################
* item[+].linkId = "coverage"
* item[=].text = "Kostenträger"
* item[=].item[0].linkId = "coverage.beneficiary"   // item[4][0]
* item[=].item[=].text = "Begünstigter (Patient)"
* item[=].item[=].item.linkId = "coverage.beneficiary.ahvn13"  // item[4][0][0]
* item[=].item[=].item.text = "AHV-Nr. des Patienten"
* item[=].item[=].item.answer.valueString = ""
* item[=].item[+].linkId = "coverage.kvg"   // item[4][1]
* item[=].item[=].text = "Krankenkasse (nach KVG)"
* item[=].item[=].item[0].linkId = "coverage.kvg.name"    // item[4][1][0]
* item[=].item[=].item[=].text = "Name der Versicherung"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].linkId = "coverage.kvg.insuranceCardNumber"   // item[4][1][1]
* item[=].item[=].item[=].text = "Kennnummer der Versichertenkarte"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[+].linkId = "coverage.uvg"   // item[4][2]
* item[=].item[=].text = "Unfallversicherung (nach UVG)"
* item[=].item[=].item[0].linkId = "coverage.uvg.name"
* item[=].item[=].item[=].text = "Name der Versicherung"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].linkId = "coverage.uvg.claimNumber"
* item[=].item[=].item[=].text = "Schadennummer"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[+].linkId = "coverage.vvg"   // item[4][3]
* item[=].item[=].text = "Zusatzversicherung (nach VVG)"
* item[=].item[=].item[0].linkId = "coverage.vvg.name"
* item[=].item[=].item[=].text = "Name der Versicherung"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].linkId = "coverage.vvg.insuranceCardNumber"
* item[=].item[=].item[=].text = "Kennnummer der Versichertenkarte"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[+].linkId = "coverage.iv"    // item[4][4]
* item[=].item[=].text = "Invalidenversicherung (IV)"
// * item[=].item[=].type = #group
* item[=].item[=].item.linkId = "coverage.iv.verfuegungsnummer"
* item[=].item[=].item.text = "IV-Verfügungsnummer"
* item[=].item[=].item.answer.valueString = ""
* item[=].item[+].linkId = "coverage.mv"    // item[4][5]
* item[=].item[=].text = "Militärversicherung (MV)"
// * item[=].item[=].type = #group
* item[=].item[=].item.linkId = "coverage.mv.versichertennummer"
* item[=].item[=].item.text = "MV-Versichertennummer"
* item[=].item[=].item.answer.valueString = ""
* item[=].item[+].linkId = "coverage.self"    // item[4][6]
* item[=].item[=].text = "Selbstzahler"
* item[=].item[=].item[0].linkId = "coverage.self.patient"    // item[4][6][0]
* item[=].item[=].item[=].text = "Patient selbst"
* item[=].item[=].item[=].answer.valueBoolean = false
* item[=].item[=].item[+].linkId = "coverage.self.patientRelatedPerson"   // item[4][6][1]
* item[=].item[=].item[=].text = "Andere Person"
// * item[=].item[=].item[=].type = #boolean
// * item[=].item[=].item[=].enableWhen.question = "coverage.self.patient"
// * item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].answer.valueBoolean = false
// * item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
// * item[=].item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
// * item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
// * item[=].item[=].item[=].extension.valueExpression.expression = "'coverage.self.relatedPerson.'"
// * item[=].item[=].item[=].linkId = "coverage.self.relatedPerson"    // item[4][6][2]
// * item[=].item[=].item[=].text = "Andere Person"
// * item[=].item[=].item[=].enableWhen.question = "coverage.self.patientRelatedPerson"
// * item[=].item[=].item[=].enableWhen.operator = #=
// * item[=].item[=].item[=].answer.valueBoolean = false
// * item[=].item[=].item[=].item[0].linkId = "coverage.self.relatedPerson.familyName"
// * item[=].item[=].item[=].item[=].text = "Name"
// * item[=].item[=].item[=].item[=].answer.valueString = "Woodpecker"
// * item[=].item[=].item[=].item[+].linkId = "coverage.self.relatedPerson.givenName"
// * item[=].item[=].item[=].item[=].text = "Vorname"
// * item[=].item[=].item[=].item[=].answer.valueString = "Woody"
// * item[=].item[=].item[=].item[+].linkId = "coverage.self.relatedPerson.phone"
// * item[=].item[=].item[=].item[=].text = "Telefon"
// * item[=].item[=].item[=].item[=].answer.valueString = ""
// * item[=].item[=].item[=].item[+].linkId = "coverage.self.relatedPerson.email"
// * item[=].item[=].item[=].item[=].text = "E-Mail"
// * item[=].item[=].item[=].item[=].answer.valueString = ""
// * item[=].item[=].item[=].item[+].linkId = "coverage.self.relatedPerson.streetAddressLine"
// * item[=].item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
// * item[=].item[=].item[=].item[=].answer.valueString = ""
// * item[=].item[=].item[=].item[+].linkId = "coverage.self.relatedPerson.postalCode"
// * item[=].item[=].item[=].item[=].text = "PLZ"
// * item[=].item[=].item[=].item[=].answer.valueString = ""
// * item[=].item[=].item[=].item[+].linkId = "coverage.self.relatedPerson.city"
// * item[=].item[=].item[=].item[=].text = "Ort"
// * item[=].item[=].item[=].item[=].answer.valueString = ""
// * item[=].item[=].item[=].item[+].linkId = "coverage.self.relatedPerson.country"
// * item[=].item[=].item[=].item[=].text = "Land"
// * item[=].item[=].item[=].item[=].answer.valueString = ""
* item[=].item[+].linkId = "coverage.other"
* item[=].item[=].text = "Anderer Kostenträger"
* item[=].item[=].item[0].linkId = "coverage.other.name"
* item[=].item[=].item[=].text = "Name des Kostenträgers"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].linkId = "coverage.other.id"
* item[=].item[=].item[=].text = "Beliebige ID"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].linkId = "coverage.other.id.note"
* item[=].item[=].item[=].text = "Bemerkung zur ID"
* item[=].item[=].item[=].answer.valueString = ""

// ---------- Sender item[5] ----------
// ################################################
* item[+].linkId = "sender"
* item[=].text = "Absender"

// --- Sender Author item[5][0]
* item[=].item[0].linkId = "sender.author"
* item[=].item[=].text = "Verantwortlicher"
* item[=].item[=].item[0].linkId = "sender.author.practitioner"
* item[=].item[=].item[=].text = "Verantwortliche Person"
* item[=].item[=].item[=].item[0].linkId = "sender.author.practitioner.title"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].answer.valueString = "Dr. med. "
* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.familyName"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].answer.valueString = "Mustermann"
* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.givenName"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].answer.valueString = "Marc"
* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.gln"
* item[=].item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].item[=].answer.valueString = "7601000050700"
* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.zsr"
* item[=].item[=].item[=].item[=].text = "ZSR"
* item[=].item[=].item[=].item[=].answer.valueString = "A123309"
* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].answer.valueString = "033 333 22 11"
* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].answer.valueString = "marc.mustermann@gruppenpraxis.ch"
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
// * item[=].item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
// * item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
// * item[=].item[=].item[=].extension.valueExpression.expression = "'sender.author.organization.'"
* item[=].item[=].item[=].linkId = "sender.author.organization"
* item[=].item[=].item[=].text = "Verantwortliche Organisation"
* item[=].item[=].item[=].item[0].linkId = "sender.author.organization.name"
* item[=].item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].item[=].answer.valueString = "Arztpraxis Messen"
* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.gln"
* item[=].item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].item[=].answer.valueString = "7601000235503"
* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.streetAddressLine"
* item[=].item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].item[=].answer.valueString = "Doktorgasse 2"
* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.postalCode"
* item[=].item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].item[=].answer.valueString = "3254"
* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.city"
* item[=].item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].item[=].answer.valueString = "Messen"
* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.country"
* item[=].item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].item[=].answer.valueString = "CH"
* item[=].item[+].linkId = "sender.dataenterer"
* item[=].item[=].text = "Erfasser"
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].item.extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].item.extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item.extension.valueExpression.expression = "'sender.dataenterer.practitioner.'"
* item[=].item[=].item.linkId = "sender.dataenterer.practitioner"
* item[=].item[=].item.text = "Erfassende Person"
* item[=].item[=].item.item[0].linkId = "sender.dataenterer.practitioner.title"
* item[=].item[=].item.item[=].text = "Titel"
* item[=].item[=].item.item[=].answer.valueString = ""
* item[=].item[=].item.item[+].linkId = "sender.dataenterer.practitioner.familyName"
* item[=].item[=].item.item[=].text = "Name"
* item[=].item[=].item.item[=].answer.valueString = ""
* item[=].item[=].item.item[+].linkId = "sender.dataenterer.practitioner.givenName"
* item[=].item[=].item.item[=].text = "Vorname"
* item[=].item[=].item.item[=].answer.valueString = ""
* item[=].item[=].item.item[+].linkId = "sender.dataenterer.practitioner.phone"
* item[=].item[=].item.item[=].text = "Telefon"
* item[=].item[=].item.item[=].answer.valueString = ""
* item[=].item[=].item.item[+].linkId = "sender.dataenterer.practitioner.email"
* item[=].item[=].item.item[=].text = "E-Mail"
* item[=].item[=].item.item[=].answer.valueString = "info@arztpraxis.ch"

// ---------- CopyReceiver item[6] ----------
// ################################################
* item[+].linkId = "receiverCopy"
* item[=].text = "Kopieempfänger (Kopie dieses Auftrags und aller daraus resultierenden Resultate)"
* item[=].item[0].linkId = "receiverCopy.practitionerRole"
* item[=].item[=].text = "Gesundheitsfachperson oder -organisation"
* item[=].item[=].item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
// * item[=].item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
// * item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
// * item[=].item[=].item[=].extension.valueExpression.expression = "'receiverCopy.practitionerRole.practitioner.'"
* item[=].item[=].item[=].linkId = "receiverCopy.practitionerRole.practitioner"
* item[=].item[=].item[=].text = "Gesundheitsfachperson"
* item[=].item[=].item[=].item[0].linkId = "receiverCopy.practitionerRole.practitioner.title"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.practitioner.familyName"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.practitioner.givenName"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
// * item[=].item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
// * item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
// * item[=].item[=].item[=].extension.valueExpression.expression = "'receiverCopy.practitionerRole.organization.'"
* item[=].item[=].item[=].linkId = "receiverCopy.practitionerRole.organization"
* item[=].item[=].item[=].text = "Gesundheitsorganisatiton"
* item[=].item[=].item[=].item[0].linkId = "receiverCopy.practitionerRole.organization.name"
* item[=].item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.organization.streetAddressLine"
* item[=].item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].item[=].answer.valueString = ""
// * item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.organization.postalCode"
* item[=].item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.organization.city"
* item[=].item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.organization.country"
* item[=].item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].item[=].answer.valueString = ""
* item[=].item[+].linkId = "receiverCopy.patient"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient"
* item[=].item[=].text = "Patient selbst"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[+].linkId = "receiverCopy.relatedPerson"
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson"
* item[=].item[=].text = "Andere Person"
* item[=].item[=].item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
// * item[=].item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
// * item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
// * item[=].item[=].item[=].extension.valueExpression.expression = "'receiverCopy.relatedPerson.'"
* item[=].item[=].item[=].linkId = "receiverCopy.relatedPerson.familyName"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].linkId = "receiverCopy.relatedPerson.givenName"
* item[=].item[=].item[=].text = "Vorame"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].linkId = "receiverCopy.relatedPerson.phone"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].answer.valueString = ""
// * item[=].item[=].item[=].repeats = true
* item[=].item[=].item[+].linkId = "receiverCopy.relatedPerson.email"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].linkId = "receiverCopy.relatedPerson.streetAddressLine"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].answer.valueString = ""
// * item[=].item[=].item[=].repeats = true
* item[=].item[=].item[+].linkId = "receiverCopy.relatedPerson.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].linkId = "receiverCopy.relatedPerson.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].linkId = "receiverCopy.relatedPerson.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].answer.valueString = ""

// ---------- Appointment item[7] ----------
// ################################################
* item[+].linkId = "appointment"
* item[=].text = "Ort und Zeit der Durchführung der angeforderten Leistung"
* item[=].item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
// * item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
// * item[=].item[=].extension.valueExpression.language = #text/fhirpath
// * item[=].item[=].extension.valueExpression.expression = "'appointment.location.'"
* item[=].item[=].linkId = "appointment.location"
* item[=].item[=].text = "Ort der Durchführung"
* item[=].item[=].item[0].linkId = "appointment.location.name"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].linkId = "appointment.location.phone"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].linkId = "appointment.location.email"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].linkId = "appointment.location.streetAddressLine"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].linkId = "appointment.location.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].linkId = "appointment.location.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].linkId = "appointment.location.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[+].linkId = "appointment.requestedPeriod"
* item[=].item[=].text = "Datum und Zeit, wann der Termin bevorzugt geplant werden soll"
* item[=].item[=].item[0].linkId = "appointment.requestedPeriod.start"
* item[=].item[=].item[=].text = "Von"
* item[=].item[=].item[=].answer.valueDateTime = "2022-08-31T09:57:34.2112Z"
* item[=].item[=].item[+].linkId = "appointment.requestedPeriod.end"
* item[=].item[=].item[=].text = "Bis"
* item[=].item[=].item[=].answer.valueDateTime = "2022-08-08T09:57:34.2112Z"
* item[=].item[+].linkId = "appointment.status"
* item[=].item[=].text = "Status"
* item[=].item[=].answer.valueCoding = http://hl7.org/fhir/appointmentstatus#proposed "Wunsch des Patienten (vorgeschlagen)"
// * item[=].item[=].answerOption[=].initialSelected = true
// * item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/appointmentstatus#pending "Vom Patienten bestätigt, aber vom Leistungserbringer noch nicht (ausstehend)"
// * item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/appointmentstatus#booked "Vom Patienten und Leistungserbringer bestätigt (gebucht)"
* item[=].item[+].linkId = "appointment.patientInstruction"
* item[=].item[=].text = "Patienteninformation für diesen Termin"
* item[=].item[=].answer.valueString = ""

// ---------- ServiceRequest Notes item[8] ----------
// ###################################################
* item[+].linkId = "note"
* item[=].text = "Bemerkungen"

* item[=].item[+].linkId = "note.text"
* item[=].item[=].text = "Kommentar"
* item[=].item[=].answer.valueString = "mark in the skin specimen points to the cranio-medial part"

// ########### specific Part ######################
/* ------------Choice of Specialty-----------------
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
*/        