Alias: $launchContext = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext

Instance:   LabOrder-form-mod
InstanceOf: ChOrfQuestionnaire
Title:      "Questionnaire Lab Order Case Studies"
Description: "Modular Form of LabOrder"
Usage:      #example
* id = "LabOrder-form-mod"
* meta.versionId = "1"
* meta.lastUpdated = "2022-10-21T20:17:53.340+00:00"
* meta.profile[0] = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-smap"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-pop-exp"
* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-root
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[=].valueCanonical = "http://fhir.ch/ig/ch-orf/StructureMap/OrfQrToBundle"
* extension[+].extension[0].url = "name"
* extension[=].extension[=].valueCoding = $launchContext#patient
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #Patient
* extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[+].extension[0].url = "name"
* extension[=].extension[=].valueCoding = $launchContext#user "User"
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #Practitioner
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "The practitioner that is to be used to pre-populate the form"
* extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* url = "http://fhir.ch/ig/ch-orf/Questionnaire/order-referral-form-modular"
* version = "1.1.0"
* name = "LabOrderFormCaseStudies"
* title = "Questionnaire Lab Order Case Studies, modular"
* status = #active
* subjectType = #Patient
* date = "2022-07-07"
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
* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-order|1.1.0"
* item[=].item.linkId = "order.1"
* item[=].item.text = "Unable to resolve 'order' sub-questionnaire"
* item[=].item.type = #display
* item[+].linkId = "receiver"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:receiver"
* item[=].text = "Empfänger"
* item[=].type = #group
* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-receiver|1.1.0"
* item[=].item.linkId = "receiver.1"
* item[=].item.text = "Unable to resolve 'receiver' sub-questionnaire"
* item[=].item.type = #display
* item[+].linkId = "initiator"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension"
* item[=].text = "Initiant dieser Anmeldung"
* item[=].type = #group
* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-initiator|1.1.0"
* item[=].item.linkId = "initiator.1"
* item[=].item.text = "Unable to resolve 'intitiator' sub-questionnaire"
* item[=].item.type = #display
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
* item[=].type = #group
* item[=].required = true
* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-patient|1.1.0"
* item[=].item.linkId = "patient.1"
* item[=].item.text = "Unable to resolve 'patient' sub-questionnaire"
* item[=].item.type = #display
* item[+].linkId = "requestedEncounter"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.extension:requestedEncounterDetails"
* item[=].text = "Patientenaufnahme"
* item[=].type = #group
* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-requestedencounter|1.1.0"
* item[=].item.linkId = "requestedEncounter.1"
* item[=].item.text = "Unable to resolve 'requestedEncounter' sub-questionnaire"
* item[=].item.type = #display
* item[+].linkId = "coverage"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.insurance"
* item[=].text = "Kostenträger"
* item[=].type = #group
* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-coverage|1.1.0"
* item[=].item.linkId = "coverage.1"
* item[=].item.text = "Unable to resolve 'coverage' sub-questionnaire"
* item[=].item.type = #display
* item[+].linkId = "sender"
* item[=].text = "Absender"
* item[=].type = #group
* item[=].required = true
* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-sender|1.1.0"
* item[=].item.linkId = "sender.1"
* item[=].item.definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.author"
* item[=].item.text = "Unable to resolve 'sender' sub-questionnaire"
* item[=].item.type = #display
* item[=].item.required = true
* item[+].linkId = "receiverCopy"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:copyReceiver"
* item[=].text = "Kopieempfänger (Kopie dieses Auftrags und aller daraus resultierenden Resultate)"
* item[=].type = #group
* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-receivercopy|1.1.0"
* item[=].item.linkId = "receiverCopy.1"
* item[=].item.text = "Unable to resolve 'receiverCopy' sub-questionnaire"
* item[=].item.type = #display
* item[+].linkId = "antecedentEpisodeOfCare"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:antecedentEpisodeOfCare"
* item[=].text = "Vorgängiger Aufenthalt in Spital / Heim"
* item[=].type = #group
* item[=].item[0].linkId = "antecedentEpisodeOfCare.start"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-episodeofcare#EpisodeOfCare.Period.end"
* item[=].item[=].text = "Von"
* item[=].item[=].type = #dateTime
* item[=].item[+].linkId = "antecedentEpisodeOfCare.end"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-episodeofcare#EpisodeOfCare.Period.end"
* item[=].item[=].text = "Bis"
* item[=].item[=].type = #dateTime
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].item[=].extension.valueExpression.name = "linkIdPrefix"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "'antecedentEpisodeOfCare.managingOrganization.'"
* item[=].item[=].linkId = "antecedentEpisodeOfCare.managingOrganization"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-episodeofcare#EpisodeOfCare.managingOrganization"
* item[=].item[=].text = "Spital /Heim"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "antecedentEpisodeOfCare.managingOrganization.name"
* item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization#Organization.name"
* item[=].item[=].item[=].text = "Name der Organisation"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item[=].item[=].extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-address|1.1.0"
* item[=].item[=].item[=].linkId = "antecedentEpisodeOfCare.managingOrganization.1"
* item[=].item[=].item[=].text = "Unable to resolve 'address' sub-questionnaire"
* item[=].item[=].item[=].type = #display
* item[+].linkId = "appointment"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.extension:locationAndTime"
* item[=].text = "Ort und Zeit der Durchführung der angeforderten Leistung"
* item[=].type = #group
* item[=].repeats = true
* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-appointment|1.1.0"
* item[=].item.linkId = "appointment.1"
* item[=].item.text = "Unable to resolve 'appointment' sub-questionnaire"
* item[=].item.type = #display
* item[+].linkId = "consent"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:patientConsent"
* item[=].text = "Einverständniserklärung"
* item[=].type = #group
* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-consent|1.1.0"
* item[=].item.linkId = "consent.1"
* item[=].item.text = "Unable to resolve 'consent' sub-questionnaire"
* item[=].item.type = #display
* item[+].linkId = "note"
* item[=].text = "Bemerkungen"
* item[=].type = #group
* item[=].repeats = true
* item[=].item.linkId = "note.text"
* item[=].item.definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.note.text"
* item[=].item.text = "Kommentar"
* item[=].item.type = #string

