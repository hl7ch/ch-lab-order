Instance: LabOrder-form
InstanceOf: ChOrfQuestionnaire
Title: "Questionnaire Lab Order from Catalog"
Description: "Example for generic Questionnaire (flat version) using Observation Definitions from Catalog"
Usage: #example
* id = "LabOrder-form"
* meta.versionId = "1"
* meta.lastUpdated = "2022-10-21T20:17:53.340+00:00"
* meta.profile[0] = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-smap"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-pop-exp"

* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
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

* url = "http://fhir.ch/ig/ch-lab-order/Questionnaire/LabOrder-form"
// * version = "1.1.0-assembled"
* name = "LabOrderForm"
* title = "Questionnaire Lab Order from Catalog"
* status = #active
* subjectType = #Patient
* date = "2022-10-10"
* publisher = "HL7 Switzerland"
* contact.name = "Marcel Hanselmann"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.hl7.ch"
* jurisdiction = urn:iso:std:iso:3166#CH
* copyright = "CC-BY-SA-4.0"

// --- order (Auftrag) item[0] ----------
* item[0].linkId = "order"
* item[=].text = "Auftrag"
* item[=].type = #group
* item[=].required = true

// --- order.placer item[0][0] ----------
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
* item[=].item[=].answerOption[0].valueCoding = $request-priority#routine "Die Anfrage hat normale Priorität."
* item[=].item[=].answerOption[=].initialSelected = true
* item[=].item[=].answerOption[+].valueCoding = $request-priority#urgent "Die Anfrage sollte dringend bearbeitet werden - höhere Priorität als normal."
* item[=].item[=].answerOption[+].valueCoding = $request-priority#asap "Die Anfrage sollte so schnell wie möglich bearbeitet werden - höhere Priorität als dringend."
* item[=].item[=].answerOption[+].valueCoding = $request-priority#stat "Die Anfrage sollte sofort bearbeitet werden - höchstmögliche Priorität. Z.B. bei einem Notfall."
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

* item[=].item[=].item[+].linkId = "receciver.organization.gln"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition-ch-core-organization-definitions.html#Organization.identifier:GLN"
* item[=].item[=].item[=].text = "GLN"
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
* item[=].required = true
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
* item[=].item[=].answerOption[0].valueCoding = $administrative-gender#male "Männlich"
* item[=].item[=].answerOption[=].initialSelected = true
* item[=].item[=].answerOption[+].valueCoding = $administrative-gender#female "Weiblich"
* item[=].item[=].answerOption[+].valueCoding = $administrative-gender#other "Anderes"

// patient.maritalStatus

* item[=].item[+].linkId = "patient.maritalStatus"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.maritalStatus"
* item[=].item[=].text = "Zivilstand"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[+].valueCoding = $ech-11-maritalstatus#1 "ledig"
* item[=].item[=].answerOption[+].valueCoding = $ech-11-maritalstatus#2 "verheiratet"
* item[=].item[=].answerOption[+].valueCoding = $ech-11-maritalstatus#3 "verwitwet"
* item[=].item[=].answerOption[+].valueCoding = $ech-11-maritalstatus#4 "geschieden"
* item[=].item[=].answerOption[+].valueCoding = $ech-11-maritalstatus#5 "unverheiratet"
* item[=].item[=].answerOption[+].valueCoding = $ech-11-maritalstatus#6 "in eingetragener Partnerschaft"
* item[=].item[=].answerOption[+].valueCoding = $ech-11-maritalstatus#7 "aufgelöste Partnerschaft"
* item[=].item[=].answerOption[+].valueCoding = $ech-11-maritalstatus#9 "unbekannt"

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

// * item[=].item[+].linkId = "patient.languageOfCorrespondance"
// * item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.communication:languageOfCorrespondance"
// * item[=].item[=].text = "Korrespondenssprache"
// * item[=].item[=].type = #choice
// * item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-epr-term/ValueSet/DocumentEntry.languageCode"

