Instance: eabadd0f-1354-4ded-9690-5ebb7c61fef1
InstanceOf: Bundle
Description: "Lab Order Form by Catalog"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:c011fe4b-2dc3-4ff8-9613-0a659e65a44c"
* type = #document
* timestamp = "2022-10-11T21:37:38+00:00"
* entry[0].fullUrl = "urn:uuid:d4cffbab-35c6-4f2a-9d9a-2bdac8174cc6"
* entry[=].resource = d4cffbab-35c6-4f2a-9d9a-2bdac8174cc6
* entry[+].fullUrl = "urn:uuid:0b8c76a3-d77b-4222-af14-02e936c7a419"
* entry[=].resource = Inline-Instance-for-eabadd0f-1354-4ded-9690-5ebb7c61fef1-1
* entry[+].fullUrl = "urn:uuid:2c2d4fbe-ed5e-48ec-bd94-7383fa0cff69"
* entry[=].resource = Inline-Instance-for-eabadd0f-1354-4ded-9690-5ebb7c61fef1-2
* entry[+].fullUrl = "urn:uuid:63a1fbe7-311d-4404-b81e-325e3ebba987"
* entry[=].resource = Inline-Instance-for-eabadd0f-1354-4ded-9690-5ebb7c61fef1-3
* entry[+].fullUrl = "urn:uuid:0-generic"
* entry[=].resource = 0-generic
* entry[+].fullUrl = "urn:uuid:d04083d7-ad61-48b8-a06d-9df29310e449"
* entry[=].resource = d04083d7-ad61-48b8-a06d-9df29310e449
* entry[+].fullUrl = "urn:uuid:20898af3-9279-4650-b80c-ff94f4c5444c"
* entry[=].resource = Inline-Instance-for-eabadd0f-1354-4ded-9690-5ebb7c61fef1-4
* entry[+].fullUrl = "urn:uuid:8fdd4876-eddb-4ebb-921c-048bce31401a"
* entry[=].resource = Inline-Instance-for-eabadd0f-1354-4ded-9690-5ebb7c61fef1-5
* entry[+].fullUrl = "urn:uuid:472332ce-c47b-4e42-b9e2-3c9feb4d3b34"
* entry[=].resource = Inline-Instance-for-eabadd0f-1354-4ded-9690-5ebb7c61fef1-6
* entry[+].fullUrl = "urn:uuid:437e3cfb-064d-4e09-8172-743ee92ad1df"
* entry[=].resource = Inline-Instance-for-eabadd0f-1354-4ded-9690-5ebb7c61fef1-7
* entry[+].fullUrl = "urn:uuid:991b9288-5786-49b4-9d5e-5344bf5e6d27"
* entry[=].resource = Inline-Instance-for-eabadd0f-1354-4ded-9690-5ebb7c61fef1-8
* entry[+].fullUrl = "urn:uuid:272bc4a4-2b2a-49d0-acbc-e57bf5272f4d"
* entry[=].resource = Inline-Instance-for-eabadd0f-1354-4ded-9690-5ebb7c61fef1-9
* entry[+].fullUrl = "urn:uuid:b1af1797-f6d1-4d77-9145-3db145258a4e"
* entry[=].resource = b1af1797-f6d1-4d77-9145-3db145258a4e

Instance: d4cffbab-35c6-4f2a-9d9a-2bdac8174cc6
InstanceOf: Composition
Usage: #inline
* extension[0].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-receiver"
* extension[=].valueReference = Reference(urn:uuid:d04083d7-ad61-48b8-a06d-9df29310e449)
* extension[+].extension.url = "enterer"
* extension[=].extension.valueReference = Reference(urn:uuid:272bc4a4-2b2a-49d0-acbc-e57bf5272f4d)
* extension[=].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-dataenterer"
* status = #final
* type = http://snomed.info/sct#419891008
* category = http://snomed.info/sct#721963009
* subject = Reference(urn:uuid:0b8c76a3-d77b-4222-af14-02e936c7a419)
* date = "2022-10-11T21:37:38+00:00"
* author = Reference(urn:uuid:472332ce-c47b-4e42-b9e2-3c9feb4d3b34)
* title = "Order and Referral by Form"
* section.title = "Order-Referral"
* section.code = http://loinc.org#93037-0 "Portable medical order form"
* section.entry[0] = Reference(urn:uuid:2c2d4fbe-ed5e-48ec-bd94-7383fa0cff69)
* section.entry[+] = Reference(urn:uuid:63a1fbe7-311d-4404-b81e-325e3ebba987)
* section.entry[+] = Reference(urn:uuid:0-generic)

