Instance: 0-generic-QuestionnaireResponse
InstanceOf: ChOrfQuestionnaireResponse
Title: "questionnaire response 0-generic"
Description: "Example for Laboratory Order Questionnaire Response due to suspected deep vein thrombosis"
Usage: #example
* id = "0-generic-QuestionnaireResponse"
* meta.versionId = "1"
* meta.lastUpdated = "2019-04-01T20:17:53.340+00:00"
* questionnaire = "http://fhir.ch/ig/ch-lab-order/Questionnaire/0-generic-Questionnaire"
* status = #completed

// ---------- order (Auftrag) item[0] ----------
* item[0].linkId = "order"
* item[=].text = "Auftrag"

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
* item[=].item[+].linkId = "order.notificationContactDocumentResponse"
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
* item[=].item[=].item.item[=].answer.valueString = "033 444 55 66"
* item[=].item[=].item.item[+].linkId = "order.notificationContactDocumentResponse.practitioner.email"
* item[=].item[=].item.item[=].text = "E-Mail"
* item[=].item[=].item.item[=].answer.valueString = "peter.presto@arztpraxis.ch"
* item[=].item[+].linkId = "order.priority"
* item[=].item[=].text = "Auftragspriorität"
* item[=].item[=].answer.valueCoding = $request-priority#routine

// --- receiver item [1]
* item[+].linkId = "receiver"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:receiver"
* item[=].text = "Empfänger"
// * item[=].type = #group
* item[=].item[0].linkId = "receiver.practitioner"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].text = "Empfangende Person"
// * item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "receiver.practitioner.title"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.prefix"
* item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].answer.valueString = "Dr. med. "
* item[=].item[=].item[+].linkId = "receiver.practitioner.familyName"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].answer.valueString = "Erlenmeyer"
* item[=].item[=].item[+].linkId = "receiver.practitioner.givenName"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].answer.valueString = "Eva"
* item[=].item[=].item[+].linkId = "receiver.practitioner.gln"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.identifier:GLN.value"
* item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].answer.valueString = "7601000050703"
* item[=].item[=].item[+].linkId = "receiver.practitioner.zsr"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.identifier:ZSR.value"
* item[=].item[=].item[=].text = "ZSR"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].linkId = "receiver.practitioner.phone"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].answer.valueString = "+41322552525"
* item[=].item[=].item[+].linkId = "receiver.practitioner.email"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].answer.valueString = "eva.erlenmeyer@labor-pipette.ch"
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "'receiver.organization.'"
* item[=].item[=].linkId = "receiver.organization"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.organization"
* item[=].item[=].text = "Empfangende Organisation"
// * item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "receiver.organization.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].answer.valueString = "Labor Pipette"
* item[=].item[=].item[+].linkId = "receiver.organization.gln"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.identifier:GLN"
* item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].answer.valueString = "7601000234407"
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%address.line"
* item[=].item[=].item[=].linkId = "receiver.organization.streetAddressLine"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].answer.valueString = "Laborstrasse 23"
// * item[=].item[=].item[=].repeats = true
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%address.postalCode"
* item[=].item[=].item[=].linkId = "receiver.organization.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].answer.valueString = "4600"
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%address.city"
* item[=].item[=].item[=].linkId = "receiver.organization.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].answer.valueString = "Olten"
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%address.country"
* item[=].item[=].item[=].linkId = "receiver.organization.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].answer.valueString = "Schweiz"

