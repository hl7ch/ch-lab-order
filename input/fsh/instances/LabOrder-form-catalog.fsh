Instance: LabOrder-form-Catalog
InstanceOf: ChOrfQuestionnaire
Title: "Questionnaire Lab Order from Catalog"
Description: "Example for generic Questionnaire (flat version) using Observation Definitions from Catalog"
Usage: #example
* id = "LabOrder-form-Catalog"
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

* url = "http://fhir.ch/ig/ch-lab-order/Questionnaire/LabOrder-form-Catalog"
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
*/

// ######################################################
// ------------Choice of Catalog -----------------
// ######################################################

* item[+].linkId = "lab-compendiums"
* item[=].text = "Labor Compendien"
* item[=].type = #group

// #########################################################
// ---- Compendium Labor Gantenbein
// ---- choose test yes/no ----
// ---- choose specimen venous/capillary
// #########################################################
* item[=].item[+].linkId = "lab-compendium.Gantenbein"
* item[=].item[=].definition = ""
* item[=].item[=].text = "Gantenbein Compendium"
* item[=].item[=].type = #boolean
* item[=].item[=].item[0].linkId = "lab-compendium.Gantenbein.labServices"
* item[=].item[=].item[=].text = "Analysen Labor Gantenbein"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "receiver.organization.name"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerString = "Gantenbein"

// ---- E1 Blood potassium test ----
// =================================
* item[=].item[=].item[=].item[0].linkId = "lab-compendium.Gantenbein.labServices.Potassium"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/PlanDefinition/potassium-serum"
* item[=].item[=].item[=].item[=].text = "Kalium"
// * item[=].item[=].item[=].item[=].code = $lnc#2823-3 "Potassium [Moles/volume] in Serum or Plasma"
* item[=].item[=].item[=].item[=].type = #boolean

* item[=].item[=].item[=].item[=].item[0].linkId = "lab-compendium.Gantenbein.labServices.Potassium.specimenDefinition"
* item[=].item[=].item[=].item[=].item[=].text = "Analysen Labor Gantenbein Kalium"
* item[=].item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item[=].enableWhen.question = "lab-compendium.Gantenbein.labServices.Potassium"
* item[=].item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[=].item[=].item[=].item[=].item[0].linkId = "lab-compendium.Gantenbein.Potassium.specimenDefinitions"
* item[=].item[=].item[=].item[=].item[=].item[=].text = "Set of possible Specimens in Lab Catalog Gantenbein"
* item[=].item[=].item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].item[=].item[=].answerOption[0].valueCoding = $sct#122554006 "Capillary blood specimen (specimen)"
* item[=].item[=].item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $sct#122555007 "Venous blood specimen (specimen)"

// ---- E1 Blood sodium test ----
// =================================
* item[=].item[=].item[=].item[+].linkId = "lab-compendium.Gantenbein.labServices.Sodium"
* item[=].item[=].item[=].item[=].definition = ""
* item[=].item[=].item[=].item[=].text = "Natrium"
* item[=].item[=].item[=].item[=].code = $lnc#2951-2 "Sodium [Moles/volume] in Serum or Plasma"
* item[=].item[=].item[=].item[=].type = #boolean

* item[=].item[=].item[=].item[=].item[0].linkId = "lab-compendium.Gantenbein.labServices.Sodium.specimenDefinition"
* item[=].item[=].item[=].item[=].item[=].text = "Analysen Labor Gantenbein Natrium"
* item[=].item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item[=].enableWhen.question = "lab-compendium.Gantenbein.labServices.Sodium"
* item[=].item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[=].item[=].item[=].item[=].item[0].linkId = "lab-compendium.Gantenbein.Sodium.specimenDefinitions"
* item[=].item[=].item[=].item[=].item[=].item[=].text = "Set of possible Specimens in Lab Catalog Gantenbein"
* item[=].item[=].item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].item[=].item[=].answerOption[0].valueCoding = $sct#122554006 "Capillary blood specimen (specimen)"
* item[=].item[=].item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $sct#122555007 "Venous blood specimen (specimen)"

// ---- E1 Blood chloride test ----
// =================================
* item[=].item[=].item[=].item[+].linkId = "lab-compendium.Gantenbein.labServices.Chloride"
* item[=].item[=].item[=].item[=].definition = ""
* item[=].item[=].item[=].item[=].text = "Chlorid"
* item[=].item[=].item[=].item[=].code = $lnc#2075-0 "Chloride [Moles/volume] in Serum or Plasma"
* item[=].item[=].item[=].item[=].type = #boolean