Instance: Inline-Instance-for-eabadd0f-1354-4ded-9690-5ebb7c61fef1-1
InstanceOf: Patient
Usage: #inline
* id = "0b8c76a3-d77b-4222-af14-02e936c7a419"
* name.family = "Guggindieluft"
* name.given = "Hans"
* gender = #male
* maritalStatus = http://fhir.ch/ig/ch-core/CodeSystem/ech-11-maritalstatus#2 "verheiratet"

Instance: Inline-Instance-for-eabadd0f-1354-4ded-9690-5ebb7c61fef1-2
InstanceOf: QuestionnaireResponse
Usage: #inline
* id = "2c2d4fbe-ed5e-48ec-bd94-7383fa0cff69"
* questionnaire = "http://fhir.ch/ig/ch-lab-order/Questionnaire/0-generic"
* status = #in-progress
* item[0].linkId = "order"
* item[=].text = "Auftrag"
* item[=].item[0].linkId = "order.placerOrderIdentifier"
* item[=].item[=].text = "Auftragsnummer des Auftraggebers"
* item[=].item[=].answer.valueString = "1234"
* item[=].item[+].linkId = "order.fillerOrderIdentifier"
* item[=].item[=].text = "Auftragsnummer des Auftragsempfängers"
* item[=].item[=].answer.valueString = "5678"
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
* item[=].item[=].item[=].answer.valueString = "7601000050717"
* item[=].item[+].linkId = "receiver.organization"
* item[=].item[=].text = "Empfangende Organisation"
* item[=].item[=].item[0].linkId = "receiver.organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].answer.valueString = "Labor Pipette"
* item[=].item[=].item[+].linkId = "receiver.organization.gln"
* item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].answer.valueString = "7601000234407"
* item[+].linkId = "patient"
* item[=].text = "Patient"
* item[=].item[0].linkId = "patient.familyName"
* item[=].item[=].text = "Name"
* item[=].item[=].answer.valueString = "Guggindieluft"
* item[=].item[+].linkId = "patient.givenName"
* item[=].item[=].text = "Vorname"
* item[=].item[=].answer.valueString = "Hans"
* item[=].item[+].linkId = "patient.gender"
* item[=].item[=].text = "Geschlecht"
* item[=].item[=].answer.valueCoding = http://hl7.org/fhir/administrative-gender#male "Männlich"
* item[=].item[+].linkId = "patient.maritalStatus"
* item[=].item[=].text = "Zivilstand"
* item[=].item[=].answer.valueCoding = http://fhir.ch/ig/ch-core/CodeSystem/ech-11-maritalstatus#2 "verheiratet"
* item[+].linkId = "sender"
* item[=].text = "Absender"
* item[=].item[0].linkId = "sender.author"
* item[=].item[=].text = "Verantwortlicher"
* item[=].item[=].item.linkId = "sender.author.practitioner"
* item[=].item[=].item.text = "Verantwortliche Person"
* item[=].item[=].item.item[0].linkId = "sender.author.practitioner.title"
* item[=].item[=].item.item[=].text = "Titel"
* item[=].item[=].item.item[=].answer.valueString = "Dr. med."
* item[=].item[=].item.item[+].linkId = "sender.author.practitioner.familyName"
* item[=].item[=].item.item[=].text = "Name"
* item[=].item[=].item.item[=].answer.valueString = "Mustermann"
* item[=].item[=].item.item[+].linkId = "sender.author.practitioner.givenName"
* item[=].item[=].item.item[=].text = "Vorname"
* item[=].item[=].item.item[=].answer.valueString = "Marc"
* item[=].item[=].item.item[+].linkId = "sender.author.practitioner.gln"
* item[=].item[=].item.item[=].text = "GLN"
* item[=].item[=].item.item[=].answer.valueString = "7601000050700"
* item[=].item[+].linkId = "sender.dataenterer"
* item[=].item[=].text = "Erfasser"
* item[=].item[=].item.linkId = "sender.dataenterer.practitioner"
* item[=].item[=].item.text = "Erfassende Person"
* item[=].item[=].item.item[0].linkId = "sender.dataenterer.practitioner.familyName"
* item[=].item[=].item.item[=].text = "Name"
* item[=].item[=].item.item[=].answer.valueString = "Mustermann"
* item[=].item[=].item.item[+].linkId = "sender.dataenterer.practitioner.givenName"
* item[=].item[=].item.item[=].text = "Vorname"
* item[=].item[=].item.item[=].answer.valueString = "Marc"
* item[+].linkId = "labSpecialties"
* item[=].text = "Labor Sparten"
* item[=].item[0].linkId = "labSpecialties.hematology"
* item[=].item[=].text = "Hematology"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[=].answer.item.linkId = "labSpecialties.hematology.panels"
* item[=].item[=].answer.item.text = "Hematology Panels"
* item[=].item[=].answer.item.item[0].linkId = "labSpecialties.hematology.panels.hemoglobinHematocritPanelBlood"
* item[=].item[=].answer.item.item[=].text = "Hemoglobin and Hematocrit panel - Blood"
* item[=].item[=].answer.item.item[=].answer.valueBoolean = true
* item[=].item[=].answer.item.item[+].linkId = "labSpecialties.hematology.panels.hemoglobinElectrophoresisPanelBlood"
* item[=].item[=].answer.item.item[=].text = "Hemoglobin electrophoresis panel in Blood"
* item[=].item[=].answer.item.item[=].answer.valueBoolean = false
* item[=].item[=].answer.item.item[+].linkId = "labSpecialties.hematology.panels.CBCWAutoDifferentialPanelBlood"
* item[=].item[=].answer.item.item[=].text = "CBC W Auto Differential panel - Blood"
* item[=].item[=].answer.item.item[=].answer.valueBoolean = false
* item[=].item[=].answer.item.item[+].linkId = "labSpecialties.hematology.panels.CBCPanelBloodAutomatedCount"
* item[=].item[=].answer.item.item[=].text = "CBC panel - Blood by Automated count"
* item[=].item[=].answer.item.item[=].answer.valueBoolean = true
* item[=].item[=].answer.item.item[+].linkId = "labSpecialties.hematology.panels.AutoDifferentialPanelBlood"
* item[=].item[=].answer.item.item[=].text = "Auto Differential panel - Blood"
* item[=].item[=].answer.item.item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "labSpecialties.coagulation"
* item[=].item[=].text = "Coagulation"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "labSpecialties.chemistry"
* item[=].item[=].text = "Clinical Chemistry"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[=].answer.item.linkId = "labSpecialties.chemistry.panels"
* item[=].item[=].answer.item.text = "Chemistry Panels"
* item[=].item[=].answer.item.item[0].linkId = "labSpecialties.chemistry.panels.CRP-MassProVolumeSerumPlasma"
* item[=].item[=].answer.item.item[=].text = "C reactive protein [Mass/Volume] in Serum or Plasma"
* item[=].item[=].answer.item.item[=].answer.valueBoolean = false
* item[=].item[=].answer.item.item[+].linkId = "labSpecialties.chemistry.panels.CRP-MolesProVolumeSerumPlasma"
* item[=].item[=].answer.item.item[=].text = "C reactive protein [Moles/volume] in Serum or Plasma"
* item[=].item[=].answer.item.item[=].answer.valueBoolean = true
* item[=].item[+].linkId = "labSpecialties.microbiol"
* item[=].item[=].text = "Microbiology"
* item[=].item[=].answer.valueBoolean = true
* item[=].item[=].answer.item.linkId = "labSpecialties.microbiol.panels"
* item[=].item[=].answer.item.text = "Microbiology Panels"
* item[=].item[=].answer.item.item.linkId = "labSpecialties.microbiol.panels.BordPertParaperDNA"
* item[=].item[=].answer.item.item.text = "Bordetella pertussis & Bordetella parapertussis DNA panel"
* item[=].item[=].answer.item.item.answer.valueBoolean = true