// --- ######################################################
// --- initiator item [2]
// --- #####################################
// 
* item[+].linkId = "initiator"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension"
* item[=].text = "Initiant dieser Anmeldung"
// * item[=].type = #group
* item[=].item[0].linkId = "initiator.legalrelation"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-initiator#Extension.extension:ch-orf-personalrelation"
* item[=].item[=].text = "Juristische Beziehung zum Patienten"
//* item[=].item[=].type = #choice
* item[=].item[=].answer.valueCoding = $sct#373068000 "Nicht definiert"
//* item[=].item[=].answer.valueCoding = $sct#58626002 "Gesetzlicher Vertreter"
* item[=].item[+].linkId = "initiator.personalrelation"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-initiator#Extension.extension:ch-orf-personalrelation"
* item[=].item[=].text = "Persönliche Beziehung zum Patienten?"
// * item[=].item[=].type = #choice
* item[=].item[=].answer.valueCoding = $sct#66089001 "Tochter"
// * item[=].item[=].answerOption[+].valueCoding = $sct#65616008 "Sohn"
// * item[=].item[=].answerOption[+].valueCoding = $sct#127849001 "Ehemann"
// * item[=].item[=].answerOption[+].valueCoding = $sct#127850001 "Ehefrau"
// * item[=].item[=].answerOption[+].valueCoding = $sct#394921008 "Partner (eingetragene  Partnerschaft)"
// * item[=].item[=].answerOption[+].valueCoding = $sct#70924004 "Bruder"
// * item[=].item[=].answerOption[+].valueCoding = $sct#27733009 "Schwester"
// * item[=].item[=].answerOption[+].valueCoding = $sct#72705000 "Mutter"
// * item[=].item[=].answerOption[+].valueCoding = $sct#66839005 "Vater"
// * item[=].item[=].answerOption[+].valueCoding = $sct#48385004 "Bekannt"
* item[=].item[+].linkId = "initiator.practitionerRole"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].text = "Gesundheitsfachperson oder -organisation"
// * item[=].item[=].type = #group
* item[=].item[=].item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "'initiator.practitionerRole.practitioner.'"
* item[=].item[=].item[=].linkId = "initiator.practitionerRole.practitioner"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].item[=].text = "Gesundheitsfachperson"
// * item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[0].linkId = "initiator.practitionerRole.practitioner.title"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.prefix"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].answer.valueString = "Dr. med."
* item[=].item[=].item[=].item[+].linkId = "initiator.practitionerRole.practitioner.familyName"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].answer.valueString = "Fuchs"
* item[=].item[=].item[=].item[+].linkId = "initiator.practitionerRole.practitioner.givenName"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].answer.valueString = "Fritz"
* item[=].item[=].item[=].item[+].linkId = "initiator.practitionerRole.practitioner.phone"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].answer.valueString = "+41 66 777 88 99"
* item[=].item[=].item[=].item[+].linkId = "initiator.practitionerRole.practitioner.email"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].answer.valueString = "fritz.fuchs@hin.ch"
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "'initiator.practitionerRole.organization.'"
* item[=].item[=].item[=].linkId = "initiator.practitionerRole.organization"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.organization"
* item[=].item[=].item[=].text = "Gesundheitsorganisatiton"
// * item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[0].linkId = "initiator.practitionerRole.organization.name"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.name"
* item[=].item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.line"
* item[=].item[=].item[=].item[=].linkId = "initiator.practitionerRole.organization.streetAddressLine"
* item[=].item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].item[=].answer.valueString = ""
// * item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
// * item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.postalCode"
* item[=].item[=].item[=].item[=].linkId = "initiator.practitionerRole.organization.postalCode"
* item[=].item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.city"
* item[=].item[=].item[=].item[=].linkId = "initiator.practitionerRole.organization.city"
* item[=].item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.country"
* item[=].item[=].item[=].item[=].linkId = "initiator.practitionerRole.organization.country"
* item[=].item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].item[=].answer.valueString = "Schweiz"
* item[=].item[+].linkId = "initiator.relatedPerson"
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson"
* item[=].item[=].text = "Andere Person"
// * item[=].item[=].type = #group
* item[=].item[=].item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "'initiator.relatedPerson.'"
* item[=].item[=].item[=].linkId = "initiator.relatedPerson.familyName"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.name.family"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].linkId = "initiator.relatedPerson.givenName"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.name.given"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].linkId = "initiator.relatedPerson.phone"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.telecom.value"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].answer.valueString = ""
//* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[+].linkId = "initiator.relatedPerson.email"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.telecom.value"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%address.line"
* item[=].item[=].item[=].linkId = "initiator.relatedPerson.streetAddressLine"
* item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].answer.valueString = ""
// * item[=].item[=].item[=].repeats = true
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%address.postalCode"
* item[=].item[=].item[=].linkId = "initiator.relatedPerson.postalCode"
* item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%address.city"
* item[=].item[=].item[=].linkId = "initiator.relatedPerson.city"
* item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%address.country"
* item[=].item[=].item[=].linkId = "initiator.relatedPerson.country"
* item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].answer.valueString = "Schweiz"

// ##############################################
// ### ---- patient item[3]
// ##############################################

* item[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].extension[=].valueExpression.name = "linkIdPrefix"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "'patient.'"


* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].extension[=].valueExpression.name = "address"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "%patient.address"
* item[=].linkId = "patient"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.subject"
* item[=].text = "Patient"
// * item[=].type = #group
// * item[=].required = true
* item[=].item[0].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "%patient.name.where(use='official').family"
* item[=].item[=].linkId = "patient.familyName"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.name.family"
* item[=].item[=].text = "Name"
* item[=].item[=].answer.valueString = ""
* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "%patient.name.where(use='maiden').family"
* item[=].item[=].linkId = "patient.maidenName"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.name.family"
* item[=].item[=].text = "Ledigname"
* item[=].item[=].answer.valueString = ""
* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "%patient.name.where(use='official').given"
* item[=].item[=].linkId = "patient.givenName"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.name.given"
* item[=].item[=].text = "Vorname"
* item[=].item[=].answer.valueString = ""
* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "%patient.identifier.where(type.coding.where(system='http://terminology.hl7.org/CodeSystem/v2-0203' and code='MR').exists()).value"
* item[=].item[=].linkId = "patient.localPid"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.identifier:LocalPid.value"
* item[=].item[=].text = "Lokale Patienten-ID"
* item[=].item[=].answer.valueString = "11.22.33.5678"
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension.valueBoolean = true
* item[=].item[=].linkId = "patient.localPidDomain"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.identifier:LocalPid.system"
* item[=].item[=].text = "Lokale Patienten-ID Domain"
* item[=].item[=].answer.valueString = "45454545"
* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "%patient.birthDate"
* item[=].item[=].linkId = "patient.birthDate"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.birthDate"
* item[=].item[=].text = "Geburtsdatum"
* item[=].item[=].answer.valueDate = "1981-01-01"
* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "%questionnaire.repeat(item).where(linkId='patient.gender').answerOption.valueCoding.where(code=%patient.gender)"
* item[=].item[=].linkId = "patient.gender"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.gender"
* item[=].item[=].text = "Geschlecht"
// * item[=].item[=].type = #choice
* item[=].item[=].answer.valueCoding = $administrative-gender#male
// * item[=].item[=].answerOption[=].initialSelected = true
// * item[=].item[=].answerOption[+].valueCoding = $administrative-gender#female "Weiblich"
// * item[=].item[=].answerOption[+].valueCoding = $administrative-gender#other "Anderes"
* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "%patient.maritalStatus"
* item[=].item[=].linkId = "patient.maritalStatus"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.maritalStatus"
* item[=].item[=].text = "Zivilstand"
// * item[=].item[=].type = #choice
// * item[=].item[=].answerOption[0].valueCoding = $ech-11-maritalstatus#1 "ledig"
// * item[=].item[=].answerOption[+].valueCoding = $ech-11-maritalstatus#2 "verheiratet"
// * item[=].item[=].answerOption[+].valueCoding = $ech-11-maritalstatus#3 "verwitwet"
// * item[=].item[=].answerOption[+].valueCoding = $ech-11-maritalstatus#4 "geschieden"
* item[=].item[=].answer.valueCoding = $ech-11-maritalstatus#5 "unverheiratet"
// * item[=].item[=].answerOption[+].valueCoding = $ech-11-maritalstatus#6 "in eingetragener Partnerschaft"
// * item[=].item[=].answerOption[+].valueCoding = $ech-11-maritalstatus#7 "aufgelöste Partnerschaft"
// * item[=].item[=].answerOption[+].valueCoding = $ech-11-maritalstatus#9 "unbekannt"
* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "%patient.telecom.where(system='phone').value"
* item[=].item[=].linkId = "patient.phone"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.telecom.value"
* item[=].item[=].text = "Telefon"
* item[=].item[=].answer.valueString = ""
// * item[=].item[=].repeats = true
* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "%patient.telecom.where(system='email').value"
* item[=].item[=].linkId = "patient.email"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.telecom.value"
* item[=].item[=].text = "E-Mail"
* item[=].item[=].answer.valueString = ""
* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "%address.line"
* item[=].item[=].linkId = "patient.streetAddressLine"
* item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].answer.valueString = ""
// * item[=].item[=].repeats = true
* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "%address.postalCode"
* item[=].item[=].linkId = "patient.postalCode"
* item[=].item[=].text = "PLZ"
* item[=].item[=].answer.valueString = ""
* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "%address.city"
* item[=].item[=].linkId = "patient.city"
* item[=].item[=].text = "Ort"
* item[=].item[=].answer.valueString = ""
* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "%address.country"
* item[=].item[=].linkId = "patient.country"
* item[=].item[=].text = "Land"
* item[=].item[=].answer.valueString = ""
* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "%patient.communication.where(preferred=true).language.coding"
* item[=].item[=].linkId = "patient.languageOfCorrespondence"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.communication:languageOfCorrespondence"
* item[=].item[=].text = "Korrespondenzsprache"
// * item[=].item[=].type = #choice
* item[=].item[=].answer.valueCoding = $document-entry-language-code#de
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension.valueExpression.name = "contact"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "%patient.contact"
* item[=].item[=].linkId = "patient.contactperson"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.contact"
* item[=].item[=].text = "Kontaktperson"
// * item[=].item[=].type = #group
// * item[=].item[=].repeats = true
* item[=].item[=].item[0].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%contact.relationship.text"
* item[=].item[=].item[=].linkId = "patient.contactperson.relationship"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.contact.relationship.text"
* item[=].item[=].item[=].text = "Beziehung"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%contact.name.family"
* item[=].item[=].item[=].linkId = "patient.contactperson.familyName"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.contact.name.family"
* item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%contact.name.given"
* item[=].item[=].item[=].linkId = "patient.contactperson.givenName"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.contact.name.given"
* item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%contact.telecom.where(system='phone').value"
* item[=].item[=].item[=].linkId = "patient.contactperson.phone"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.contact.telecom.value"
* item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].answer.valueString = ""
// * item[=].item[=].item[=].repeats = true
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%contact.telecom.where(system='email').value"
* item[=].item[=].item[=].linkId = "patient.contactperson.email"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.contact.telecom.value"
* item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].answer.valueString = ""