* item[=].item[=].item[=].item[=].item[0].linkId = "lab-compendium.Gantenbein.labServices.Chloride.specimenDefinition"
* item[=].item[=].item[=].item[=].item[=].text = "Analysen Labor Gantenbein Chloride"
* item[=].item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item[=].enableWhen.question = "lab-compendium.Gantenbein.labServices.Chloride"
* item[=].item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[=].item[=].item[=].item[=].item[0].linkId = "lab-compendium.Gantenbein.Chloride.specimenDefinitions"
* item[=].item[=].item[=].item[=].item[=].item[=].text = "Set of possible Specimens in Lab Catalog Gantenbein"
* item[=].item[=].item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].item[=].item[=].answerOption[0].valueCoding = $sct#122554006 "Capillary blood specimen (specimen)"
* item[=].item[=].item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $sct#122555007 "Venous blood specimen (specimen)"

// ---- E2 Blood electrolyte test ----
// =================================
* item[=].item[=].item[=].item[+].linkId = "lab-compendium.Gantenbein.labServices.Electrolyte"
* item[=].item[=].item[=].item[=].definition = ""
* item[=].item[=].item[=].item[=].text = "Analysen Labor Gantenbein Elektrolyte"
* item[=].item[=].item[=].item[=].code = $lnc#24326-1 "Electrolytes 1998 panel - Serum or Plasma"
* item[=].item[=].item[=].item[=].type = #boolean

* item[=].item[=].item[=].item[=].item[0].linkId = "lab-compendium.Gantenbein.labServices.Electrolyte.ActivityDefintion"
* item[=].item[=].item[=].item[=].item[=].text = "Analysen Labor Gantenbein Elektrolyte"
* item[=].item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item[=].enableWhen.question = "lab-compendium.Gantenbein.labServices.Electrolyte"
* item[=].item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].item[=].enableWhen.answerBoolean = true

// ---- E3 Creatinine concentration on 24h urine ----
// ==================================================
* item[=].item[=].item[=].item[+].linkId = "lab-compendium.Gantenbein.labServices.CreatinineUrine24h"
* item[=].item[=].item[=].item[=].definition = ""
* item[=].item[=].item[=].item[=].text = "Creatinine on 24h urine"
* item[=].item[=].item[=].item[=].code = $lnc#25886-3 "Creatinine [Moles/volume] in 24 hour Urine"
* item[=].item[=].item[=].item[=].type = #boolean

* item[=].item[=].item[=].item[=].item[0].linkId = "lab-compendium.Gantenbein.labServices.urine-24h.specimenDefinition"
* item[=].item[=].item[=].item[=].item[=].text = "Analysen Labor Gantenbein Creatinin Konzentration im 24h Urin"
* item[=].item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item[=].enableWhen.question = "lab-compendium.Gantenbein.labServices.CreatinineUrine24h"
* item[=].item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[=].item[=].item[=].item[=].item[0].linkId = "lab-compendium.Gantenbein.CreatinineUrin.specimenDefinitions"
* item[=].item[=].item[=].item[=].item[=].item[=].text = "Set of possible Specimens in Lab Catalog Gantenbein"
* item[=].item[=].item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].item[=].item[=].answerOption[0].valueCoding = $sct#122575003 "Urine specimen (specimen)"


// ---- E4 Creatinine concentration serum ----
// ===========================================
* item[=].item[=].item[=].item[+].linkId = "lab-compendium.Gantenbein.labServices.CreatinineSerum"
* item[=].item[=].item[=].item[=].definition = ""
* item[=].item[=].item[=].item[=].text = "Creatinine Serum"
* item[=].item[=].item[=].item[=].code = $lnc#14682-9 "Creatinine [Moles/volume] in Serum or Plasma"
* item[=].item[=].item[=].item[=].type = #boolean

* item[=].item[=].item[=].item[=].item[0].linkId = "lab-compendium.Gantenbein.labServices.CreatinineSerum.specimenDefinition"
* item[=].item[=].item[=].item[=].item[=].text = "Analysen Labor Gantenbein CreatinineSerum"
* item[=].item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item[=].enableWhen.question = "lab-compendium.Gantenbein.labServices.CreatinineSerum"
* item[=].item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[=].item[=].item[=].item[=].item[0].linkId = "lab-compendium.Gantenbein.CreatinineSerum.specimenDefinitions"
* item[=].item[=].item[=].item[=].item[=].item[=].text = "Set of possible Specimens in Lab Catalog Gantenbein"
* item[=].item[=].item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].item[=].item[=].answerOption[0].valueCoding = $sct#122554006 "Capillary blood specimen (specimen)"
* item[=].item[=].item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $sct#122555007 "Venous blood specimen (specimen)"

