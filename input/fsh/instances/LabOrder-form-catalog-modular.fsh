Alias: $launchContext = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext

Instance:   LabOrder-form-Catalog
InstanceOf: ChOrfQuestionnaire
Title:      "Questionnaire Lab Order from Catalog"
Usage:      #example
* id = "LabOrder-form"
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
* name = "LabOrderFormCatalog"
* title = "Questionnaire Lab Order from Catalog"
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