// ######################################################################
// === end of general part ===
//#######################################################################

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
* item[=].item[=].item[=].item[=].item.answerOption[0].valueCoding = $loinc#24360-0 "Hemoglobin and Hematocrit panel - Blood"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $loinc#43113-0 "Hemoglobin electrophoresis panel in Blood"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $loinc#57021-8 "CBC W Auto Differential panel - Blood"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $loinc#58410-2 "CBC panel - Blood by Automated count"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $loinc#57023-4 "Auto Differential panel - Blood"
* item[=].item[=].item[=].item[+].linkId = "coagulation"
* item[=].item[=].item[=].item[=].text = "Coagulation"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item.linkId = "d-dimer"
* item[=].item[=].item[=].item[=].item.text = "D-Dimer"
* item[=].item[=].item[=].item[=].item.type = #choice
* item[=].item[=].item[=].item[=].item.repeats = true
* item[=].item[=].item[=].item[=].item.answerOption.valueCoding = $loinc#55398-2 "Short Fibrin D-dimer FEU and DDU panel - Platelet poor plasma"
* item[=].item[=].item[=].item[+].linkId = "clinical-chemistry-1"
* item[=].item[=].item[=].item[=].text = "Clinical Chemistry"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item.linkId = "crp-1"
* item[=].item[=].item[=].item[=].item.text = "CRP"
* item[=].item[=].item[=].item[=].item.type = #choice
* item[=].item[=].item[=].item[=].item.repeats = true
* item[=].item[=].item[=].item[=].item.answerOption[0].valueCoding = $loinc#1988-5 "C reactive protein [Mass/Volume] in Serum or Plasma"
* item[=].item[=].item[=].item[=].item.answerOption[=].initialSelected = true
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $loinc#76485-2 "C reactive protein [Moles/volume] in Serum or Plasma"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $loinc#30522-7 "C reactive protein [Mass/volume] in Serum or Plasma by High sensitivity method"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $loinc#76486-0 "C reactive protein [Moles/volume] in Serum or Plasma by High sensitivity method"

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
* item[=].item[=].item[=].item[=].item.answerOption.valueCoding = $loinc#90441-7 "B pert+parapert DNA Pnl Nph"
* item[=].item[=].item[=].item[+].linkId = "hematology-2"
* item[=].item[=].item[=].item[=].text = "Hämatologie"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item.linkId = "Blood-diff"
* item[=].item[=].item[=].item[=].item.text = "Manual Differential panel - Blood"
* item[=].item[=].item[=].item[=].item.type = #choice
* item[=].item[=].item[=].item[=].item.repeats = true
* item[=].item[=].item[=].item[=].item.answerOption.valueCoding = $loinc#24318-8 "Manual diff Bld"
* item[=].item[=].item[=].item[+].linkId = "clinical-chemistry-2"
* item[=].item[=].item[=].item[=].text = "Klinische Chemie"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item.linkId = "crp-2"
* item[=].item[=].item[=].item[=].item.text = "C-reactive Protein"
* item[=].item[=].item[=].item[=].item.type = #choice
* item[=].item[=].item[=].item[=].item.repeats = true
* item[=].item[=].item[=].item[=].item.answerOption.valueCoding = $loinc#1988-5 "C reactive protein [Mass/volume] in Serum or Plasma"

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
* item[=].item[=].item[=].item[=].item.answerOption[0].valueCoding = $loinc#86662-4 "Pap smear tests - FPAR 2.0 set"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $loinc#14503-7 "Human papilloma virus 16+18 Ag [Presence] in Cervix"
* item[=].item[=].item[=].item[+].linkId = "urin"
* item[=].item[=].item[=].item[=].text = "Urin"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item.linkId = "combur9"
* item[=].item[=].item[=].item[=].item.text = "Combur-9"
* item[=].item[=].item[=].item[=].item.type = #choice
* item[=].item[=].item[=].item[=].item.repeats = true
* item[=].item[=].item[=].item[=].item.answerOption.valueCoding = $loinc#50556-0 "Urinalysis dipstick panel - Urine by Automated test strip"
* item[=].item[=].item[=].item[+].linkId = "obstetricalPanels"
* item[=].item[=].item[=].item[=].text = "Schwangerschaftsvorsorge"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item.linkId = "obstetric"
* item[=].item[=].item[=].item[=].item.text = "Obstetric 1996 panel – Serum and Blood"
* item[=].item[=].item[=].item[=].item.type = #choice
* item[=].item[=].item[=].item[=].item.repeats = true
* item[=].item[=].item[=].item[=].item.answerOption.valueCoding = $loinc#24364-2 "Obstetric 1996 Pnl Ser+Bld"

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
* item[=].item[=].item[=].item[=].item.answerOption[0].valueCoding = $loinc#24360-0 "Hemoglobin and Hematocrit panel - Blood"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $loinc#43113-0 "Hemoglobin electrophoresis panel in Blood"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $loinc#57021-8 "CBC W Auto Differential panel - Blood"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $loinc#58410-2 "CBC panel - Blood by Automated count"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $loinc#57023-4 "Auto Differential panel - Blood"
* item[=].item[=].item[=].item[+].linkId = "microbiology-4"
* item[=].item[=].item[=].item[=].text = "Mikrobiologie"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item[0].linkId = "culture"
* item[=].item[=].item[=].item[=].item[=].text = "Blood by Culture"
* item[=].item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[=].item[=].answerOption.valueCoding = $loinc#90423-5 "Microorganism preliminary growth detection panel - Blood by Culture"
* item[=].item[=].item[=].item[=].item[+].linkId = "id-susc"
* item[=].item[=].item[=].item[=].item[=].text = "Bacterial Identification and Susceptibility"
* item[=].item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[=].item[=].answerOption.valueCoding = $loinc#85421-6 "Bacterial identification and susceptibility panel - Isolate"
* item[=].item[=].item[=].item[+].linkId = "clinical-chemistry-4"
* item[=].item[=].item[=].item[=].text = "Klinische Chemie"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item.linkId = "crp-4"
* item[=].item[=].item[=].item[=].item.text = "CRP"
* item[=].item[=].item[=].item[=].item.type = #choice
* item[=].item[=].item[=].item[=].item.repeats = true
* item[=].item[=].item[=].item[=].item.answerOption[0].valueCoding = $loinc#1988-5 "C reactive protein [Mass/Volume] in Serum or Plasma"
* item[=].item[=].item[=].item[=].item.answerOption[=].initialSelected = true
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $loinc#76485-2 "C reactive protein [Moles/volume] in Serum or Plasma"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $loinc#30522-7 "C reactive protein [Mass/volume] in Serum or Plasma by High sensitivity method"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $loinc#76486-0 "C reactive protein [Moles/volume] in Serum or Plasma by High sensitivity method"

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
* item[=].item[=].item[=].item[=].item.answerOption[0].valueCoding = $loinc#24360-0 "Hemoglobin and Hematocrit panel - Blood"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $loinc#43113-0 "Hemoglobin electrophoresis panel in Blood"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $loinc#57021-8 "CBC W Auto Differential panel - Blood"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $loinc#58410-2 "CBC panel - Blood by Automated count"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $loinc#57023-4 "Auto Differential panel - Blood"
* item[=].item[=].item[=].item[+].linkId = "toxicology"
* item[=].item[=].item[=].item[=].text = "Toxicology"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item.linkId = "tox"
* item[=].item[=].item[=].item[=].item.text = "Toxic Content"
* item[=].item[=].item[=].item[=].item.type = #choice
* item[=].item[=].item[=].item[=].item.repeats = true
* item[=].item[=].item[=].item[=].item.answerOption[0].valueCoding = $loinc#29587-3 "Toxicology panel - Blood"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $loinc#54454-4 "Arsenic fractions panel - Urine"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $loinc#29589-9 "Heavy metals panel - Urine"


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
* item[=].item[=].item[0].linkId = "lab-compendium.GantenbeinLabServices"
* item[=].item[=].item[=].text = "Analysen Labor Gantenbein"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "lab-compendium.Gantenbein"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerString = "Gantenbein"