// ---- E5 Creatinine Clearance ----
// =================================
* item[=].item[=].item[=].item[+].linkId = "lab-compendium.Gantenbein.labServices.CreatinineClearance"
* item[=].item[=].item[=].item[=].definition = ""
* item[=].item[=].item[=].item[=].text = "Creatinine Clearance"
* item[=].item[=].item[=].item[=].type = #boolean


// ---- E6 Vitamin D test ----
// =================================
* item[=].item[=].item[=].item[+].linkId = "lab-compendium.Gantenbein.labServices.Vitamin-D"
* item[=].item[=].item[=].item[=].definition = ""
* item[=].item[=].item[=].item[=].text = "Vitamin D"
* item[=].item[=].item[=].item[=].type = #boolean

// ---- Vitamin D ActivityDefintion ----
* item[=].item[=].item[=].item[=].item[0].linkId = "lab-compendium.Gantenbein.labServices.Vitamin-D.ActivityDefintion"
* item[=].item[=].item[=].item[=].item[=].text = "Analysen Labor Gantenbein Vitamin-D"
* item[=].item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item[=].enableWhen.question = "lab-compendium.Gantenbein.labServices.Vitamin-D"
* item[=].item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].item[=].enableWhen.answerBoolean = true

// ---- choice of normal reasons ----
* item[=].item[=].item[=].item[=].item[=].item[0].linkId = "lab-compendium.Gantenbein.NormalReasonsVitaminD"
* item[=].item[=].item[=].item[=].item[=].item[=].text = "Set of normal reasons to order value of Vitamin-D"
* item[=].item[=].item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].item[=].item[=].answerOption[0].valueCoding = $sct#41345002 "Rickets (disorder)"
* item[=].item[=].item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $sct#4598005 "Osteomalacia (disorder)"
* item[=].item[=].item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $sct#737295003 "Transplanted kidney present (finding)"
* item[=].item[=].item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $sct#707206008 "Assessment for bariatric surgery (procedure)"
* item[=].item[=].item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $sct#443731004 "Assessment using falls risk assessment score for the elderly (procedure)"
* item[=].item[=].item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $sct#66999008 "Hyperparathyroidism (disorder)"

// ---- choice of clinical focus
* item[=].item[=].item[=].item[=].item[=].item[+].linkId = "lab-compendium.Gantenbein.ClinicalFocusVitaminD"
* item[=].item[=].item[=].item[=].item[=].item[=].text = "Set of clinical focuses ordering Vitamin-D"
* item[=].item[=].item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].item[=].item[=].answerOption[0].valueCoding = $sct#404684003 "Clinical finding (finding)"
* item[=].item[=].item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $sct#272379006 "Event (event)"
* item[=].item[=].item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $sct#413350009 "Finding with explicit context (situation)"

// #######################################################
// ---- Compendium Labor Pipette, choose labSpecialty ----
// #######################################################
* item[=].item[+].linkId = "lab-compendium.Pipette"
* item[=].item[=].definition = "27898-6"
* item[=].item[=].text = "Pipette Compendium"
* item[=].item[=].type = #boolean
* item[=].item[=].item[0].linkId = "lab-compendium.Pipette.Services"
* item[=].item[=].item[=].text = "Lab Services"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "receiver.organization.name"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerString = "Pipette"

// ---- Clinical Chemistry Lab Services ----
* item[=].item[=].item[=].item[+].linkId = "cc.labServices"
* item[=].item[=].item[=].item[=].text = "Clinical Chemistry Lab Services"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item.linkId = "cc-subset-pipette"
* item[=].item[=].item[=].item[=].item.text = "Clinical chemistry Subset"
* item[=].item[=].item[=].item[=].item.type = #choice
* item[=].item[=].item[=].item[=].item.repeats = true

* item[=].item[=].item[=].item[=].item.answerOption[0].valueCoding = $lnc#2823-3 "Potassium [Moles/volume] in Serum or Plasma"
// not allowed: Questionnaire.item.answerOption.value[x], data type cannot repeat - they must have a maximum cardinality of 1 :
//* item[=].item[=].item[=].item[=].item.answerOption[+].valueReference = Reference(PlanDefinition/potassium-serum)

