Instance: 4-sepsis-of-ChOrfQuestionnaireResponse
InstanceOf: ChOrfQuestionnaireResponse
Title: "questionnaire response 4-sepsis"
Description: "Example for Laboratory Order Questionnaire response for Sepsis Investigation"
Usage: #definition
* id = "4-sepsis"
* meta.versionId = "1"
* meta.lastUpdated = "2019-04-01T20:17:53.340+00:00"
* questionnaire = "http://fhir.ch/ig/ch-lab-order/Questionnaire/4-sepsis"
* status = #completed

* item[0].linkId = "order"
* item[=].text = "Auftrag"

// * item[=].item[+].linkId = "order.title"
// * item[=].item[=].text = "Titel"
// * item[=].item[=].answer.valueString = "Laborauftrag"
// 
// * item[=].item[+].linkId = "order.category"
// * item[=].item[=].text = "Kategorie"
// * item[=].item[=].answer.valueCoding = SCT#721963009 "Order"
// 
// * item[=].item[+].linkId = "order.type"
// * item[=].item[=].text = "Typ"
// * item[=].item[=].answer.valueCoding = SCT#721965002 "Laboratory Order"

* item[=].item[+].linkId = "order.placerOrderIdentifier"
* item[=].item[=].text = "Auftragsnummer des Auftraggebers"
* item[=].item[=].answer.valueString = "123"

* item[=].item[+].linkId = "order.placerOrderIdentifierDomain"
* item[=].item[=].text = "Identifier Domain der Auftragsnummer des Auftraggebers"
* item[=].item[=].answer.valueString = "urn:oid:2.16.756.5.30"

* item[=].item[+].linkId = "order.precedentDocumentIdentifier"
* item[=].item[=].text = "Identifier des Vorgängerdokuments"
* item[=].item[=].answer.valueString = "1622f2fb-6ba3-4532-9aed-35b158def187"

* item[=].item[+].linkId = "order.notificationContactDocument"
* item[=].item[=].text = "Dringender Benachrichtigungskontakt für dieses Dokument"

* item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner"
* item[=].item[=].item[=].text = "Zu benachrichtigende Person"

* item[=].item[=].item[=].item[0].linkId = "order.notificationContactDocument.practitioner.title"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].answer.valueString = "Dr. med."
* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.familyName"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].answer.valueString = "Erlenmeyer"
* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.givenName"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].answer.valueString = "Eva"
* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].answer.valueString = "033 444 55 66"
* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocument.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].answer.valueString = "eva.erlenmeyer@labor-pipette.ch"
* item[=].item[+].linkId = "order.notificationContactDocumentResponse"
* item[=].item[=].text = "Dringender Benachrichtigungskontakt für die Antwort auf dieses Dokument"
* item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner"
* item[=].item[=].item[=].text = "Zu benachrichtigende Person"
* item[=].item[=].item[=].item[0].linkId = "order.notificationContactDocumentResponse.practitioner.title"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].answer.valueString = "Dr. med."
* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.familyName"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].answer.valueString = "Hauser"
* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.givenName"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].answer.valueString = "Hans"
* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].answer.valueString = "038 888 22 11"
* item[=].item[=].item[=].item[+].linkId = "order.notificationContactDocumentResponse.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].answer.valueString = "hans.hauser@kantonsspital.zug.ch"
* item[=].item[+].linkId = "order.priority"
* item[=].item[=].text = "Auftragspriorität"
* item[=].item[=].answer.valueCoding = RequestPriority#routine
* item[+].linkId = "receiver"
* item[=].text = "Empfänger"
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
* item[=].item[=].item[=].answer.valueString = "7601000050703"
* item[=].item[=].item[+].linkId = "receiver.practitioner.phone"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].answer.valueString = "033 444 55 66"
* item[=].item[=].item[+].linkId = "receiver.practitioner.email"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].answer.valueString = "eva.erlenmeyer@labor-pipette.ch"
* item[=].item[+].linkId = "receiver.organization"
* item[=].item[=].text = "Empfangende Organisation"
* item[=].item[=].item[0].linkId = "receiver.organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].answer.valueString = "Labor Pipette"
* item[=].item[=].item[+].linkId = "receiver.organization.streetAddressLine"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].answer[0].valueString = "Laborstrasse 23"
* item[=].item[=].item[=].answer[+].valueString = "Postfach 44"
* item[=].item[=].item[+].linkId = "receiver.organization.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].answer.valueString = "4600"
* item[=].item[=].item[+].linkId = "receiver.organization.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].answer.valueString = "Olten"
* item[=].item[=].item[+].linkId = "receiver.organization.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].answer.valueString = "Schweiz"
* item[+].linkId = "patient"
* item[=].text = "Patient"
* item[=].item[0].linkId = "patient.familyName"
* item[=].item[=].text = "Name"
* item[=].item[=].answer.valueString = "Keller"
* item[=].item[+].linkId = "patient.maidenName"
* item[=].item[=].text = "Ledigname"
* item[=].item[=].answer.valueString = "Pusterla"
* item[=].item[+].linkId = "patient.givenName"
* item[=].item[=].text = "Vorname"
* item[=].item[=].answer.valueString = "Klebsiella"
* item[=].item[+].linkId = "patient.localPid"
* item[=].item[=].text = "Lokale Patienten-ID"
* item[=].item[=].answer.valueString = "11.22.33.5444"
* item[=].item[+].linkId = "patient.birthDate"
* item[=].item[=].text = "Geburtsdatum"
* item[=].item[=].answer.valueDate = "1975-12-12"
* item[=].item[+].linkId = "patient.gender"
* item[=].item[=].text = "Geschlecht"
* item[=].item[=].answer.valueCoding = AdministrativeGender#female