// --- familydoctor ---
* item[=].item[+].linkId = "familydoctor"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.generalPractitioner"
* item[=].item[=].text = "Hausarzt"
// * item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "familydoctor.practitioner"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].item[=].text = "Hausarzt Person"
// * item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[0].linkId = "familydoctor.practitioner.title"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.prefix"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].answer.valueString = "Dr. med."
* item[=].item[=].item[=].item[+].linkId = "familydoctor.practitioner.familyName"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].answer.valueString = "Mustermann"
* item[=].item[=].item[=].item[+].linkId = "familydoctor.practitioner.givenName"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].answer.valueString = "Marc"
* item[=].item[=].item[=].item[+].linkId = "familydoctor.practitioner.gln"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.identifier:GLN.value"
* item[=].item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[=].item[+].linkId = "familydoctor.practitioner.zsr"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.identifier:ZSR.value"
* item[=].item[=].item[=].item[=].text = "ZSR"
* item[=].item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[=].item[+].linkId = "familydoctor.practitioner.phone"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[=].item[+].linkId = "familydoctor.practitioner.email"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "'familydoctor.organization.'"
* item[=].item[=].item[=].linkId = "familydoctor.organization"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.organization"
* item[=].item[=].item[=].text = "Hausarzt Organisation"
// * item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[0].linkId = "familydoctor.organization.name"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.name"
* item[=].item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[=].item[+].linkId = "familydoctor.organization.gln"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.identifier:GLN"
* item[=].item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.line"
* item[=].item[=].item[=].item[=].linkId = "familydoctor.organization.streetAddressLine"
* item[=].item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].item[=].answer.valueString = ""
// * item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.postalCode"
* item[=].item[=].item[=].item[=].linkId = "familydoctor.organization.postalCode"
* item[=].item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.city"
* item[=].item[=].item[=].item[=].linkId = "familydoctor.organization.city"
* item[=].item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.country"
* item[=].item[=].item[=].item[=].linkId = "familydoctor.organization.country"
* item[=].item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].item[=].answer.valueString = ""

// #########################################################
// ########### ---- requestedEncounter item[4] ----------
// #########################################################

