Instance: 0-generic-form
InstanceOf: Bundle
Description: "Lab Order Form by Catalog"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3b8cf937-63af-457c-9c71-6e480120e1dc"
* type = #document
* timestamp = "2022-10-12T08:45:36+00:00"
* entry[0].fullUrl = "urn:uuid:a6c6d60e-c17c-4a6e-861f-dbf9349d47a0"
* entry[=].resource = a6c6d60e-c17c-4a6e-861f-dbf9349d47a0
* entry[+].fullUrl = "urn:uuid:0648f307-78d3-4df2-9973-b29917883368"
* entry[=].resource = Inline-Instance-for-0-generic-form-1
* entry[+].fullUrl = "urn:uuid:ac86e008-6d9c-423c-ad34-06d883969bb7"
* entry[=].resource = ac86e008-6d9c-423c-ad34-06d883969bb7
* entry[+].fullUrl = "urn:uuid:c794ef06-3e6a-49b2-8c7d-5ac9ec3d7226"
* entry[=].resource = c794ef06-3e6a-49b2-8c7d-5ac9ec3d7226
* entry[+].fullUrl = "urn:uuid:37a97a13-0a44-4ca2-a47e-a9e92ca1e146"
* entry[=].resource = Inline-Instance-for-0-generic-form-2
* entry[+].fullUrl = "urn:uuid:5109c305-8658-4299-b57a-8cbdbe24715f"
* entry[=].resource = Inline-Instance-for-0-generic-form-3
* entry[+].fullUrl = "urn:uuid:edf67477-aa77-4592-bb75-89c1d32d3430"
* entry[=].resource = edf67477-aa77-4592-bb75-89c1d32d3430
* entry[+].fullUrl = "urn:uuid:f4caa957-a5b4-4357-bfbc-e7f33cb105d1"
* entry[=].resource = f4caa957-a5b4-4357-bfbc-e7f33cb105d1
* entry[+].fullUrl = "urn:uuid:5e9f5b4e-d6f3-41ff-9d8a-9aa65637d48a"
* entry[=].resource = Inline-Instance-for-0-generic-form-4
* entry[+].fullUrl = "urn:uuid:b8b7516a-6324-44ba-9581-e5f418ffccc6"
* entry[=].resource = b8b7516a-6324-44ba-9581-e5f418ffccc6
* entry[+].fullUrl = "urn:uuid:974cfb3c-9e44-4288-983e-b1084f0b9a06"
* entry[=].resource = Inline-Instance-for-0-generic-form-5
* entry[+].fullUrl = "urn:uuid:069545f4-8c8a-4b23-9ad3-77b293d54210"
* entry[=].resource = Inline-Instance-for-0-generic-form-6
* entry[+].fullUrl = "urn:uuid:161d5da3-18ac-4655-a0e6-a82508a4bc7f"
* entry[=].resource = Inline-Instance-for-0-generic-form-7
* entry[+].fullUrl = "urn:uuid:99493c3c-9f2e-4663-af1e-f6ebee6437bb"
* entry[=].resource = Inline-Instance-for-0-generic-form-8
* entry[+].fullUrl = "urn:uuid:8913d72d-6730-4d35-a06e-7e055d667f64"
* entry[=].resource = Inline-Instance-for-0-generic-form-9