// ---------- Patient Contact Person : The principle target of a particular Form Content is one patient ----------
* item[=].item[+].linkId = "patient.contactperson"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.contact"
* item[=].item[=].text = "Kontaktperson"
* item[=].item[=].type = #group

* item[=].item[=].item[+].linkId = "patient.contactperson.relationship"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.contact.relationship.text"
* item[=].item[=].item[=].text = "Beziehung"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "patient.contactperson.familyName"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.contact.name.family"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "patient.contactperson.givenName"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.contact.name.given"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "patient.contactperson.phone"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.contact.telecom.value"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].repeats = true

* item[=].item[=].item[+].linkId = "patient.contactperson.email"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.contact.telecom.value"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].type = #string



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

* item[=].item[+].linkId = "receiverCopy.practitionerRole"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole"
* item[=].item[=].text = "Gesundheitsfachperson oder -organisation"
* item[=].item[=].type = #group
* item[=].item[=].repeats = true

* item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.practitioner"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].item[=].text = "Gesundheitsfachperson"
* item[=].item[=].item[=].type = #group

* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.practitioner.title"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-humanname#HumanName.prefix"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.practitioner.familyName"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-humanname#HumanName.family"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.practitioner.givenName"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-humanname#HumanName.given"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.practitioner.phone"
* item[=].item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/ContactPoint#ContactPoint.value"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.practitioner.email"
* item[=].item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/ContactPoint#ContactPoint.value"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.organization"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.organization"
* item[=].item[=].item[=].text = "Gesundheitsorganisatiton"
* item[=].item[=].item[=].type = #group

* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.organization.name"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.name"
* item[=].item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.organization.streetAddressLine"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-address#Address.line"
* item[=].item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].repeats = true

* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.organization.postalCode"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-address#Address.postalCode"
* item[=].item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.organization.city"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-address#Address.city"
* item[=].item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.organization.country"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-address#Address.country"
* item[=].item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].item[=].type = #string

* item[=].item[+].linkId = "receiverCopy.patient"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient"
* item[=].item[=].text = "Patient selbst"
* item[=].item[=].type = #boolean

* item[=].item[+].linkId = "receiverCopy.relatedPerson"
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson"
* item[=].item[=].text = "Andere Person"
* item[=].item[=].type = #group
* item[=].item[=].repeats = true

* item[=].item[=].item[+].linkId = "receiverCopy.relatedPerson.familyName"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.name.family"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverCopy.relatedPerson.givenName"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.name.given"
* item[=].item[=].item[=].text = "Vorame"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverCopy.relatedPerson.phone"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.telecom.value"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].repeats = true

* item[=].item[=].item[+].linkId = "receiverCopy.relatedPerson.email"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.telecom.value"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverCopy.relatedPerson.streetAddressLine"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.address.line"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].repeats = true

* item[=].item[=].item[+].linkId = "receiverCopy.relatedPerson.postalCode"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.address.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverCopy.relatedPerson.city"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.address.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "receiverCopy.relatedPerson.country"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.address.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].type = #string

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

* item[+].linkId = "consent"
* item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-servicerequest#ServiceRequest.supportingInfo"
* item[=].text = "Einverständniserklärung"
* item[=].type = #group
* item[=].item[0].linkId = "consent.treatment"
* item[=].item[=].text = "Einverständnis des Patienten zur Behandlung"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "consent.patientPrivacy"
* item[=].item[=].text = "Einverständnis des Patienten zum Datenschutz"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "consent.research"
* item[=].item[=].text = "Einverständnis des Patienten zur Forschung"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "consent.advancedCareDirective"
* item[=].item[=].text = "Patientenverfügung"
* item[=].item[=].type = #string
* item[+].linkId = "coverage"
* item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-servicerequest#ServiceRequest.insurance"
* item[=].text = "Kostenträger"
* item[=].type = #group
* item[=].item[0].linkId = "coverage.uvg"
* item[=].item[=].text = "Unfallversicherung (nach UVG)"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "coverage.kvg"
* item[=].item[=].text = "Grundversicherung (nach KVG)"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "coverage.vvg"
* item[=].item[=].text = "Zusatzversicherung (nach VVG)"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "coverage.vvgOther"
* item[=].item[=].text = "Andere (nach VVG)"
* item[=].item[=].type = #string
* item[+].linkId = "previousResult"
* item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-servicerequest#ServiceRequest.supportingInfo"
* item[=].text = "Vorheriges Untersuchungsresultat"
* item[=].type = #group
* item[=].item.linkId = "previousResult.result"
* item[=].item.text = "Untersuchungsresultat"
* item[=].item.type = #string
* item[=].item.repeats = true

