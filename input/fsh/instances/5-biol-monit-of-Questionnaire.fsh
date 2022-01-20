Instance: 5-biol-monit-of-Questionnaire
InstanceOf: ChOrfQuestionnaire
Title: "questionnaire 5-biol-monit"
Description: "Example for Laboratory Order Questionnaire for toxicological Monitoring"
Usage: #definition
* id = "5-biol-monit"
* meta.versionId = "1"
* meta.lastUpdated = "2019-04-01T20:17:53.340+00:00"
* meta.profile[0] = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extract"
* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/StructureMap/OrfQrToBundle"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-sourceStructureMap"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/StructureMap/OrfPrepopBundleToQr"
* extension[+].extension[0].url = "name"
* extension[=].extension[=].valueId = "Bundle"
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #Bundle
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "The Bundle that is to be used to pre-populate the form"
* extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* url = "http://fhir.ch/ig/ch-lab-order/Questionnaire/5-biol-monit"
* version = "0.9.1"
* name = "LabOrderExample"
* title = "Lab Order Example"
* status = #active
* subjectType = #Patient
* date = "2020-12-17"
* publisher = "HL7 Switzerland"
* contact.name = "HL7 Switzerland"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.hl7.ch/"
* jurisdiction = urn:iso:std:iso:3166#CH
* copyright = "CC-BY-SA-4.0"
* item[0].linkId = "order"
* item[=].text = "Auftrag"
* item[=].type = #group
* item[=].required = true

// * item[=].item[0].linkId = "order.title"
// * item[=].item[=].text = "Titel"
// * item[=].item[=].type = #string
// * item[=].item[=].required = true
// * item[=].item[=].readOnly = true
// * item[=].item[=].initial.valueString = "Laborauftrag"
// 
// * item[=].item[+].linkId = "order.category"
// * item[=].item[=].text = "Kategorie"
// * item[=].item[=].type = #choice
// * item[=].item[=].required = true
// * item[=].item[=].readOnly = true
// * item[=].item[=].answerValueSet = DocumentEntryClassCode
// * item[=].item[=].initial.valueCoding = SCT#721963009 // Order (record artifact) | Untersuchungsauftrag
// 
// * item[=].item[+].linkId = "order.type"
// * item[=].item[=].text = "Typ"
// * item[=].item[=].type = #choice
// * item[=].item[=].required = true
// * item[=].item[=].readOnly = true
// * item[=].item[=].answerValueSet = DocumentEntryTypeCode
// * item[=].item[=].initial.valueCoding = SCT#721965002 // Laboratory Order | Laborauftrag | Mandat d’analyse en laboratoire | Richiesta di analisi di laboratorio