// ---- E1 Blood potassium test ----
// =================================
* item[=].item[=].item[=].item[0].linkId = "lab-compendium.Gantenbein.labServices.Potassium"
* item[=].item[=].item[=].item[=].definition = "http://fhir.ch/ig/ch-lab-order/PlanDefinition/potassium-serum"
* item[=].item[=].item[=].item[=].text = "Kalium"
// * item[=].item[=].item[=].item[=].code = $loinc#2823-3 "Potassium [Moles/volume] in Serum or Plasma"
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
* item[=].item[=].item[=].item[=].code = $loinc#2951-2 "Sodium [Moles/volume] in Serum or Plasma"
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
* item[=].item[=].item[=].item[=].code = $loinc#2075-0 "Chloride [Moles/volume] in Serum or Plasma"
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
* item[=].item[=].item[=].item[=].code = $loinc#24326-1 "Electrolytes 1998 panel - Serum or Plasma"
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
* item[=].item[=].item[=].item[=].code = $loinc#25886-3 "Creatinine [Moles/volume] in 24 hour Urine"
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
* item[=].item[=].item[=].item[=].code = $loinc#14682-9 "Creatinine [Moles/volume] in Serum or Plasma"
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
* item[=].item[=].item[0].linkId = "lab-compendium.PipetteLabServices"
* item[=].item[=].item[=].text = "Lab Services"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "lab-compendium.Pipette"
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