Instance: a6c6d60e-c17c-4a6e-861f-dbf9349d47a0
InstanceOf: Composition
Usage: #inline
* extension[0].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-receiver"
* extension[=].valueReference = Reference(urn:uuid:5109c305-8658-4299-b57a-8cbdbe24715f)
* extension[+].extension.url = "enterer"
* extension[=].extension.valueReference = Reference(urn:uuid:069545f4-8c8a-4b23-9ad3-77b293d54210)
* extension[=].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-dataenterer"
* status = #final
* type = http://snomed.info/sct#419891008
* category = http://snomed.info/sct#721963009
* subject = Reference(urn:uuid:0648f307-78d3-4df2-9973-b29917883368)
* date = "2022-10-12T08:45:36+00:00"
* author = Reference(urn:uuid:5e9f5b4e-d6f3-41ff-9d8a-9aa65637d48a)
* title = "Lab Order Form by Catalog"
* section.title = "Lab Order Form"
* section.code = http://loinc.org#93037-0 "Portable medical order form"
* section.entry[0] = Reference(urn:uuid:ac86e008-6d9c-423c-ad34-06d883969bb7)
* section.entry[+] = Reference(urn:uuid:c794ef06-3e6a-49b2-8c7d-5ac9ec3d7226)
* section.entry[+] = Reference(urn:uuid:37a97a13-0a44-4ca2-a47e-a9e92ca1e146)

Instance: Inline-Instance-for-0-generic-form-1
InstanceOf: Patient
Usage: #inline
* id = "0648f307-78d3-4df2-9973-b29917883368"
* name.family = "Guggindieluft"
* name.given = "Hans"

Instance: ac86e008-6d9c-423c-ad34-06d883969bb7
InstanceOf: QuestionnaireResponse
Usage: #inline
* questionnaire = "http://fhir.ch/ig/ch-lab-order/Questionnaire/0-generic-form"
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
* item[=].item[=].item[+].linkId = "receiver.practitioner.zsr"
* item[=].item[=].item[=].text = "ZSR"
* item[=].item[=].item[=].answer.valueString = "A123315"
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
* item[=].item[=].item.item[+].linkId = "sender.author.practitioner.zsr"
* item[=].item[=].item.item[=].text = "ZSR"
* item[=].item[=].item.item[=].answer.valueString = "A123309"
* item[=].item[+].linkId = "sender.dataenterer"
* item[=].item[=].text = "Erfasser"
* item[=].item[=].item.linkId = "sender.dataenterer.practitioner"
* item[=].item[=].item.text = "Erfassende Person"
* item[=].item[=].item.item[0].linkId = "sender.dataenterer.practitioner.title"
* item[=].item[=].item.item[=].text = "Titel"
* item[=].item[=].item.item[=].answer.valueString = "Dr. med."
* item[=].item[=].item.item[+].linkId = "sender.dataenterer.practitioner.familyName"
* item[=].item[=].item.item[=].text = "Name"
* item[=].item[=].item.item[=].answer.valueString = "Mustermann"
* item[=].item[=].item.item[+].linkId = "sender.dataenterer.practitioner.givenName"
* item[=].item[=].item.item[=].text = "Vorname"
* item[=].item[=].item.item[=].answer.valueString = "Marc"
* item[+].linkId = "appointment"
* item[=].text = "Ort und Zeit der Durchführung der angeforderten Leistung"
* item[=].item[0].linkId = "appointment.location"
* item[=].item[=].text = "Ort der Durchführung"
* item[=].item[=].item.linkId = "appointment.location.name"
* item[=].item[=].item.text = "Name"
* item[=].item[=].item.answer.valueString = "Arztpraxis"
* item[=].item[+].linkId = "appointment.requestedPeriod"
* item[=].item[=].text = "Datum und Zeit, wann der Termin bevorzugt geplant werden soll"
* item[=].item[=].item.linkId = "appointment.requestedPeriod.start"
* item[=].item[=].item.text = "Von"
* item[=].item[=].item.answer.valueDateTime = "2022-10-13T00:00:00+02:00"
* item[=].item[+].linkId = "appointment.status"
* item[=].item[=].text = "Status"
* item[=].item[=].answer.valueCoding = http://hl7.org/fhir/appointmentstatus#booked "Vom Patienten und Leistungserbringer bestätigt (gebucht)"
* item[+].linkId = "note"
* item[=].text = "Bemerkungen"
* item[=].item.linkId = "note.text"
* item[=].item.text = "Kommentar"
* item[=].item.answer.valueString = "Some Comment to add"