//################# end of general part  ################################
// --- Choice of Casestudy ---
//#######################################################################

// --- Choice of casestudy item[12]---
* item[+].linkId = "casestudy"
* item[=].text = "Case Studies"
* item[=].type = #group

// --- casestudy 1-tvt
//==========================
* item[=].item[+].linkId = "1-tvt"
* item[=].item[=].definition = "" // url zu 1 tvt ?? evtl. plan definition
* item[=].item[=].text = "Tiefe Venenthrombose Questionnaire"
* item[=].item[=].type = #boolean
* item[=].item[=].item[0].linkId = "1-tvt.labServices"
* item[=].item[=].item[=].text = "Case Study tiefe Venenthrombose"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "1-tvt"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[=].item[=].item[+].linkId = "hematology-1"
* item[=].item[=].item[=].item[=].text = "Hematology"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item.linkId = "hemato-subset"
* item[=].item[=].item[=].item[=].item.text = "Hämatologie Subset"
* item[=].item[=].item[=].item[=].item.type = #choice
* item[=].item[=].item[=].item[=].item.repeats = true
* item[=].item[=].item[=].item[=].item.answerOption[0].valueCoding = $lnc#24360-0 "Hemoglobin and Hematocrit panel - Blood"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $lnc#43113-0 "Hemoglobin electrophoresis panel in Blood"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $lnc#57021-8 "CBC W Auto Differential panel - Blood"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $lnc#58410-2 "CBC panel - Blood by Automated count"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $lnc#57023-4 "Auto Differential panel - Blood"
* item[=].item[=].item[=].item[+].linkId = "coagulation"
* item[=].item[=].item[=].item[=].text = "Coagulation"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item.linkId = "d-dimer"
* item[=].item[=].item[=].item[=].item.text = "D-Dimer"
* item[=].item[=].item[=].item[=].item.type = #choice
* item[=].item[=].item[=].item[=].item.repeats = true
* item[=].item[=].item[=].item[=].item.answerOption.valueCoding = $lnc#55398-2 "Short Fibrin D-dimer FEU and DDU panel - Platelet poor plasma"
* item[=].item[=].item[=].item[+].linkId = "clinical-chemistry-1"
* item[=].item[=].item[=].item[=].text = "Clinical Chemistry"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item.linkId = "crp-1"
* item[=].item[=].item[=].item[=].item.text = "CRP"
* item[=].item[=].item[=].item[=].item.type = #choice
* item[=].item[=].item[=].item[=].item.repeats = true
* item[=].item[=].item[=].item[=].item.answerOption[0].valueCoding = $lnc#1988-5 "C reactive protein [Mass/Volume] in Serum or Plasma"
* item[=].item[=].item[=].item[=].item.answerOption[=].initialSelected = true
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $lnc#76485-2 "C reactive protein [Moles/volume] in Serum or Plasma"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $lnc#30522-7 "C reactive protein [Mass/volume] in Serum or Plasma by High sensitivity method"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $lnc#76486-0 "C reactive protein [Moles/volume] in Serum or Plasma by High sensitivity method"