// ---- Choose SpecimenDefinition for Potassium ----
* item[=].item[=].item[=].item[=].item.item.linkId = "choose-specimenDefinition"
* item[=].item[=].item[=].item[=].item.item.text = "Choose SpecimenDefinition"
* item[=].item[=].item[=].item[=].item.item.type = #group
* item[=].item[=].item[=].item[=].item.item.enableWhen.question = "cc-subset-pipette"
* item[=].item[=].item[=].item[=].item.item.enableWhen.operator = #=
* item[=].item[=].item[=].item[=].item.item.enableWhen.answerCoding = $lnc#2823-3

* item[=].item[=].item[=].item[=].item.item.item.linkId = "specimenDefinitions"
* item[=].item[=].item[=].item[=].item.item.item.text = "Set of possible Specimens"
* item[=].item[=].item[=].item[=].item.item.item.type = #choice
* item[=].item[=].item[=].item[=].item.item.item.repeats = false
* item[=].item[=].item[=].item[=].item.item.item.answerOption[0].valueCoding = $sct#122554006 "Capillary blood specimen (specimen)"
* item[=].item[=].item[=].item[=].item.item.item.answerOption[+].valueCoding = $sct#122555007 "Venous blood specimen (specimen)"

* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $lnc#2947-0 "Sodium [Moles/volume] in Blood"
* item[=].item[=].item[=].item[=].item.item.item.linkId = "specimenDefinitions"
* item[=].item[=].item[=].item[=].item.item.item.text = "Set of possible Specimens"
* item[=].item[=].item[=].item[=].item.item.item.type = #choice
* item[=].item[=].item[=].item[=].item.item.item.repeats = false
* item[=].item[=].item[=].item[=].item.item.item.answerOption[0].valueCoding = $sct#122554006 "Capillary blood specimen (specimen)"
* item[=].item[=].item[=].item[=].item.item.item.answerOption[+].valueCoding = $sct#122555007 "Venous blood specimen (specimen)"

* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $lnc#2069-3 "Chloride [Moles/volume] in Blood"
//* item[=].item[=].item[=].item[=].item.answerOption[+].valueReference.reference = "http://fhir.ch/ig/ch-lab-order/lab-compendium/PlanDefinition/chloride-serum"
//* item[=].item[=].item[=].item[=].item.answerOption[=].valueReference.type = "PlanDefinition"
//* item[=].item[=].item[=].item[=].item.answerOption[=].valueReference.display = "Chloride [Moles/volume] in Blood"

* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $lnc#2160-0 "Creatinine [Mass/volume] in Serum or Plasma"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $lnc#14635-7 "25-hydroxyvitamin D3 [Moles/volume] in Serum or Plasma"

// ---- Hematology Lab Services ----
* item[=].item[=].item[=].item[+].linkId = "hematology.labServices"
* item[=].item[=].item[=].item[=].text = "Hematology Lab Services"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item.linkId = "hemato-subset-pipette"
* item[=].item[=].item[=].item[=].item.text = "Hämatologie Subset"
* item[=].item[=].item[=].item[=].item.type = #choice
* item[=].item[=].item[=].item[=].item.repeats = true
* item[=].item[=].item[=].item[=].item.answerOption[0].valueCoding = $lnc#24360-0 "Hemoglobin and Hematocrit panel - Blood"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $lnc#43113-0 "Hemoglobin electrophoresis panel in Blood"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $lnc#57021-8 "CBC W Auto Differential panel - Blood"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $lnc#58410-2 "CBC panel - Blood by Automated count"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $lnc#57023-4 "Auto Differential panel - Blood"

// ################################################################
// ---- Compendium Labor Schildknecht, takes container concept ----
// ################################################################

* item[=].item[+].linkId = "lab-compendium.Schildknecht"
* item[=].item[=].definition = "27898-6"
* item[=].item[=].text = "Schildknecht Compendium"
* item[=].item[=].type = #boolean
* item[=].item[=].item[0].linkId = "lab-compendium.Schildknecht.labServices"
* item[=].item[=].item[=].text = "Analysen Labor Schildknecht"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "receiver.organization.name"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerString = "Schildknecht"

// ------------ Do I want to order a test panel -- yes/no -----------------
* item[=].item[=].item[+].linkId = "test-panel"
* item[=].item[=].item[=].text = "ServiceRequest for test panel"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].repeats = true