Instance: c794ef06-3e6a-49b2-8c7d-5ac9ec3d7226
InstanceOf: ServiceRequest
Usage: #inline
* extension.url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-locationandtime"
* extension.valueReference = Reference(urn:uuid:99493c3c-9f2e-4663-af1e-f6ebee6437bb)
* identifier[0].type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
* identifier[=].value = "1234"
* identifier[+].type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
* identifier[=].value = "5678"
* status = #active
* intent = #order
* subject = Reference(urn:uuid:0648f307-78d3-4df2-9973-b29917883368)
* requester = Reference(urn:uuid:5e9f5b4e-d6f3-41ff-9d8a-9aa65637d48a)
* note.text = "Some Comment to add"

Instance: Inline-Instance-for-0-generic-form-2
InstanceOf: Questionnaire
Usage: #inline
* id = "37a97a13-0a44-4ca2-a47e-a9e92ca1e146"
* meta.versionId = "4"
* meta.lastUpdated = "2022-10-12T08:37:33.745+00:00"
* meta.profile[0] = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-smap"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-pop-exp"
* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/StructureMap/OrfQrToBundle"
* extension[+].extension[0].url = "name"
* extension[=].extension[=].valueCoding = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext#patient
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #Patient
* extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[+].extension[0].url = "name"
* extension[=].extension[=].valueCoding = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext#user "User"
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #Practitioner
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "The practitioner that is to be used to pre-populate the form"
* extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-order|1.0.0"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-practitioner-nametel|1.0.0"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-receiver|1.0.0"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-address|1.0.0"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-patient|1.0.0"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-requestedencounter|1.0.0"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-coverage|1.0.0"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-sender|1.0.0"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-receivercopy|1.0.0"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-appointment|1.0.0"
* url = "http://fhir.ch/ig/ch-lab-order/Questionnaire/0-generic-form"
* version = "1.0.0"
* name = "LabOrderForm"
* title = "Lab Order Form 0-generic assembled from modular version"
* status = #active
* subjectType = #Patient
* date = "2022-10-09"
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
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.identifier:placerOrderIdentifier.value"
* item[=].item[=].text = "Auftragsnummer des Auftraggebers"
* item[=].item[=].type = #string
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension.valueBoolean = true
* item[=].item[=].linkId = "order.placerOrderIdentifierDomain"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.identifier:placerOrderIdentifier.system"
* item[=].item[=].text = "Identifier Domain der Auftragsnummer des Auftraggebers"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "order.fillerOrderIdentifier"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.identifier:fillerOrderIdentifier.value"
* item[=].item[=].text = "Auftragsnummer des Auftragsempfängers"
* item[=].item[=].type = #string
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension.valueBoolean = true
* item[=].item[=].linkId = "order.fillerOrderIdentifierDomain"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.identifier:fillerOrderIdentifier.system"
* item[=].item[=].text = "Identifier Domain der Auftragsnummer des Auftragsempfängers"
* item[=].item[=].type = #string
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension.valueBoolean = true
* item[=].item[=].linkId = "order.precedentDocumentIdentifier"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:precedentDocument"
* item[=].item[=].text = "Identifier des Vorgängerdokuments"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "order.notificationContactDocument"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:urgentNoficationContactForThisDocument"
* item[=].item[=].text = "Dringender Benachrichtigungskontakt für dieses Dokument"
* item[=].item[=].type = #group
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].item.extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].item.extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item.extension.valueExpression.expression = "'order.notificationContactDocument.practitioner.'"
* item[=].item[=].item.linkId = "order.notificationContactDocument.practitioner"
* item[=].item[=].item.definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].item.text = "Zu benachrichtigende Person"
* item[=].item[=].item.type = #group
* item[=].item[=].item.item[0].linkId = "order.notificationContactDocument.practitioner.title"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.prefix"
* item[=].item[=].item.item[=].text = "Titel"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocument.practitioner.familyName"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].item.item[=].text = "Name"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocument.practitioner.givenName"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].item.item[=].text = "Vorname"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocument.practitioner.phone"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item.item[=].text = "Telefon"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocument.practitioner.email"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item.item[=].text = "E-Mail"
* item[=].item[=].item.item[=].type = #string
* item[=].item[+].linkId = "order.notificationContactDocumentResponse"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:urgentNoficationContactForTheResponseToThisDocument"
* item[=].item[=].text = "Dringender Benachrichtigungskontakt für die Antwort auf dieses Dokument"
* item[=].item[=].type = #group
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].item.extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].item.extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item.extension.valueExpression.expression = "'order.notificationContactDocumentResponse.practitioner.'"
* item[=].item[=].item.linkId = "order.notificationContactDocumentResponse.practitioner"
* item[=].item[=].item.definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].item.text = "Zu benachrichtigende Person"
* item[=].item[=].item.type = #group
* item[=].item[=].item.item[0].linkId = "order.notificationContactDocumentResponse.practitioner.title"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.prefix"
* item[=].item[=].item.item[=].text = "Titel"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocumentResponse.practitioner.familyName"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].item.item[=].text = "Name"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocumentResponse.practitioner.givenName"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].item.item[=].text = "Vorname"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocumentResponse.practitioner.phone"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item.item[=].text = "Telefon"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocumentResponse.practitioner.email"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item.item[=].text = "E-Mail"
* item[=].item[=].item.item[=].type = #string
* item[=].item[+].linkId = "order.priority"
* item[=].item[=].text = "Auftragspriorität"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = RequestPriority#routine "Die Anfrage hat normale Priorität."
* item[=].item[=].answerOption[=].initialSelected = true
* item[=].item[=].answerOption[+].valueCoding = RequestPriority#urgent "Die Anfrage sollte dringend bearbeitet werden - höhere Priorität als normal."
* item[=].item[=].answerOption[+].valueCoding = RequestPriority#asap "Die Anfrage sollte so schnell wie möglich bearbeitet werden - höhere Priorität als dringend."
* item[=].item[=].answerOption[+].valueCoding = RequestPriority#stat "Die Anfrage sollte sofort bearbeitet werden - höchstmögliche Priorität. Z.B. bei einem Notfall."
* item[+].linkId = "receiver"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:receiver"
* item[=].text = "Empfänger"
* item[=].type = #group
* item[=].item[0].linkId = "receiver.practitioner"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].text = "Empfangende Person"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "receiver.practitioner.title"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.prefix"
* item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiver.practitioner.familyName"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiver.practitioner.givenName"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiver.practitioner.gln"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.identifier:GLN.value"
* item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiver.practitioner.zsr"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.identifier:ZSR.value"
* item[=].item[=].item[=].text = "ZSR"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiver.practitioner.phone"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiver.practitioner.email"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].type = #string
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "'receiver.organization.'"
* item[=].item[=].linkId = "receiver.organization"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.organization"
* item[=].item[=].text = "Empfangende Organisation"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "receiver.organization.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiver.organization.gln"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.identifier:GLN"
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
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.subject"
* item[=].text = "Patient"
* item[=].type = #group
* item[=].required = true
* item[=].item[0].linkId = "patient.familyName"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.name.family"
* item[=].item[=].text = "Name"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "patient.maidenName"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.name.family"
* item[=].item[=].text = "Ledigname"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "patient.givenName"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.name.given"
* item[=].item[=].text = "Vorname"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "patient.localPid"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.identifier:LocalPid.value"
* item[=].item[=].text = "Lokale Patienten-ID"
* item[=].item[=].type = #string
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension.valueBoolean = true
* item[=].item[=].linkId = "patient.localPidDomain"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.identifier:LocalPid.system"
* item[=].item[=].text = "Lokale Patienten-ID Domain"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "patient.birthDate"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.birthDate"
* item[=].item[=].text = "Geburtsdatum"
* item[=].item[=].type = #date
* item[=].item[+].linkId = "patient.gender"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.gender"
* item[=].item[=].text = "Geschlecht"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.gender#male "Männlich"
* item[=].item[=].answerOption[=].initialSelected = true
* item[=].item[=].answerOption[+].valueCoding = http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.gender#female "Weiblich"
* item[=].item[=].answerOption[+].valueCoding = http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.gender#other "Anderes"
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
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.telecom.value"
* item[=].item[=].text = "Telefon"
* item[=].item[=].type = #string
* item[=].item[=].repeats = true
* item[=].item[+].linkId = "patient.email"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.telecom.value"
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
* item[+].linkId = "requestedEncounter"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.extension:requestedEncounterDetails"
* item[=].text = "Patientenaufnahme"
* item[=].type = #group
* item[=].item[0].linkId = "requestedEncounter.class"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-encounter#Encounter.class"
* item[=].item[=].text = "Voraussichtlich: Ambulant / Stationär / Notfall"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "Ambulant"
* item[=].item[=].answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "Stationär"
* item[=].item[=].answerOption[+].valueCoding = http://terminology.hl7.org/CodeSystem/v3-ActCode#EMER "Notfall"
* item[=].item[+].linkId = "requestedEncounter.desiredAccommodation"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-encounter#Encounter.extension:desiredAccommodation"
* item[=].item[=].text = "Zimmerkategorie"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = http://fhir.ch/ig/ch-core/CodeSystem/bfs-medstats-21-encountertype#1 "allgemein"
* item[=].item[=].answerOption[+].valueCoding = http://fhir.ch/ig/ch-core/CodeSystem/bfs-medstats-21-encountertype#2 "halbprivat"
* item[=].item[=].answerOption[+].valueCoding = http://fhir.ch/ig/ch-core/CodeSystem/bfs-medstats-21-encountertype#3 "privat"
* item[+].linkId = "coverage"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.insurance"
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
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "'coverage.self.relatedPerson.'"
* item[=].item[=].item[=].linkId = "coverage.self.relatedPerson"
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
* item[=].item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[+].linkId = "coverage.self.relatedPerson.postalCode"
* item[=].item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "coverage.self.relatedPerson.city"
* item[=].item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "coverage.self.relatedPerson.country"
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
* item[+].linkId = "sender"
* item[=].text = "Absender"
* item[=].type = #group
* item[=].required = true
* item[=].item[0].linkId = "sender.author"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.author"
* item[=].item[=].text = "Verantwortlicher"
* item[=].item[=].type = #group
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "sender.author.practitioner"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].item[=].text = "Verantwortliche Person"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[0].linkId = "sender.author.practitioner.title"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.prefix"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.familyName"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.givenName"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.gln"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.identifier:GLN.value"
* item[=].item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.zsr"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.identifier:ZSR.value"
* item[=].item[=].item[=].item[=].text = "ZSR"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.phone"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "sender.author.practitioner.email"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "'sender.author.organization.'"
* item[=].item[=].item[=].linkId = "sender.author.organization"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.organization"
* item[=].item[=].item[=].text = "Verantwortliche Organisation"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[0].linkId = "sender.author.organization.name"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.name"
* item[=].item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "sender.author.organization.gln"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.identifier:GLN"
* item[=].item[=].item[=].item[=].text = "GLN"
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
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:dataEnterer"
* item[=].item[=].text = "Erfasser"
* item[=].item[=].type = #group
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].item.extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].item.extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item.extension.valueExpression.expression = "'sender.dataenterer.practitioner.'"
* item[=].item[=].item.linkId = "sender.dataenterer.practitioner"
* item[=].item[=].item.definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].item.text = "Erfassende Person"
* item[=].item[=].item.type = #group
* item[=].item[=].item.item[0].linkId = "sender.dataenterer.practitioner.title"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.prefix"
* item[=].item[=].item.item[=].text = "Titel"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "sender.dataenterer.practitioner.familyName"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].item.item[=].text = "Name"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "sender.dataenterer.practitioner.givenName"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].item.item[=].text = "Vorname"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "sender.dataenterer.practitioner.phone"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item.item[=].text = "Telefon"
* item[=].item[=].item.item[=].type = #string
* item[=].item[=].item.item[+].linkId = "sender.dataenterer.practitioner.email"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item.item[=].text = "E-Mail"
* item[=].item[=].item.item[=].type = #string
* item[+].linkId = "receiverCopy"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:copyReceiver"
* item[=].text = "Kopieempfänger (Kopie dieses Auftrags und aller daraus resultierenden Resultate)"
* item[=].type = #group
* item[=].item[0].linkId = "receiverCopy.practitionerRole"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole"
* item[=].item[=].text = "Gesundheitsfachperson oder -organisation"
* item[=].item[=].type = #group
* item[=].item[=].repeats = true
* item[=].item[=].item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "'receiverCopy.practitionerRole.practitioner.'"
* item[=].item[=].item[=].linkId = "receiverCopy.practitionerRole.practitioner"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].item[=].text = "Gesundheitsfachperson"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[0].linkId = "receiverCopy.practitionerRole.practitioner.title"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.prefix"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.practitioner.familyName"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.practitioner.givenName"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.practitioner.phone"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.practitioner.email"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "'receiverCopy.practitionerRole.organization.'"
* item[=].item[=].item[=].linkId = "receiverCopy.practitionerRole.organization"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.organization"
* item[=].item[=].item[=].text = "Gesundheitsorganisatiton"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[0].linkId = "receiverCopy.practitionerRole.organization.name"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.name"
* item[=].item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "receiverCopy.author.organization.gln"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.identifier:GLN"
* item[=].item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.organization.streetAddressLine"
* item[=].item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.organization.postalCode"
* item[=].item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.organization.city"
* item[=].item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].item[+].linkId = "receiverCopy.practitionerRole.organization.country"
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
* item[=].item[=].item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "'receiverCopy.relatedPerson.'"
* item[=].item[=].item[=].linkId = "receiverCopy.relatedPerson.familyName"
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
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[+].linkId = "receiverCopy.relatedPerson.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiverCopy.relatedPerson.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "receiverCopy.relatedPerson.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].type = #string
* item[+].linkId = "appointment"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.extension:locationAndTime"
* item[=].text = "Ort und Zeit der Durchführung der angeforderten Leistung"
* item[=].type = #group
* item[=].repeats = true
* item[=].item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "'appointment.location.'"
* item[=].item[=].linkId = "appointment.location"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-appointment#Appointment.participant.actor"
* item[=].item[=].text = "Ort der Durchführung"
* item[=].item[=].type = #group
* item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "appointment.location.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-location#Location.name"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[+].linkId = "appointment.location.phone"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-location#Location.telecom.value"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "appointment.location.email"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-location#Location.telecom.value"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "appointment.location.streetAddressLine"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[+].linkId = "appointment.location.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "appointment.location.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].linkId = "appointment.location.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].type = #string
* item[=].item[+].linkId = "appointment.requestedPeriod"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-appointment#Appointment.requestedPeriod"
* item[=].item[=].text = "Datum und Zeit, wann der Termin bevorzugt geplant werden soll"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "appointment.requestedPeriod.start"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-appointment#Appointment.requestedPeriod.start"
* item[=].item[=].item[=].text = "Von"
* item[=].item[=].item[=].type = #dateTime
* item[=].item[=].item[+].linkId = "appointment.requestedPeriod.end"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-appointment#Appointment.requestedPeriod.end"
* item[=].item[=].item[=].text = "Bis"
* item[=].item[=].item[=].type = #dateTime
* item[=].item[+].linkId = "appointment.status"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-appointment#Appointment.status"
* item[=].item[=].text = "Status"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = http://hl7.org/fhir/appointmentstatus#proposed "Wunsch des Patienten (vorgeschlagen)"
* item[=].item[=].answerOption[=].initialSelected = true
* item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/appointmentstatus#pending "Vom Patienten bestätigt, aber vom Leistungserbringer noch nicht (ausstehend)"
* item[=].item[=].answerOption[+].valueCoding = http://hl7.org/fhir/appointmentstatus#booked "Vom Patienten und Leistungserbringer bestätigt (gebucht)"
* item[=].item[+].linkId = "appointment.patientInstruction"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-appointment#Appointment.patientInstruction"
* item[=].item[=].text = "Patienteninformation für diesen Termin"
* item[=].item[=].type = #string
* item[+].linkId = "note"
* item[=].text = "Bemerkungen"
* item[=].type = #group
* item[=].repeats = true
* item[=].item.linkId = "note.text"
* item[=].item.definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.note.text"
* item[=].item.text = "Kommentar"
* item[=].item.type = #string
* item[=].item.required = true