// --- casestudy 2-pertussis
//==========================
* item[=].item[+].linkId = "2-pertussis"
* item[=].item[=].definition = ""  // url zu 2-pertussis
* item[=].item[=].text = "Abklärung Husten Questionnaire"
* item[=].item[=].type = #boolean
* item[=].item[=].item[0].linkId = "2-pertussis.labServices"
* item[=].item[=].item[=].text = "Case Study Husten"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "2-pertussis"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[=].item[=].item[+].linkId = "microbiology-2"
* item[=].item[=].item[=].item[=].text = "Mikrobiologie"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item.linkId = "per"
* item[=].item[=].item[=].item[=].item.text = "Pertussis and Parapertussis DNA"
* item[=].item[=].item[=].item[=].item.type = #choice
* item[=].item[=].item[=].item[=].item.repeats = true
* item[=].item[=].item[=].item[=].item.answerOption.valueCoding = $lnc#90441-7 "B pert+parapert DNA Pnl Nph"
* item[=].item[=].item[=].item[+].linkId = "hematology-2"
* item[=].item[=].item[=].item[=].text = "Hämatologie"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item.linkId = "Blood-diff"
* item[=].item[=].item[=].item[=].item.text = "Manual Differential panel - Blood"
* item[=].item[=].item[=].item[=].item.type = #choice
* item[=].item[=].item[=].item[=].item.repeats = true
* item[=].item[=].item[=].item[=].item.answerOption.valueCoding = $lnc#24318-8 "Manual diff Bld"
* item[=].item[=].item[=].item[+].linkId = "clinical-chemistry-2"
* item[=].item[=].item[=].item[=].text = "Klinische Chemie"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item.linkId = "crp-2"
* item[=].item[=].item[=].item[=].item.text = "C-reactive Protein"
* item[=].item[=].item[=].item[=].item.type = #choice
* item[=].item[=].item[=].item[=].item.repeats = true
* item[=].item[=].item[=].item[=].item.answerOption.valueCoding = $lnc#1988-5 "C reactive protein [Mass/volume] in Serum or Plasma"

// --- casestudy 3-gyn
//==========================
* item[=].item[+].linkId = "3-gyn"
* item[=].item[=].definition = "" // url zu 3-gyn ?? evtl. plan definition
* item[=].item[=].text = "Gynäkologische Vorsorge Questionnaire"
* item[=].item[=].type = #boolean
* item[=].item[=].item[0].linkId = "3-gyn.labServices"
* item[=].item[=].item[=].text = "Case Study Gynäkologische Vorsorge"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "3-gyn"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[=].item[=].item[+].linkId = "cytology"
* item[=].item[=].item[=].item[=].text = "Cytology and Microbiology"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item.linkId = "cervicalSmear"
* item[=].item[=].item[=].item[=].item.text = "Cervical Smear"
* item[=].item[=].item[=].item[=].item.type = #choice
* item[=].item[=].item[=].item[=].item.repeats = true
* item[=].item[=].item[=].item[=].item.answerOption[0].valueCoding = $lnc#86662-4 "Pap smear tests - FPAR 2.0 set"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $lnc#14503-7 "Human papilloma virus 16+18 Ag [Presence] in Cervix"
* item[=].item[=].item[=].item[+].linkId = "urin"
* item[=].item[=].item[=].item[=].text = "Urin"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item.linkId = "combur9"
* item[=].item[=].item[=].item[=].item.text = "Combur-9"
* item[=].item[=].item[=].item[=].item.type = #choice
* item[=].item[=].item[=].item[=].item.repeats = true
* item[=].item[=].item[=].item[=].item.answerOption.valueCoding = $lnc#50556-0 "Urinalysis dipstick panel - Urine by Automated test strip"
* item[=].item[=].item[=].item[+].linkId = "obstetricalPanels"
* item[=].item[=].item[=].item[=].text = "Schwangerschaftsvorsorge"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item.linkId = "obstetric"
* item[=].item[=].item[=].item[=].item.text = "Obstetric 1996 panel – Serum and Blood"
* item[=].item[=].item[=].item[=].item.type = #choice
* item[=].item[=].item[=].item[=].item.repeats = true
* item[=].item[=].item[=].item[=].item.answerOption.valueCoding = $lnc#24364-2 "Obstetric 1996 Pnl Ser+Bld"