* item[+].linkId = "requestedEncounter"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.extension:requestedEncounterDetails"
* item[=].text = "Patientenaufnahme"
// * item[=].type = #group
* item[=].item[0].linkId = "requestedEncounter.class"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-encounter#Encounter.class"
* item[=].item[=].text = "Voraussichtlich: Ambulant / Stationär / Notfall"
// * item[=].item[=].type = #choice
* item[=].item[=].answer.valueCoding = $v3-ActCode#AMB "Ambulant"
// * item[=].item[=].answerOption[+].valueCoding = $v3-ActCode#IMP "Stationär"
// * item[=].item[=].answerOption[+].valueCoding = $v3-ActCode#EMER "Notfall"
* item[=].item[+].linkId = "requestedEncounter.desiredAccommodation"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-encounter#Encounter.extension:desiredAccommodation"
* item[=].item[=].text = "Zimmerkategorie"
// * item[=].item[=].type = #choice
* item[=].item[=].answer.valueCoding = $bfs-medstats-21-encountertype#1 "allgemein"
// * item[=].item[=].answerOption[+].valueCoding = $bfs-medstats-21-encountertype#2 "halbprivat"
// * item[=].item[=].answerOption[+].valueCoding = $bfs-medstats-21-encountertype#3 "privat"

// #########################################################
// ########### ---- coverage item[5] ----------
// ###########################################################

// --- coverage item[5] ----line 672
* item[+].linkId = "coverage"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.insurance"
* item[=].text = "Kostenträger"
// * item[=].type = #group
* item[=].item[0].linkId = "coverage.beneficiary"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.beneficiary"
* item[=].item[=].text = "Begünstigter (Patient)"
// * item[=].item[=].type = #group
* item[=].item[=].item.linkId = "coverage.beneficiary.ahvn13"
* item[=].item[=].item.definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient#Patient.identifier:AHVN13"
* item[=].item[=].item.text = "AHV-Nr. des Patienten"
* item[=].item[=].item.answer.valueString = ""
* item[=].item[+].linkId = "coverage.kvg"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].item[=].text = "Krankenkasse (nach KVG)"
// * item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "coverage.kvg.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].item[=].text = "Name der Versicherung"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].linkId = "coverage.kvg.insuranceCardNumber"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier"
* item[=].item[=].item[=].text = "Kennnummer der Versichertenkarte"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[+].linkId = "coverage.uvg"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].item[=].text = "Unfallversicherung (nach UVG)"
// * item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "coverage.uvg.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].item[=].text = "Name der Versicherung"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].linkId = "coverage.uvg.claimNumber"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier"
* item[=].item[=].item[=].text = "Schadennummer"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[+].linkId = "coverage.vvg"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].item[=].text = "Zusatzversicherung (nach VVG)"
// * item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "coverage.vvg.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].item[=].text = "Name der Versicherung"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].linkId = "coverage.vvg.insuranceCardNumber"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier"
* item[=].item[=].item[=].text = "Kennnummer der Versichertenkarte"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[+].linkId = "coverage.iv"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].item[=].text = "Invalidenversicherung (IV)"
// * item[=].item[=].type = #group
* item[=].item[=].item.linkId = "coverage.iv.verfuegungsnummer"
* item[=].item[=].item.definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier"
* item[=].item[=].item.text = "IV-Verfügungsnummer"
* item[=].item[=].item.answer.valueString = ""
* item[=].item[+].linkId = "coverage.mv"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].item[=].text = "Militärversicherung (MV)"
// * item[=].item[=].type = #group
* item[=].item[=].item.linkId = "coverage.mv.versichertennummer"
* item[=].item[=].item.definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier"
* item[=].item[=].item.text = "MV-Versichertennummer"
* item[=].item[=].item.answer.valueString = ""
* item[=].item[+].linkId = "coverage.self"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].item[=].text = "Selbstzahler"
// * item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "coverage.self.patient"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].item[=].text = "Patient selbst"
// * item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[+].linkId = "coverage.self.patientRelatedPerson"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].item[=].text = "Andere Person"
// * item[=].item[=].item[=].type = #boolean
// * item[=].item[=].item[=].enableWhen.question = "coverage.self.patient"
// * item[=].item[=].item[=].enableWhen.operator = #=
// * item[=].item[=].item[=].enableWhen.answerBoolean = false
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "'coverage.self.relatedPerson.'"
* item[=].item[=].item[=].linkId = "coverage.self.relatedPerson"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].item[=].text = "Andere Person"
// * item[=].item[=].item[=].type = #group
// * item[=].item[=].item[=].enableWhen.question = "coverage.self.patientRelatedPerson"
// * item[=].item[=].item[=].enableWhen.operator = #=
// * item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].item[0].linkId = "coverage.self.relatedPerson.familyName"
* item[=].item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.name.family"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[=].item[+].linkId = "coverage.self.relatedPerson.givenName"
* item[=].item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.name.given"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[=].item[+].linkId = "coverage.self.relatedPerson.phone"
* item[=].item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.telecom.value"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].answer.valueString = ""
// * item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[+].linkId = "coverage.self.relatedPerson.email"
* item[=].item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.telecom.value"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.line"
* item[=].item[=].item[=].item[=].linkId = "coverage.self.relatedPerson.streetAddressLine"
* item[=].item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].item[=].answer.valueString = ""
// * item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.postalCode"
* item[=].item[=].item[=].item[=].linkId = "coverage.self.relatedPerson.postalCode"
* item[=].item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.city"
* item[=].item[=].item[=].item[=].linkId = "coverage.self.relatedPerson.city"
* item[=].item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.country"
* item[=].item[=].item[=].item[=].linkId = "coverage.self.relatedPerson.country"
* item[=].item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].item[=].answer.valueString = ""