Instance: Inline-Instance-for-0-generic-form-3
InstanceOf: PractitionerRole
Usage: #inline
* id = "5109c305-8658-4299-b57a-8cbdbe24715f"
* practitioner = Reference(urn:uuid:edf67477-aa77-4592-bb75-89c1d32d3430)
* organization = Reference(urn:uuid:f4caa957-a5b4-4357-bfbc-e7f33cb105d1)

Instance: edf67477-aa77-4592-bb75-89c1d32d3430
InstanceOf: Practitioner
Usage: #inline
* identifier[0].system = "urn:oid:2.51.1.3"
* identifier[=].value = "7601000050717"
* identifier[+].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[=].value = "A123315"
* name.family = "Erlenmeyer"
* name.given = "Eva"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC

Instance: f4caa957-a5b4-4357-bfbc-e7f33cb105d1
InstanceOf: Organization
Usage: #inline
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000234407"
* name = "Labor Pipette"

Instance: Inline-Instance-for-0-generic-form-4
InstanceOf: PractitionerRole
Usage: #inline
* id = "5e9f5b4e-d6f3-41ff-9d8a-9aa65637d48a"
* practitioner = Reference(urn:uuid:b8b7516a-6324-44ba-9581-e5f418ffccc6)
* organization = Reference(urn:uuid:974cfb3c-9e44-4288-983e-b1084f0b9a06)