Instance: Inline-Instance-for-eabadd0f-1354-4ded-9690-5ebb7c61fef1-3
InstanceOf: ServiceRequest
Usage: #inline
* id = "63a1fbe7-311d-4404-b81e-325e3ebba987"
* identifier[0].type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
* identifier[=].value = "1234"
* identifier[+].type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
* identifier[=].value = "5678"
* status = #active
* intent = #order
* subject = Reference(urn:uuid:0b8c76a3-d77b-4222-af14-02e936c7a419)
* requester = Reference(urn:uuid:472332ce-c47b-4e42-b9e2-3c9feb4d3b34)

Instance: 0-generic
InstanceOf: Questionnaire
Usage: #inline
* meta.versionId = "4"
* meta.lastUpdated = "2022-10-03T08:55:27.957+00:00"
* meta.profile[0] = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-smap"
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
* url = "http://fhir.ch/ig/ch-lab-order/Questionnaire/0-generic"
* version = "1.0.0"
* name = "LabOrderFormExample"
* title = "Lab Order Form Example"
* status = #active
* subjectType = #Patient
* date = "2020-12-17"
* publisher = "HL7 Switzerland"
* contact.name = "Marcel Hanselmann"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.hl7.ch"
* jurisdiction = urn:iso:std:iso:3166#CH
* copyright = "CC-BY-SA-4.0"
* item[0].linkId = "order"
* item[=].text = "Auftrag"
* item[=].type = #group
* item[=].required = true
* item[=].item[0].linkId = "order.placerOrderIdentifier"
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
* item[=].item[=].answerOption[0].valueCoding = http://hl7.org/fhir/request-priority#routine "Die Anfrage hat normale Priorität."
* item[=].item[=].answerOption[=].initialSelected = true
* item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/request-priority#urgent "Die Anfrage sollte dringend bearbeitet werden - höhere Priorität als normal."
* item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/request-priority#asap "Die Anfrage sollte so schnell wie möglich bearbeitet werden - höhere Priorität als dringend."
* item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/request-priority#stat "Die Anfrage sollte sofort bearbeitet werden - höchstmögliche Priorität. Z.B. bei einem Notfall."
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
* item[=].item[=].item[+].linkId = "receiver.organization.gln"
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
* item[=].item[=].answerOption[0].valueCoding = http://hl7.org/fhir/administrative-gender#male "Männlich"
* item[=].item[=].answerOption[=].initialSelected = true
* item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/administrative-gender#female "Weiblich"
* item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/administrative-gender#other "Anderes"
* item[=].item[+].linkId = "patient.maritalStatus"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.maritalStatus"
* item[=].item[=].text = "Zivilstand"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = http://fhir.ch/ig/ch-core/CodeSystem/ech-11-maritalstatus#1 "ledig"
* item[=].item[=].answerOption[+].valueCoding = http://fhir.ch/ig/ch-core/CodeSystem/ech-11-maritalstatus#2 "verheiratet"
* item[=].item[=].answerOption[+].valueCoding = http://fhir.ch/ig/ch-core/CodeSystem/ech-11-maritalstatus#3 "verwitwet"
* item[=].item[=].answerOption[+].valueCoding = http://fhir.ch/ig/ch-core/CodeSystem/ech-11-maritalstatus#4 "geschieden"
* item[=].item[=].answerOption[+].valueCoding = http://fhir.ch/ig/ch-core/CodeSystem/ech-11-maritalstatus#5 "unverheiratet"
* item[=].item[=].answerOption[+].valueCoding = http://fhir.ch/ig/ch-core/CodeSystem/ech-11-maritalstatus#6 "in eingetragener Partnerschaft"
* item[=].item[=].answerOption[+].valueCoding = http://fhir.ch/ig/ch-core/CodeSystem/ech-11-maritalstatus#7 "aufgelöste Partnerschaft"
* item[=].item[=].answerOption[+].valueCoding = http://fhir.ch/ig/ch-core/CodeSystem/ech-11-maritalstatus#9 "unbekannt"
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
* item[=].item[+].linkId = "patient.languageOfCorrespondance"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.communication:languageOfCorrespondance"
* item[=].item[=].text = "Korrespondenssprache"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://fhir.ch/ig/ch-epr-term/ValueSet/DocumentEntry.languageCode"
* item[=].item[+].linkId = "patient.contactperson"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.contact"
* item[=].item[=].text = "Kontaktperson"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "patient.contactperson.relationship"
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
* item[=].text = "Kopieempfangende Organisation oder Person"
* item[=].type = #group
* item[=].item[0].linkId = "receiverCopy.practitionerRole"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole"
* item[=].item[=].text = "Gesundheitsfachperson oder -organisation"
* item[=].item[=].type = #group
* item[=].item[=].repeats = true
* item[=].item[=].item[0].linkId = "receiverCopy.practitionerRole.practitioner"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].item[=].text = "Gesundheitsfachperson"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[0].linkId = "receiverCopy.practitionerRole.practitioner.title"
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
* item[=].item[=].item[=].item[0].linkId = "receiverCopy.practitionerRole.organization.name"
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
* item[=].item[=].item[0].linkId = "receiverCopy.relatedPerson.familyName"
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
* item[=].item[0].linkId = "coverage.beneficiary"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.beneficiary"
* item[=].item[=].text = "Begünstigter (Patient)"
* item[=].item[=].type = #group
* item[=].item[=].item.linkId = "coverage.beneficiary.ahvn13"
* item[=].item[=].item.definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.identifier:AHVN13"
* item[=].item[=].item.text = "AHV-Nr. des Patienten"
* item[=].item[=].item.type = #string
* item[=].item[+].linkId = "coverage.kvg"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].item[=].text = "Krankenkasse (nach KVG)"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "coverage.kvg.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].item[=].text = "Name der Versicherung"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "coverage.kvg.insuranceCardNumber"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier"
* item[=].item[=].item[=].text = "Kennnummer der Versichertenkarte"
* item[=].item[=].item[=].type = #string
* item[=].item[+].linkId = "coverage.uvg"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].item[=].text = "Unfallversicherung (nach UVG)"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "coverage.uvg.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].item[=].text = "Name der Versicherung"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "coverage.uvg.claimNumber"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier"
* item[=].item[=].item[=].text = "Schadennummer"
* item[=].item[=].item[=].type = #string
* item[=].item[+].linkId = "coverage.vvg"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].item[=].text = "Zusatzversicherung (nach VVG)"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "coverage.vvg.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].item[=].text = "Name der Versicherung"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "coverage.vvg.insuranceCardNumber"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier"
* item[=].item[=].item[=].text = "Kennnummer der Versichertenkarte"
* item[=].item[=].item[=].type = #string
* item[=].item[+].linkId = "coverage.iv"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].item[=].text = "Invalidenversicherung (IV)"
* item[=].item[=].type = #group
* item[=].item[=].item.linkId = "coverage.iv.verfuegungsnummer"
* item[=].item[=].item.definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier"
* item[=].item[=].item.text = "IV-Verfügungsnummer"
* item[=].item[=].item.type = #string
* item[=].item[+].linkId = "coverage.mv"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].item[=].text = "Militärversicherung (MV)"
* item[=].item[=].type = #group
* item[=].item[=].item.linkId = "coverage.mv.versichertennummer"
* item[=].item[=].item.definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier"
* item[=].item[=].item.text = "MV-Versichertennummer"
* item[=].item[=].item.type = #string
* item[=].item[+].linkId = "coverage.self"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].item[=].text = "Selbstzahler"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "coverage.self.patient"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].item[=].text = "Patient selbst"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[+].linkId = "coverage.self.patientRelatedPerson"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].item[=].text = "Andere Person"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].enableWhen.question = "coverage.self.patient"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].item[+].linkId = "coverage.self.relatedPerson"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].item[=].text = "Andere Person"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "coverage.self.patientRelatedPerson"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[0].linkId = "coverage.self.relatedPerson.familyName"
* item[=].item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.name.family"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "coverage.self.relatedPerson.givenName"
* item[=].item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.name.given"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "coverage.self.relatedPerson.phone"
* item[=].item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.telecom.value"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[+].linkId = "coverage.self.relatedPerson.email"
* item[=].item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.telecom.value"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "coverage.self.relatedPerson.streetAddressLine"
* item[=].item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.address.line"
* item[=].item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[+].linkId = "coverage.self.relatedPerson.postalCode"
* item[=].item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.address.postalCode"
* item[=].item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "coverage.self.relatedPerson.city"
* item[=].item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.address.city"
* item[=].item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "coverage.self.relatedPerson.country"
* item[=].item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.address.country"
* item[=].item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[+].linkId = "coverage.other"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].item[=].text = "Anderer Kostenträger"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "coverage.other.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].item[=].text = "Name des Kostenträgers"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "coverage.other.id"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier"
* item[=].item[=].item[=].text = "Beliebige ID"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "coverage.other.id.note"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier.type.text"
* item[=].item[=].item[=].text = "Bemerkung zur ID"
* item[=].item[=].item[=].type = #string
* item[+].linkId = "previousResult"
* item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-servicerequest#ServiceRequest.supportingInfo"
* item[=].text = "Vorheriges Untersuchungsresultat"
* item[=].type = #group
* item[=].item.linkId = "previousResult.result"
* item[=].item.text = "Untersuchungsresultat"
* item[=].item.type = #string
* item[=].item.repeats = true
* item[+].linkId = "labSpecialties"
* item[=].text = "Labor Sparten"
* item[=].type = #group
* item[=].item[0].linkId = "labSpecialties.hematology"
* item[=].item[=].definition = "18723-7"
* item[=].item[=].text = "Hematology"
* item[=].item[=].type = #boolean
* item[=].item[=].item.linkId = "labSpecialties.hematology.panels"
* item[=].item[=].item.text = "Hematology Panels"
* item[=].item[=].item.type = #group
* item[=].item[=].item.enableWhen.question = "labSpecialties.hematology"
* item[=].item[=].item.enableWhen.operator = #=
* item[=].item[=].item.enableWhen.answerBoolean = true
* item[=].item[=].item.item[0].linkId = "labSpecialties.hematology.panels.hemoglobinHematocritPanelBlood"
* item[=].item[=].item.item[=].definition = "24360-0"
* item[=].item[=].item.item[=].text = "Hemoglobin and Hematocrit panel - Blood"
* item[=].item[=].item.item[=].type = #boolean
* item[=].item[=].item.item[+].linkId = "labSpecialties.hematology.panels.hemoglobinElectrophoresisPanelBlood"
* item[=].item[=].item.item[=].definition = "43113-0"
* item[=].item[=].item.item[=].text = "Hemoglobin electrophoresis panel in Blood"
* item[=].item[=].item.item[=].type = #boolean
* item[=].item[=].item.item[+].linkId = "labSpecialties.hematology.panels.CBCWAutoDifferentialPanelBlood"
* item[=].item[=].item.item[=].definition = "57021-8"
* item[=].item[=].item.item[=].text = "CBC W Auto Differential panel - Blood"
* item[=].item[=].item.item[=].type = #boolean
* item[=].item[=].item.item[+].linkId = "labSpecialties.hematology.panels.CBCPanelBloodAutomatedCount"
* item[=].item[=].item.item[=].definition = "58410-2"
* item[=].item[=].item.item[=].text = "CBC panel - Blood by Automated count"
* item[=].item[=].item.item[=].type = #boolean
* item[=].item[=].item.item[+].linkId = "labSpecialties.hematology.panels.AutoDifferentialPanelBlood"
* item[=].item[=].item.item[=].definition = "57023-4"
* item[=].item[=].item.item[=].text = "Auto Differential panel - Blood"
* item[=].item[=].item.item[=].type = #boolean
* item[=].item[+].linkId = "labSpecialties.coagulation"
* item[=].item[=].definition = "18720-3"
* item[=].item[=].text = "Coagulation"
* item[=].item[=].type = #boolean
* item[=].item[=].item.linkId = "labSpecialties.coagulation.panels"
* item[=].item[=].item.text = "Coagulation Panels"
* item[=].item[=].item.type = #group
* item[=].item[=].item.enableWhen.question = "labSpecialties.coagulation"
* item[=].item[=].item.enableWhen.operator = #=
* item[=].item[=].item.enableWhen.answerBoolean = true
* item[=].item[=].item.item[0].linkId = "labSpecialties.coagulation.panels.ShortFibrinDdimerPlateletpoorplasma"
* item[=].item[=].item.item[=].definition = "55398-2"
* item[=].item[=].item.item[=].text = "Short Fibrin D-dimer FEU and DDU panel - Platelet poor plasma"
* item[=].item[=].item.item[=].type = #boolean
* item[=].item[=].item.item[+].linkId = "labSpecialties.coagulation.panels.INRplateletPoorPlasmaCoagulationAssay"
* item[=].item[=].item.item[=].definition = "38875-1"
* item[=].item[=].item.item[=].text = "INR in Platelet poor plasma or Blood by Coagulation assay"
* item[=].item[=].item.item[=].type = #boolean
* item[=].item[+].linkId = "labSpecialties.chemistry"
* item[=].item[=].definition = "18719-5"
* item[=].item[=].text = "Clinical Chemistry"
* item[=].item[=].type = #boolean
* item[=].item[=].item.linkId = "labSpecialties.chemistry.panels"
* item[=].item[=].item.text = "Chemistry Panels"
* item[=].item[=].item.type = #group
* item[=].item[=].item.enableWhen.question = "labSpecialties.chemistry"
* item[=].item[=].item.enableWhen.operator = #=
* item[=].item[=].item.enableWhen.answerBoolean = true
* item[=].item[=].item.item[0].linkId = "labSpecialties.chemistry.panels.CRP-MassProVolumeSerumPlasma"
* item[=].item[=].item.item[=].definition = "1988-5"
* item[=].item[=].item.item[=].text = "C reactive protein [Mass/Volume] in Serum or Plasma"
* item[=].item[=].item.item[=].type = #boolean
* item[=].item[=].item.item[+].linkId = "labSpecialties.chemistry.panels.CRP-MolesProVolumeSerumPlasma"
* item[=].item[=].item.item[=].definition = "76485-2"
* item[=].item[=].item.item[=].text = "C reactive protein [Moles/volume] in Serum or Plasma"
* item[=].item[=].item.item[=].type = #boolean
* item[=].item[+].linkId = "labSpecialties.microbiol"
* item[=].item[=].definition = "18725-2"
* item[=].item[=].text = "Microbiology"
* item[=].item[=].type = #boolean
* item[=].item[=].item.linkId = "labSpecialties.microbiol.panels"
* item[=].item[=].item.text = "Microbiology Panels"
* item[=].item[=].item.type = #group
* item[=].item[=].item.enableWhen.question = "labSpecialties.microbiol"
* item[=].item[=].item.enableWhen.operator = #=
* item[=].item[=].item.enableWhen.answerBoolean = true
* item[=].item[=].item.item.linkId = "labSpecialties.microbiol.panels.BordPertParaperDNA"
* item[=].item[=].item.item.definition = "90441-7"
* item[=].item[=].item.item.text = "Bordetella pertussis & Bordetella parapertussis DNA panel"
* item[=].item[=].item.item.type = #boolean