* item[=].item[+].linkId = "coverage.other"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.type"
* item[=].item[=].text = "Anderer Kostenträger"
// * item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "coverage.other.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.payor"
* item[=].item[=].item[=].text = "Name des Kostenträgers"
* item[=].item[=].item[=].answer.valueString = "HELVETIA"
* item[=].item[=].item[+].linkId = "coverage.other.id"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier"
* item[=].item[=].item[=].text = "Beliebige ID"
* item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[+].linkId = "coverage.other.id.note"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-coverage#Coverage.identifier.type.text"
* item[=].item[=].item[=].text = "Bemerkung zur ID"
* item[=].item[=].item[=].answer.valueString = ""

// #########################################################
// ########### ---- sender item[6] ----------
// ###########################################################

// --- sender item[6] --- line 824
* item[+].linkId = "sender"
* item[=].text = "Absender"
// * item[=].type = #group
// * item[=].required = true
* item[=].item[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension[=].valueExpression.name = "senderPractitionerRoles"
* item[=].item[=].extension[=].valueExpression.language = #application/x-fhir-query
* item[=].item[=].extension[=].valueExpression.expression = "PractitionerRole?practitioner={{%user.id}}"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension[=].valueExpression.name = "senderPractitionerRole"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%senderPractitionerRoles.entry[0].resource"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension[=].valueExpression.name = "senderOrganizations"
* item[=].item[=].extension[=].valueExpression.language = #application/x-fhir-query
* item[=].item[=].extension[=].valueExpression.expression = "Organization?_id={{%senderPractitionerRole.organization.reference}}"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension[=].valueExpression.name = "senderOrganization"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%senderOrganizations.entry[0].resource"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension[=].valueExpression.name = "address"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%senderOrganization.address"
* item[=].item[=].linkId = "sender.author"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.author"
* item[=].item[=].text = "Verantwortlicher"
// * item[=].item[=].type = #group
// * item[=].item[=].required = true
* item[=].item[=].item[0].linkId = "sender.author.practitioner"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].item[=].text = "Verantwortliche Person"
// * item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[0].linkId = "sender.author.practitioner.title"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.prefix"
* item[=].item[=].item[=].item[=].text = "Titel"
* item[=].item[=].item[=].item[=].answer.valueString = "Dr. med. "
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%user.name.family"
* item[=].item[=].item[=].item[=].linkId = "sender.author.practitioner.familyName"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].item[=].item[=].text = "Name"
* item[=].item[=].item[=].item[=].answer.valueString = "Mustermann"
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%user.name.given"
* item[=].item[=].item[=].item[=].linkId = "sender.author.practitioner.givenName"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].item[=].item[=].text = "Vorname"
* item[=].item[=].item[=].item[=].answer.valueString = "Marc"
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%user.identifier.where(system='urn:oid:2.51.1.3').value"
* item[=].item[=].item[=].item[=].linkId = "sender.author.practitioner.gln"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.identifier:GLN.value"
* item[=].item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].item[=].answer.valueString = "7601000034321"
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%user.identifier.where(system='urn:oid:2.16.756.5.30.1.123.100.2.1.1').value"
* item[=].item[=].item[=].item[=].linkId = "sender.author.practitioner.zsr"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.identifier:ZSR.value"
* item[=].item[=].item[=].item[=].text = "ZSR"
* item[=].item[=].item[=].item[=].answer.valueString = "A123309"
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%user.telecom.where(system='phone').value"
* item[=].item[=].item[=].item[=].linkId = "sender.author.practitioner.phone"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].item[=].text = "Telefon"
* item[=].item[=].item[=].item[=].answer.valueString = "033 333 22 11"
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%user.telecom.where(system='email').value"
* item[=].item[=].item[=].item[=].linkId = "sender.author.practitioner.email"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item[=].item[=].text = "E-Mail"
* item[=].item[=].item[=].item[=].answer.valueString = "marc.mustermann@gruppenpraxis.ch"
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "'sender.author.organization.'"
* item[=].item[=].item[=].linkId = "sender.author.organization"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.organization"
* item[=].item[=].item[=].text = "Verantwortliche Organisation"
// * item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[0].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%senderOrganization.name"
* item[=].item[=].item[=].item[=].linkId = "sender.author.organization.name"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.name"
* item[=].item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].item[=].answer.valueString = "Gruppenpraxis"
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%senderOrganization.identifier.where(system='urn:oid:2.51.1.3').value"
* item[=].item[=].item[=].item[=].linkId = "sender.author.organization.gln"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.identifier:GLN"
* item[=].item[=].item[=].item[=].text = "GLN"
* item[=].item[=].item[=].item[=].answer.valueString = ""
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.line"
* item[=].item[=].item[=].item[=].linkId = "sender.author.organization.streetAddressLine"
* item[=].item[=].item[=].item[=].text = "Strasse, Hausnummer, Postfach etc."
* item[=].item[=].item[=].item[=].answer.valueString = "Gerbergasse 12"
* item[=].item[=].item[=].item[=].answer[+].valueString = "Postfach 144"
// * item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.postalCode"
* item[=].item[=].item[=].item[=].linkId = "sender.author.organization.postalCode"
* item[=].item[=].item[=].item[=].text = "PLZ"
* item[=].item[=].item[=].item[=].answer.valueString = "4600"
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.city"
* item[=].item[=].item[=].item[=].linkId = "sender.author.organization.city"
* item[=].item[=].item[=].item[=].text = "Ort"
* item[=].item[=].item[=].item[=].answer.valueString = "Olten"
* item[=].item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].item[=].extension.valueExpression.expression = "%address.country"
* item[=].item[=].item[=].item[=].linkId = "sender.author.organization.country"
* item[=].item[=].item[=].item[=].text = "Land"
* item[=].item[=].item[=].item[=].answer.valueString = "Schweiz"
* item[=].item[+].linkId = "sender.dataenterer"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:dataEnterer"
* item[=].item[=].text = "Erfasser"
// * item[=].item[=].type = #group
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].item.extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].item.extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item.extension.valueExpression.expression = "'sender.dataenterer.practitioner.'"
* item[=].item[=].item.linkId = "sender.dataenterer.practitioner"
* item[=].item[=].item.definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitionerrole#PractitionerRole.practitioner"
* item[=].item[=].item.text = "Erfassende Person"
// * item[=].item[=].item.type = #group
* item[=].item[=].item.item[0].linkId = "sender.dataenterer.practitioner.title"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.prefix"
* item[=].item[=].item.item[=].text = "Titel"
* item[=].item[=].item.item[=].answer.valueString = ""
* item[=].item[=].item.item[+].linkId = "sender.dataenterer.practitioner.familyName"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.family"
* item[=].item[=].item.item[=].text = "Name"
* item[=].item[=].item.item[=].answer.valueString = ""
* item[=].item[=].item.item[+].linkId = "sender.dataenterer.practitioner.givenName"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.name.given"
* item[=].item[=].item.item[=].text = "Vorname"
* item[=].item[=].item.item[=].answer.valueString = ""
* item[=].item[=].item.item[+].linkId = "sender.dataenterer.practitioner.phone"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item.item[=].text = "Telefon"
* item[=].item[=].item.item[=].answer.valueString = ""
* item[=].item[=].item.item[+].linkId = "sender.dataenterer.practitioner.email"
* item[=].item[=].item.item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-practitioner#Practitioner.telecom.value"
* item[=].item[=].item.item[=].text = "E-Mail"
* item[=].item[=].item.item[=].answer.valueString = ""



// #########################################################
// ########### --- receiverCopy item[7] ---
// ###########################################################




// #########################################################
// ########### --- antecedentEpisodeOfCare item[8] ---
// ###########################################################





// #########################################################
// ########### --- appointment item[9] ---
// ###########################################################




// #########################################################
// ########### --- consent item[10] ---
// ###########################################################





// #########################################################
// ########### --- note item[11] ---
// ###########################################################