// --- casestudy 4-sepsis
//==========================
* item[=].item[+].linkId = "4-sepis"
* item[=].item[=].definition = ""  // url zu 4-sepis
* item[=].item[=].text = "Abklärung Sepsis Questionnaire"
* item[=].item[=].type = #boolean
* item[=].item[=].item[0].linkId = "4-sepis.labServices"
* item[=].item[=].item[=].text = "Case Study Sepis"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "4-sepis"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[=].item[=].item[+].linkId = "hematology-4"
* item[=].item[=].item[=].item[=].text = "Hematology"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item.linkId = "lab-4"
* item[=].item[=].item[=].item[=].item.text = "Laborwerte"
* item[=].item[=].item[=].item[=].item.type = #choice
* item[=].item[=].item[=].item[=].item.repeats = true
* item[=].item[=].item[=].item[=].item.answerOption[0].valueCoding = $lnc#24360-0 "Hemoglobin and Hematocrit panel - Blood"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $lnc#43113-0 "Hemoglobin electrophoresis panel in Blood"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $lnc#57021-8 "CBC W Auto Differential panel - Blood"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $lnc#58410-2 "CBC panel - Blood by Automated count"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $lnc#57023-4 "Auto Differential panel - Blood"
* item[=].item[=].item[=].item[+].linkId = "microbiology-4"
* item[=].item[=].item[=].item[=].text = "Mikrobiologie"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item[0].linkId = "culture"
* item[=].item[=].item[=].item[=].item[=].text = "Blood by Culture"
* item[=].item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[=].item[=].answerOption.valueCoding = $lnc#90423-5 "Microorganism preliminary growth detection panel - Blood by Culture"
* item[=].item[=].item[=].item[=].item[+].linkId = "id-susc"
* item[=].item[=].item[=].item[=].item[=].text = "Bacterial Identification and Susceptibility"
* item[=].item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[=].item[=].answerOption.valueCoding = $lnc#85421-6 "Bacterial identification and susceptibility panel - Isolate"
* item[=].item[=].item[=].item[+].linkId = "clinical-chemistry-4"
* item[=].item[=].item[=].item[=].text = "Klinische Chemie"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item.linkId = "crp-4"
* item[=].item[=].item[=].item[=].item.text = "CRP"
* item[=].item[=].item[=].item[=].item.type = #choice
* item[=].item[=].item[=].item[=].item.repeats = true
* item[=].item[=].item[=].item[=].item.answerOption[0].valueCoding = $lnc#1988-5 "C reactive protein [Mass/Volume] in Serum or Plasma"
* item[=].item[=].item[=].item[=].item.answerOption[=].initialSelected = true
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $lnc#76485-2 "C reactive protein [Moles/volume] in Serum or Plasma"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $lnc#30522-7 "C reactive protein [Mass/volume] in Serum or Plasma by High sensitivity method"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $lnc#76486-0 "C reactive protein [Moles/volume] in Serum or Plasma by High sensitivity method"