Instance: d04083d7-ad61-48b8-a06d-9df29310e449
InstanceOf: PractitionerRole
Usage: #inline
* practitioner = Reference(urn:uuid:20898af3-9279-4650-b80c-ff94f4c5444c)
* organization = Reference(urn:uuid:8fdd4876-eddb-4ebb-921c-048bce31401a)

Instance: Inline-Instance-for-eabadd0f-1354-4ded-9690-5ebb7c61fef1-4
InstanceOf: Practitioner
Usage: #inline
* id = "20898af3-9279-4650-b80c-ff94f4c5444c"
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000050717"
* name.family = "Erlenmeyer"
* name.given = "Eva"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC

Instance: Inline-Instance-for-eabadd0f-1354-4ded-9690-5ebb7c61fef1-5
InstanceOf: Organization
Usage: #inline
* id = "8fdd4876-eddb-4ebb-921c-048bce31401a"
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000234407"
* name = "Labor Pipette"

Instance: Inline-Instance-for-eabadd0f-1354-4ded-9690-5ebb7c61fef1-6
InstanceOf: PractitionerRole
Usage: #inline
* id = "472332ce-c47b-4e42-b9e2-3c9feb4d3b34"
* practitioner = Reference(urn:uuid:437e3cfb-064d-4e09-8172-743ee92ad1df)
* organization = Reference(urn:uuid:991b9288-5786-49b4-9d5e-5344bf5e6d27)

Instance: Inline-Instance-for-eabadd0f-1354-4ded-9690-5ebb7c61fef1-7
InstanceOf: Practitioner
Usage: #inline
* id = "437e3cfb-064d-4e09-8172-743ee92ad1df"
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000050700"
* name.family = "Mustermann"
* name.given = "Marc"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC

Instance: Inline-Instance-for-eabadd0f-1354-4ded-9690-5ebb7c61fef1-8
InstanceOf: Organization
Usage: #inline
* id = "991b9288-5786-49b4-9d5e-5344bf5e6d27"

Instance: Inline-Instance-for-eabadd0f-1354-4ded-9690-5ebb7c61fef1-9
InstanceOf: PractitionerRole
Usage: #inline
* id = "272bc4a4-2b2a-49d0-acbc-e57bf5272f4d"
* practitioner = Reference(urn:uuid:b1af1797-f6d1-4d77-9145-3db145258a4e)
* organization = Reference(urn:uuid:991b9288-5786-49b4-9d5e-5344bf5e6d27)

Instance: b1af1797-f6d1-4d77-9145-3db145258a4e
InstanceOf: Practitioner
Usage: #inline
* name.family = "Mustermann"
* name.given = "Marc"