* item[=].item[=].item[=].item[=].item.answerOption[0].valueCoding = $loinc#2823-3 "Potassium [Moles/volume] in Serum or Plasma"

// ---- Choose SpecimenDefinition for Potassium ----
* item[=].item[=].item[=].item[=].item.item.linkId = "choose-specimenDefinition"
* item[=].item[=].item[=].item[=].item.item.text = "Choose SpecimenDefinition"
* item[=].item[=].item[=].item[=].item.item.type = #group
* item[=].item[=].item[=].item[=].item.item.enableWhen.question = "cc-subset-pipette"
* item[=].item[=].item[=].item[=].item.item.enableWhen.operator = #=
* item[=].item[=].item[=].item[=].item.item.enableWhen.answerCoding = $loinc#2823-3

* item[=].item[=].item[=].item[=].item.item.item.linkId = "specimenDefinitions"
* item[=].item[=].item[=].item[=].item.item.item.text = "Set of possible Specimens"
* item[=].item[=].item[=].item[=].item.item.item.type = #choice
* item[=].item[=].item[=].item[=].item.item.item.repeats = false
* item[=].item[=].item[=].item[=].item.item.item.answerOption[0].valueCoding = $sct#122554006 "Capillary blood specimen (specimen)"
* item[=].item[=].item[=].item[=].item.item.item.answerOption[+].valueCoding = $sct#122555007 "Venous blood specimen (specimen)"

* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $loinc#2947-0 "Sodium [Moles/volume] in Blood"
* item[=].item[=].item[=].item[=].item.item.item.linkId = "specimenDefinitions"
* item[=].item[=].item[=].item[=].item.item.item.text = "Set of possible Specimens"
* item[=].item[=].item[=].item[=].item.item.item.type = #choice
* item[=].item[=].item[=].item[=].item.item.item.repeats = false
* item[=].item[=].item[=].item[=].item.item.item.answerOption[0].valueCoding = $sct#122554006 "Capillary blood specimen (specimen)"
* item[=].item[=].item[=].item[=].item.item.item.answerOption[+].valueCoding = $sct#122555007 "Venous blood specimen (specimen)"

* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $loinc#2069-3 "Chloride [Moles/volume] in Blood"
//* item[=].item[=].item[=].item[=].item.answerOption[+].valueReference.reference = "http://fhir.ch/ig/ch-lab-order/lab-compendium/PlanDefinition/chloride-serum"
//* item[=].item[=].item[=].item[=].item.answerOption[=].valueReference.type = "PlanDefinition"
//* item[=].item[=].item[=].item[=].item.answerOption[=].valueReference.display = "Chloride [Moles/volume] in Blood"

* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $loinc#2160-0 "Creatinine [Mass/volume] in Serum or Plasma"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $loinc#14635-7 "25-hydroxyvitamin D3 [Moles/volume] in Serum or Plasma"

// ---- Hematology Lab Services ----
* item[=].item[=].item[=].item[+].linkId = "hematology.labServices"
* item[=].item[=].item[=].item[=].text = "Hematology Lab Services"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item.linkId = "hemato-subset-pipette"
* item[=].item[=].item[=].item[=].item.text = "Hämatologie Subset"
* item[=].item[=].item[=].item[=].item.type = #choice
* item[=].item[=].item[=].item[=].item.repeats = true
* item[=].item[=].item[=].item[=].item.answerOption[0].valueCoding = $loinc#24360-0 "Hemoglobin and Hematocrit panel - Blood"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $loinc#43113-0 "Hemoglobin electrophoresis panel in Blood"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $loinc#57021-8 "CBC W Auto Differential panel - Blood"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $loinc#58410-2 "CBC panel - Blood by Automated count"
* item[=].item[=].item[=].item[=].item.answerOption[+].valueCoding = $loinc#57023-4 "Auto Differential panel - Blood"

// ################################################################
// ---- Compendium Labor Schildknecht, takes container concept ----
// ################################################################

* item[=].item[+].linkId = "lab-compendium.Schildknecht"
* item[=].item[=].definition = "27898-6"
* item[=].item[=].text = "Schildknecht Compendium"
* item[=].item[=].type = #boolean
* item[=].item[=].item[0].linkId = "lab-compendium.SchildknechtLabServices"
* item[=].item[=].item[=].text = "Analysen Labor Schildknecht"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].enableWhen.question = "lab-compendium.Schildknecht"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerString = "Schildknecht"

// ------------ Do I want to order a test panel -- yes/no -----------------
* item[=].item[=].item[+].linkId = "test-panel"
* item[=].item[=].item[=].text = "Order for test panel"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].repeats = false

* item[=].item[=].item[=].item[0].linkId = "lab-compendium.Schildknecht.panels"
* item[=].item[=].item[=].item[=].text = "Testpanel Labor Schildknecht"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].enableWhen.question = "test-panel"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[=].item[=].item[=].item[0].linkId = "available-test-panels"
* item[=].item[=].item[=].item[=].item[=].text = "verfügbare Test Panels Schildknecht"
* item[=].item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item[=].item.linkId = "test-panel-schildknecht"
* item[=].item[=].item[=].item[=].item[=].item.text = "Testpanel wählen"
* item[=].item[=].item[=].item[=].item[=].item.type = #choice
* item[=].item[=].item[=].item[=].item[=].item.repeats = true
* item[=].item[=].item[=].item[=].item[=].item[=].answerOption[0].valueCoding = $loinc#24360-0 "Hemoglobin and Hematocrit panel - Blood"
* item[=].item[=].item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $loinc#24326-1 "Electrolytes 1998 panel - Serum or Plasma"
* item[=].item[=].item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $loinc#24331-1 "Lipid 1996 panel - Serum or Plasma"


// ------------ Do I want to order a single test -- yes/no -----------------
* item[=].item[=].item[+].linkId = "single-test"
* item[=].item[=].item[=].text = "Order for single test"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[=].repeats = false

* item[=].item[=].item[=].item[0].linkId = "lab-compendium.Schildknecht.singletests"
* item[=].item[=].item[=].item[=].text = "Einzeltest Labor Schildknecht"
* item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].enableWhen.question = "single-test"
* item[=].item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[=].item[=].item[=].item[0].linkId = "available-single-tests"
* item[=].item[=].item[=].item[=].item[=].text = "verfügbare Einzeltests Schildknecht"
* item[=].item[=].item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[=].item[=].item.linkId = "single-test-schildknecht"
* item[=].item[=].item[=].item[=].item[=].item.text = "Einzeltest wählen"
* item[=].item[=].item[=].item[=].item[=].item.type = #choice
* item[=].item[=].item[=].item[=].item[=].item.repeats = true
* item[=].item[=].item[=].item[=].item[=].item[=].answerOption[0].valueCoding = $loinc#2823-3 "Potassium [Moles/volume] in Serum or Plasma"
* item[=].item[=].item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $loinc#2951-2 "Sodium [Moles/volume] in Serum or Plasma"
* item[=].item[=].item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $loinc#2075-0 "Chloride [Moles/volume] in Serum or Plasma"