// --- casestudy 5-biol-monit
//==========================
* item[=].item[+].linkId = "5-biol-monit"
* item[=].item[=].definition = "" // url zu 5-biol-monit ?? evtl. plan definition
* item[=].item[=].text = "Biologisches Monitoring Questionnaire"
* item[=].item[=].type = #boolean
* item[=].item[=].item[0].linkId = "5-biol-monit.labServices"
* item[=].item[=].item[=].text = "Case Study biologisches Monitoring"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "5-biol-monit"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[=].item[=].item[+].linkId = "hematology-5"
* item[=].item[=].item[=].item[=].text = "Hematology"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item.linkId = "lab-5"
* item[=].item[=].item[=].item[=].item.text = "Laborwerte"
* item[=].item[=].item[=].item[=].item.type = #choice
* item[=].item[=].item[=].item[=].item.repeats = true
* item[=].item[=].item[=].item[=].item.answerOption[0].valueCoding = $lnc#24360-0 "Hemoglobin and Hematocrit panel - Blood"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $lnc#43113-0 "Hemoglobin electrophoresis panel in Blood"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $lnc#57021-8 "CBC W Auto Differential panel - Blood"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $lnc#58410-2 "CBC panel - Blood by Automated count"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $lnc#57023-4 "Auto Differential panel - Blood"
* item[=].item[=].item[=].item[+].linkId = "toxicology"
* item[=].item[=].item[=].item[=].text = "Toxicology"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item.linkId = "tox"
* item[=].item[=].item[=].item[=].item.text = "Toxic Content"
* item[=].item[=].item[=].item[=].item.type = #choice
* item[=].item[=].item[=].item[=].item.repeats = true
* item[=].item[=].item[=].item[=].item.answerOption[0].valueCoding = $lnc#29587-3 "Toxicology panel - Blood"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $lnc#54454-4 "Arsenic fractions panel - Urine"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $lnc#29589-9 "Heavy metals panel - Urine"


// --- casestudy 6-histopath
//==========================
* item[=].item[+].linkId = "6-histopath"
* item[=].item[=].definition = ""  // url zu 6-histopath
* item[=].item[=].text = "Pathologische Untersuchung einer Gewebsprobe Questionnaire"
* item[=].item[=].type = #boolean
* item[=].item[=].item[0].linkId = "6-histopath.labServices"
* item[=].item[=].item[=].text = "Case Study Pathologische Untersuchung einer Gewebsprobe"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "6-histopath"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[=].item[=].item[+].linkId = "labSpecialties"
* item[=].item[=].item[=].item[=].text = "Labor Sparten"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item.linkId = "labSpecialties.pathology"
* item[=].item[=].item[=].item[=].item.definition = "27898-6"
* item[=].item[=].item[=].item[=].item.text = "Pathology"
* item[=].item[=].item[=].item[=].item.type = #boolean
* item[=].item[=].item[=].item[=].item.item.linkId = "labSpecialties.pathology.panels"
* item[=].item[=].item[=].item[=].item.item.text = "Pathology Panels"
* item[=].item[=].item[=].item[=].item.item.type = #group
* item[=].item[=].item[=].item[=].item.item.enableWhen.question = "labSpecialties.pathology"
* item[=].item[=].item[=].item[=].item.item.enableWhen.operator = #=
* item[=].item[=].item[=].item[=].item.item.enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[=].item.item.item[0].linkId = "labSpecialties.pathology.panels.Autopsy"
* item[=].item[=].item[=].item[=].item.item.item[=].definition = "18743-5"
* item[=].item[=].item[=].item[=].item.item.item[=].text = "Autopsy report"
* item[=].item[=].item[=].item[=].item.item.item[=].type = #boolean
* item[=].item[=].item[=].item[=].item.item.item[+].linkId = "labSpecialties.pathology.panels.PathologyStudy"
* item[=].item[=].item[=].item[=].item.item.item[=].definition = "11526-1"
* item[=].item[=].item[=].item[=].item.item.item[=].text = "Pathology Study"
* item[=].item[=].item[=].item[=].item.item.item[=].type = #boolean
* item[=].item[=].item[=].item[=].item.item.item[+].linkId = "labSpecialties.pathology.panels.SurgicalPathologyStudy"
* item[=].item[=].item[=].item[=].item.item.item[=].definition = "11529-5"
* item[=].item[=].item[=].item[=].item.item.item[=].text = "Surgical pathology study"
* item[=].item[=].item[=].item[=].item.item.item[=].type = #boolean