* item[=].item[+].linkId = "order.placerOrderIdentifier"
* item[=].item[=].text = "Auftragsnummer des Auftraggebers"
* item[=].item[=].type = #string
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension.valueBoolean = true
* item[=].item[=].linkId = "order.placerOrderIdentifierDomain"
* item[=].item[=].text = "Identifier Domain der Auftragsnummer des Auftraggebers"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "order.fillerOrderIdentifier"
* item[=].item[=].text = "Auftragsnummer des Auftragsempfängers"
* item[=].item[=].type = #string
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension.valueBoolean = true
* item[=].item[=].linkId = "order.fillerOrderIdentifierDomain"
* item[=].item[=].text = "Identifier Domain der Auftragsnummer des Auftragsempfängers"
* item[=].item[=].type = #string
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension.valueBoolean = true
* item[=].item[=].linkId = "order.precedentDocumentIdentifier"
* item[=].item[=].text = "Identifier des Vorgängerdokuments"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "order.notificationContactDocument"
* item[=].item[=].text = "Dringender Benachrichtigungskontakt für dieses Dokument"
* item[=].item[=].type = #group
* item[=].item[=].item.linkId = "order.notificationContactDocument.practitioner"
* item[=].item[=].item.text = "Zu benachrichtigende Person"
* item[=].item[=].item.type = #group
* item[=].item[=].item.item[0].linkId = "order.notificationContactDocument.practitioner.title"
* item[=].item[=].item.item[=].text = "Titel"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocument.practitioner.familyName"
* item[=].item[=].item.item[=].text = "Name"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocument.practitioner.givenName"
* item[=].item[=].item.item[=].text = "Vorname"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocument.practitioner.phone"
* item[=].item[=].item.item[=].text = "Telefon"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocument.practitioner.email"
* item[=].item[=].item.item[=].text = "E-Mail"
* item[=].item[=].item.item[=].type = #string
* item[=].item[+].linkId = "order.notificationContactDocumentResponse"
* item[=].item[=].text = "Dringender Benachrichtigungskontakt für die Antwort auf dieses Dokument"
* item[=].item[=].type = #group
* item[=].item[=].item.linkId = "order.notificationContactDocumentResponse.practitioner"
* item[=].item[=].item.text = "Zu benachrichtigende Person"
* item[=].item[=].item.type = #group
* item[=].item[=].item.item[0].linkId = "order.notificationContactDocumentResponse.practitioner.title"
* item[=].item[=].item.item[=].text = "Titel"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocumentResponse.practitioner.familyName"
* item[=].item[=].item.item[=].text = "Name"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocumentResponse.practitioner.givenName"
* item[=].item[=].item.item[=].text = "Vorname"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocumentResponse.practitioner.phone"
* item[=].item[=].item.item[=].text = "Telefon"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocumentResponse.practitioner.email"
* item[=].item[=].item.item[=].text = "E-Mail"
* item[=].item[=].item.item[=].type = #string
* item[=].item[+].linkId = "order.priority"
* item[=].item[=].text = "Auftragspriorität"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = REQUESTPRIORITY#routine "Die Anfrage hat normale Priorität."
* item[=].item[=].answerOption[=].initialSelected = true
* item[=].item[=].answerOption[+].valueCoding = REQUESTPRIORITY#urgent "Die Anfrage sollte dringend bearbeitet werden - höhere Priorität als normal."
* item[=].item[=].answerOption[+].valueCoding = REQUESTPRIORITY#asap "Die Anfrage sollte so schnell wie möglich bearbeitet werden - höhere Priorität als dringend."
* item[=].item[=].answerOption[+].valueCoding = REQUESTPRIORITY#stat "Die Anfrage sollte sofort bearbeitet werden - höchstmögliche Priorität. Z.B. bei einem Notfall."
* item[+].linkId = "receiver"
* item[=].text = "Empfänger"
* item[=].type = #group
* item[=].item[0].linkId = "receiver.practitioner"
* item[=].item[=].text = "Empfangende Person"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "receiver.practitioner.title"
* item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiver.practitioner.familyName"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiver.practitioner.givenName"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiver.practitioner.gln"
* item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiver.practitioner.zsr"
* item[=].item[=].item[=].text = "ZSR"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiver.practitioner.phone"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiver.practitioner.email"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].type = #string
* item[=].item[+].linkId = "receiver.organization"
* item[=].item[=].text = "Empfangende Organisation"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "receiver.organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiver.organization.streetAddressLine"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[+].linkId = "receiver.organization.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiver.organization.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiver.organization.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].type = #string
* item[+].linkId = "patient"
* item[=].text = "Patient"
* item[=].type = #group
* item[=].item[0].linkId = "patient.familyName"
* item[=].item[=].text = "Name"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "patient.maidenName"
* item[=].item[=].text = "Ledigname"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "patient.givenName"
* item[=].item[=].text = "Vorname"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "patient.localPid"
* item[=].item[=].text = "Lokale Patienten-ID"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "patient.birthDate"
* item[=].item[=].text = "Geburtsdatum"
* item[=].item[=].type = #date
* item[=].item[+].linkId = "patient.gender"
* item[=].item[=].text = "Geschlecht"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = ADMINISTRATIVEGENDER#male "Männlich"
* item[=].item[=].answerOption[=].initialSelected = true
* item[=].item[=].answerOption[+].valueCoding = ADMINISTRATIVEGENDER#female "Weiblich"
* item[=].item[=].answerOption[+].valueCoding = ADMINISTRATIVEGENDER#other "Anderes"

// patient.maritalStatus

* item[=].item[+].linkId = "patient.maritalStatus"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.maritalStatus"
* item[=].item[=].text = "Zivilstand"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = ECH-11-maritalstatus#1 "ledig"
* item[=].item[=].answerOption[+].valueCoding = ECH-11-maritalstatus#2 "verheiratet"
* item[=].item[=].answerOption[+].valueCoding = ECH-11-maritalstatus#3 "verwitwet"
* item[=].item[=].answerOption[+].valueCoding = ECH-11-maritalstatus#4 "geschieden"
* item[=].item[=].answerOption[+].valueCoding = ECH-11-maritalstatus#5 "unverheiratet"
* item[=].item[=].answerOption[+].valueCoding = ECH-11-maritalstatus#6 "in eingetragener Partnerschaft"
* item[=].item[=].answerOption[+].valueCoding = ECH-11-maritalstatus#7 "aufgelöste Partnerschaft"
* item[=].item[=].answerOption[+].valueCoding = ECH-11-maritalstatus#9 "unbekannt"