* item[=].item[=].item[=].item[0].linkId = "lab-compendium.Schildknecht.labServices.panels"
* item[=].item[=].item[=].item[=].text = "Testpanel Labor Schildknecht"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].enableWhen.question = "test-panel"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[=].item[=].item[=].item[0].linkId = "serum-electrolyte-panel"
* item[=].item[=].item[=].item[=].item[=].text = "Panel for Serum Electrolytes Na, K and Cl"
* item[=].item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item[=].answerOption[0].valueCoding = $lnc#2823-3 "Potassium [Moles/volume] in Serum or Plasma"
* item[=].item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $lnc#2951-2 "Sodium [Moles/volume] in Serum or Plasma"
* item[=].item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $lnc#2075-0 "Chloride [Moles/volume] in Serum or Plasma"

// ------------ Do I want to order a single test -- yes/no -----------------
* item[=].item[=].item[+].linkId = "single-test"
* item[=].item[=].item[=].text = "ServiceRequest for single test"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].repeats = true

* item[=].item[=].item[=].item[0].linkId = "lab-compendium.Schildknecht.labServices.singletests"
* item[=].item[=].item[=].item[=].text = "Testpanel Labor Schildknecht"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].enableWhen.question = "single-test"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerBoolean = true


* item[=].item[=].item[=].item[=].item[+].linkId = "available-single-test"
* item[=].item[=].item[=].item[=].item[=].text = "Einzeltest"
* item[=].item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item[=].item.linkId = "single-test-schildknecht"
* item[=].item[=].item[=].item[=].item[=].item.text = "Einzeltest Schildknecht"
* item[=].item[=].item[=].item[=].item[=].item.type = #choice
* item[=].item[=].item[=].item[=].item[=].item.repeats = true

* item[=].item[=].item[=].item[=].item[=].answerOption[0].valueCoding = $lnc#2823-3 "Potassium [Moles/volume] in Serum or Plasma"
* item[=].item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $lnc#2951-2 "Sodium [Moles/volume] in Serum or Plasma"
* item[=].item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $lnc#2075-0 "Chloride [Moles/volume] in Serum or Plasma"

// * item[=].item[=].item[=].item[=].item[=].answerOption[0].valueReference = Reference(ChLabOrderSRSingletest/SR-Potassium) "Potassium [Moles/volume] in Serum or Plasma"
// * item[=].item[=].item[=].item[=].item[=].answerOption[+].valueReference = Reference(ChLabOrderSRSingletest/SR-Sodium) "Sodium [Moles/volume] in Serum or Plasma"
// * item[=].item[=].item[=].item[=].item[=].answerOption[+].valueReference = Reference(ChLabOrderSRSingletest/SR-Chloride) "Sodium [Moles/volume] in Serum or Plasma"

// * item[=].item[=].item[=].item[=].item[=].answerOption[0].valueReference = Reference(ChLabOrderSRSingletest/SR-Potassium)
// * item[=].item[=].item[=].item[=].item[=].answerOption[+].valueReference = Reference(ChLabOrderSRSingletest/SR-Sodium)
// * item[=].item[=].item[=].item[=].item[=].answerOption[+].valueReference = Reference(SR-Chloride)

// * item[=].item[=].item[=].item[0].linkId = "lab-compendium.Schildknecht.labServices.single-tests"
// * item[=].item[=].item[=].item[=].text = "Einzeltest Labor Schildknecht"
// * item[=].item[=].item[=].item[=].type = #group
// * item[=].item[=].item[=].item[=].enableWhen.question = "SR-tests"
// * item[=].item[=].item[=].item[=].enableWhen.operator = #=
// * item[=].item[=].item[=].item[=].enableWhen.answerString = true
// 
// 
// * item[=].item[=].item[=].item[=].item[0].linkId = "SR-singleTest"
// * item[=].item[=].item[=].item[=].item[=].text = "Service Request for single test"
// * item[=].item[=].item[=].item[=].item[=].type = #group
// * item[=].item[=].item[=].item[=].item[=].answerOption[0].valueCoding = $lnc#2823-3 "Potassium [Moles/volume] in Serum or Plasma"
// * item[=].item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $lnc#2951-2 "Sodium [Moles/volume] in Serum or Plasma"
// * item[=].item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $lnc#2075-0 "Chloride [Moles/volume] in Serum or Plasma"