// patient.maritalStatus

* item[=].item[+].linkId = "patient.maritalStatus"
* item[=].item[=].text = "Zivilstand"
* item[=].item[=].answer.valueCoding = ECH-11-maritalstatus#2 "verheiratet"

* item[=].item[+].linkId = "patient.phone"
* item[=].item[=].text = "Telefon"
* item[=].item[=].answer.valueString = "+41 64 123 45 67"
* item[=].item[+].linkId = "patient.email"
* item[=].item[=].text = "E-Mail"
* item[=].item[=].answer.valueString = "klebsiella.keller@example.ch"
* item[=].item[+].linkId = "patient.streetAddressLine"
* item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].answer[0].valueString = "Musterweg"
* item[=].item[=].answer[+].valueString = "6a"
* item[=].item[+].linkId = "patient.postalCode"
* item[=].item[=].text = "PLZ"
* item[=].item[=].answer.valueString = "6565"
* item[=].item[+].linkId = "patient.city"
* item[=].item[=].text = "Ort"
* item[=].item[=].answer.valueString = "Lenzburg"
* item[=].item[+].linkId = "patient.country"
* item[=].item[=].text = "Land"
* item[=].item[=].answer.valueString = "Schweiz"
* item[+].linkId = "sender"
* item[=].text = "Absender"
* item[=].item[0].linkId = "sender.author"
* item[=].item[=].text = "Verantwortlicher"
* item[=].item[=].item[0].linkId = "sender.author.practitioner"
* item[=].item[=].item[=].text = "Verantwortliche Person"
* item[=].item[=].item[=].item[0].linkId = "sender.author.practitioner.title"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].answer.valueString = "Dr. med."
* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.familyName"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].answer.valueString = "Hauser"
* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.givenName"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].answer.valueString = "Hans"
* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.gln"
* item[=].item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].item[=].answer.valueString = "7601000064321"
* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].answer.valueString = "038 888 22 11"
* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].answer.valueString = "hans.hauser@kantonsspital.zug.ch"
* item[=].item[=].item[+].linkId = "sender.author.organization"
* item[=].item[=].item[=].text = "Verantwortliche Organisation"
* item[=].item[=].item[=].item[0].linkId = "sender.author.organization.name"
* item[=].item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].item[=].answer.valueString = "Kantonsspital Zug"
* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.streetAddressLine"
* item[=].item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].item[=].answer[0].valueString = "Seestrasse 14"
* item[=].item[=].item[=].item[=].answer[+].valueString = "Haus C"
* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.postalCode"
* item[=].item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].item[=].answer.valueString = "8000"
* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.city"
* item[=].item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].item[=].answer.valueString = "Zug"
* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.country"
* item[=].item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].item[=].answer.valueString = "Schweiz"
* item[=].item[+].linkId = "sender.dataenterer"
* item[=].item[=].text = "Erfasser"
* item[=].item[=].item.linkId = "sender.dataenterer.practitioner"
* item[=].item[=].item.text = "Erfassende Person"
* item[=].item[=].item.item[0].linkId = "sender.dataenterer.practitioner.familyName"
* item[=].item[=].item.item[=].text = "Name"
* item[=].item[=].item.item[=].answer.valueString = "Egger"
* item[=].item[=].item.item[+].linkId = "sender.dataenterer.practitioner.givenName"
* item[=].item[=].item.item[=].text = "Vorname"
* item[=].item[=].item.item[=].answer.valueString = "Daniela"
* item[=].item[=].item.item[+].linkId = "sender.dataenterer.practitioner.phone"
* item[=].item[=].item.item[=].text = "Telefon"
* item[=].item[=].item.item[=].answer.valueString = "044 333 55 12"
* item[=].item[=].item.item[+].linkId = "sender.dataenterer.practitioner.email"
* item[=].item[=].item.item[=].text = "E-Mail"
* item[=].item[=].item.item[=].answer.valueString = "daniela.egger@kantonsspital.zug.ch"
* item[+].linkId = "receiverCopies"
* item[=].text = "Kopieempfänger"
* item[=].item[0].linkId = "receiverCopy"
* item[=].item[=].text = "Kopieempfangende Organisation oder Person"
* item[=].item[=].item[0].linkId = "receiverCopy.organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].answer.valueString = "Praxis Seeblick"
* item[=].item[=].item[+].linkId = "receiverCopy.title"
* item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].answer.valueString = "Dr. med."
* item[=].item[=].item[+].linkId = "receiverCopy.familyName"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].answer.valueString = "Meier"
* item[=].item[=].item[+].linkId = "receiverCopy.givenName"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].answer.valueString = "Sabine"
* item[=].item[=].item[+].linkId = "receiverCopy.phone"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].answer.valueString = "044 333 22 11"
* item[=].item[=].item[+].linkId = "receiverCopy.email"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].answer.valueString = "sabine.meier@praxisseeblick.ch"
* item[=].item[+].linkId = "receiverCopy"
* item[=].item[=].text = "Kopieempfangende Organisation oder Person"
* item[=].item[=].item[0].linkId = "receiverCopy.familyName"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].answer.valueString = "Costalla"
* item[=].item[=].item[+].linkId = "receiverCopy.givenName"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].answer.valueString = "Maria"
* item[=].item[=].item[+].linkId = "receiverCopy.phone"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].answer.valueString = "079 979 80 80"
* item[=].item[=].item[+].linkId = "receiverCopy.email"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].answer.valueString = "maria.costella@redwin.ch"
* item[=].item[=].item[+].linkId = "receiverCopy.streetAddressLine"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].answer[0].valueString = "Fliederweg"
* item[=].item[=].item[=].answer[+].valueString = "78"
* item[=].item[=].item[+].linkId = "receiverCopy.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].answer.valueString = "6415"
* item[=].item[=].item[+].linkId = "receiverCopy.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].answer.valueString = "Arth"
* item[=].item[=].item[+].linkId = "receiverCopy.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].answer.valueString = "Schweiz"
* item[+].linkId = "hematology"
* item[=].text = "Hematology"
* item[=].item.linkId = "lab"
* item[=].item.text = "Laborwerte"
* item[=].item.answer[0].valueCoding = LOINC#24360-0 "Hemoglobin and Hematocrit panel - Blood"
* item[=].item.answer[+].valueCoding = LOINC#43113-0 "Hemoglobin electrophoresis panel in Blood"
* item[=].item.answer[+].valueCoding = LOINC#57021-8 "CBC W Auto Differential panel - Blood"
* item[=].item.answer[+].valueCoding = LOINC#58410-2 "CBC panel - Blood by Automated count"
* item[=].item.answer[+].valueCoding = LOINC#57023-4 "Auto Differential panel - Blood"
* item[+].linkId = "microbiology"
* item[=].text = "Mikrobiologie"
* item[=].item[0].linkId = "culture"
* item[=].item[=].text = "Blood by Culture"
* item[=].item[=].answer.valueCoding = LOINC#90423-5 "Microorganism preliminary growth detection panel - Blood by Culture"
* item[=].item[+].linkId = "id-susc"
* item[=].item[=].text = "Bacterial Identification and Susceptibility"
* item[=].item[=].answer.valueCoding = LOINC#85421-6 "Bacterial identification and susceptibility panel - Isolate"
* item[+].linkId = "cc"
* item[=].text = "clinical chemistry"
* item[=].item.linkId = "crp"
* item[=].item.text = "CRP"
* item[=].item.answer[0].valueCoding = LOINC#1988-5 "C reactive protein [Mass/Volume] in Serum or Plasma"
* item[=].item.answer[+].valueCoding = LOINC#76485-2 "C reactive protein [Moles/volume] in Serum or Plasma"
* item[=].item.answer[+].valueCoding = LOINC#30522-7 "C reactive protein [Mass/volume] in Serum or Plasma by High sensitivity method"
* item[=].item.answer[+].valueCoding = LOINC#76486-0 "C reactive protein [Moles/volume] in Serum or Plasma by High sensitivity method"