Instance: b8b7516a-6324-44ba-9581-e5f418ffccc6
InstanceOf: Practitioner
Usage: #inline
* identifier[0].system = "urn:oid:2.51.1.3"
* identifier[=].value = "7601000050700"
* identifier[+].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[=].value = "A123309"
* name.family = "Mustermann"
* name.given = "Marc"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC

Instance: Inline-Instance-for-0-generic-form-5
InstanceOf: Organization
Usage: #inline
* id = "974cfb3c-9e44-4288-983e-b1084f0b9a06"

Instance: Inline-Instance-for-0-generic-form-6
InstanceOf: PractitionerRole
Usage: #inline
* id = "069545f4-8c8a-4b23-9ad3-77b293d54210"
* practitioner = Reference(urn:uuid:161d5da3-18ac-4655-a0e6-a82508a4bc7f)
* organization = Reference(urn:uuid:974cfb3c-9e44-4288-983e-b1084f0b9a06)

Instance: Inline-Instance-for-0-generic-form-7
InstanceOf: Practitioner
Usage: #inline
* id = "161d5da3-18ac-4655-a0e6-a82508a4bc7f"
* name.family = "Mustermann"
* name.given = "Marc"

Instance: Inline-Instance-for-0-generic-form-8
InstanceOf: Appointment
Usage: #inline
* id = "99493c3c-9f2e-4663-af1e-f6ebee6437bb"
* status = #booked
* start = "2022-10-13T00:00:00+02:00"
* end = "2022-10-13T00:00:00+02:00"
* participant.actor = Reference(urn:uuid:8913d72d-6730-4d35-a06e-7e055d667f64)
* participant.status = #tentative

Instance: Inline-Instance-for-0-generic-form-9
InstanceOf: Location
Usage: #inline
* id = "8913d72d-6730-4d35-a06e-7e055d667f64"
* name = "Arztpraxis"