* item[=].item[+].linkId = "patient.phone"
* item[=].item[=].text = "Telefon"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "patient.email"
* item[=].item[=].text = "E-Mail"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "patient.streetAddressLine"
* item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].type = #string
* item[=].item[=].repeats = true
* item[=].item[+].linkId = "patient.postalCode"
* item[=].item[=].text = "PLZ"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "patient.city"
* item[=].item[=].text = "Ort"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "patient.country"
* item[=].item[=].text = "Land"
* item[=].item[=].type = #string
* item[+].linkId = "sender"
* item[=].text = "Absender"
* item[=].type = #group
* item[=].required = true
* item[=].item[0].linkId = "sender.author"
* item[=].item[=].text = "Verantwortlicher"
* item[=].item[=].type = #group
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "sender.author.practitioner"
* item[=].item[=].item[=].text = "Verantwortliche Person"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[0].linkId = "sender.author.practitioner.title"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.familyName"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.givenName"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.gln"
* item[=].item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.zsr"
* item[=].item[=].item[=].item[=].text = "ZSR"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.phone"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.email"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "sender.author.organization"
* item[=].item[=].item[=].text = "Verantwortliche Organisation"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[0].linkId = "sender.author.organization.name"
* item[=].item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.streetAddressLine"
* item[=].item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.postalCode"
* item[=].item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.city"
* item[=].item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.country"
* item[=].item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[+].linkId = "sender.dataenterer"
* item[=].item[=].text = "Erfasser"
* item[=].item[=].type = #group
* item[=].item[=].item.linkId = "sender.dataenterer.practitioner"
* item[=].item[=].item.text = "Erfassende Person"
* item[=].item[=].item.type = #group
* item[=].item[=].item.item[0].linkId = "sender.dataenterer.practitioner.familyName"
* item[=].item[=].item.item[=].text = "Name"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "sender.dataenterer.practitioner.givenName"
* item[=].item[=].item.item[=].text = "Vorname"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "sender.dataenterer.practitioner.phone"
* item[=].item[=].item.item[=].text = "Telefon"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "sender.dataenterer.practitioner.email"
* item[=].item[=].item.item[=].text = "E-Mail"
* item[=].item[=].item.item[=].type = #string
* item[+].linkId = "receiverCopies"
* item[=].text = "Kopieempfänger"
* item[=].type = #group
* item[=].item.linkId = "receiverCopy"
* item[=].item.text = "Kopieempfangende Organisation oder Person"
* item[=].item.type = #group
* item[=].item.repeats = true
* item[=].item.item[0].linkId = "receiverCopy.organization.name"
* item[=].item.item[=].text = "Name der Organisation"
* item[=].item.item[=].type = #string
* item[=].item.item[+].linkId = "receiverCopy.title"
* item[=].item.item[=].text = "Titel"
* item[=].item.item[=].type = #string
* item[=].item.item[+].linkId = "receiverCopy.familyName"
* item[=].item.item[=].text = "Name"
* item[=].item.item[=].type = #string
* item[=].item.item[+].linkId = "receiverCopy.givenName"
* item[=].item.item[=].text = "Vorname"
* item[=].item.item[=].type = #string
* item[=].item.item[+].linkId = "receiverCopy.phone"
* item[=].item.item[=].text = "Telefon"
* item[=].item.item[=].type = #string
* item[=].item.item[+].linkId = "receiverCopy.email"
* item[=].item.item[=].text = "E-Mail"
* item[=].item.item[=].type = #string
* item[=].item.item[+].linkId = "receiverCopy.streetAddressLine"
* item[=].item.item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item.item[=].type = #string
* item[=].item.item[=].repeats = true
* item[=].item.item[+].linkId = "receiverCopy.postalCode"
* item[=].item.item[=].text = "PLZ"
* item[=].item.item[=].type = #string
* item[=].item.item[+].linkId = "receiverCopy.city"
* item[=].item.item[=].text = "Ort"
* item[=].item.item[=].type = #string
* item[=].item.item[+].linkId = "receiverCopy.country"
* item[=].item.item[=].text = "Land"
* item[=].item.item[=].type = #string
* item[+].linkId = "hematology"
* item[=].text = "Hematology"
* item[=].type = #group
* item[=].item.linkId = "lab"
* item[=].item.text = "Laborwerte"
* item[=].item.type = #choice
* item[=].item.repeats = true
* item[=].item.answerOption[0].valueCoding = LOINC#24360-0 "Hemoglobin and Hematocrit panel - Blood"
* item[=].item.answerOption[+].valueCoding = LOINC#43113-0 "Hemoglobin electrophoresis panel in Blood"
* item[=].item.answerOption[+].valueCoding = LOINC#57021-8 "CBC W Auto Differential panel - Blood"
* item[=].item.answerOption[+].valueCoding = LOINC#58410-2 "CBC panel - Blood by Automated count"
* item[=].item.answerOption[+].valueCoding = LOINC#57023-4 "Auto Differential panel - Blood"
* item[+].linkId = "toxicology"
* item[=].text = "Toxicology"
* item[=].type = #group
* item[=].item.linkId = "tox"
* item[=].item.text = "Toxic Content"
* item[=].item.type = #choice
* item[=].item.repeats = true
* item[=].item.answerOption[0].valueCoding = LOINC#29587-3 "Toxicology panel - Blood"
* item[=].item.answerOption[+].valueCoding = LOINC#54454-4 "Arsenic fractions panel - Urine"
* item[=].item.answerOption[+].valueCoding = LOINC#29589-9 "Heavy metals panel - Urine"