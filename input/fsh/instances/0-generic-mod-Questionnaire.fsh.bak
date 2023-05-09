Instance: 0-generic-mod-Questionnaire   // corresponds to resource
InstanceOf: ChOrfQuestionnaire
Title: "questionnaire 0-generic, modular version"
Description: "Example for Questionnaire for generic Lab Order"
Usage: #example
* id = "0-generic-mod"
* meta.versionId = "1"
* meta.lastUpdated = "2019-04-01T20:17:53.340+00:00"
* meta.profile[+] = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-smap"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-pop-exp"
* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
* extension[=].valueCode = #assemble-root
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
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

* url = "http://fhir.ch/ig/ch-lab-order/Questionnaire/0-generic-mod"
* name = "LabOrderForm"
* title = "Lab Order Form 0-generic modular version"
* status = #active
* subjectType = #Patient
* date = "2022-10-09"
* publisher = "HL7 Switzerland"

// ---------- order (Auftrag) ----------
* item[+].linkId = "order"
* item[=].definition = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-order-document#Bundle"
* item[=].text = "Auftrag"
* item[=].type = #group
* item[=].required = true

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-order|2.0.0"
* item[=].item.linkId = "order.1"
* item[=].item.text = "Unable to resolve 'order' sub-questionnaire"
* item[=].item.type = #display

// ---------- Receiver: Person/organization who receives the document ----------
* item[+].linkId = "receiver"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:receiver"
* item[=].text = "Empfänger"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-receiver|2.0.0"
* item[=].item.linkId = "receiver.1"
* item[=].item.text = "Unable to resolve 'receiver' sub-questionnaire"
* item[=].item.type = #display

// ---- Patient: The principle target of a particular Form Content is one patient ------
* item[+].linkId = "patient"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.subject"
* item[=].text = "Patient"
* item[=].type = #group
* item[=].required = true
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].extension[0].valueExpression.name = "linkIdPrefix"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "'patient.'"
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* item[=].extension[=].valueExpression.name = "address"
* item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].valueExpression.expression = "%patient.address"
* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-patient|2.0.0"
* item[=].item.linkId = "patient.1"
* item[=].item.text = "Unable to resolve 'patient' sub-questionnaire"
* item[=].item.type = #display

// ---------- Encounter Class (Ambulant / Stationär / Notfall) ----------
* item[+].linkId = "requestedEncounter"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.extension:requestedEncounterDetails"
* item[=].text = "Patientenaufnahme"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-requestedencounter|2.0.0"
* item[=].item.linkId = "requestedEncounter.1"
* item[=].item.text = "Unable to resolve 'requestedencounter' sub-questionnaire"
* item[=].item.type = #display


// ---------- Coverage (Kostenträger) ----------
* item[+].linkId = "coverage"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.insurance"
* item[=].text = "Kostenträger"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-coverage|2.0.0"
* item[=].item.linkId = "coverage.1"
* item[=].item.text = "Unable to resolve 'coverage' sub-questionnaire"
* item[=].item.type = #display

// ---------- sender (Absender) ----------
* item[+].linkId = "sender"
* item[=].text = "Absender"
* item[=].type = #group
* item[=].required = true

// ---------- Author: The person/organization responsible for Form Content ----------
* item[=].item[+].linkId = "sender.author"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.author"
* item[=].item[=].text = "Verantwortlicher"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-sender|2.0.0"
* item[=].item.linkId = "sender.1"
* item[=].item.text = "Unable to resolve 'sender' sub-questionnaire"
* item[=].item.type = #display

// ---------- Copy Receiver (Copy of this order and all results therefrom) ----------
* item[+].linkId = "receiverCopy"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.extension:copyReceiver"
* item[=].text = "Kopieempfänger (Kopie dieses Auftrags und aller daraus resultierenden Resultate)"
* item[=].type = #group

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-receivercopy|2.0.0"
* item[=].item.linkId = "receiverCopy.1"
* item[=].item.text = "Unable to resolve 'receivercopy' sub-questionnaire"
* item[=].item.type = #display

// ------ Appointment ----------------------------
* item[+].linkId = "appointment"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.extension:locationAndTime"
* item[=].text = "Ort und Zeit der Durchführung der angeforderten Leistung"
* item[=].type = #group
* item[=].repeats = true

* item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
* item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-appointment|2.0.0"
* item[=].item.linkId = "appointment.1"
* item[=].item.text = "Unable to resolve 'appointment' sub-questionnaire"
* item[=].item.type = #display

// -------- Service Request Notes ------
* item[+].linkId = "note"
* item[=].text = "Bemerkungen"
* item[=].type = #group
* item[=].repeats = true

* item[=].item[+].linkId = "note.text"
* item[=].item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-servicerequest#ServiceRequest.note.text"
* item[=].item[=].text = "Kommentar" 
* item[=].item[=].type = #string
* item[=].item[=].required = true

// ########### Begin of specific Part ######################
// #########################################################
// https://loinc.org/fhir/

* item[+]
  * linkId = "labSpecialties"
  * text = "Labor Sparten"
  * type = #group

  // Histopathology
  * item[+]
    * definition = LOINC#27898-6 "Pathology studies (set)"
    * linkId = "labSpecialties.pathology"
    * text = "Pathology"
    * type = #boolean

  // Chemistry

// --- Kind of LabService (PlanDefinition) --------------------------------
* item[+].linkId = "labServiceDefinition"
* item[=].definition = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabServiceDefinition"
* item[=].text = "Lab Service Definition"
* item[=].type = #group
* item[=].repeats = true

*  item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
// * item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-appointment|2.0.0"
* item[=].item[0].linkId = "potassium-serum"
* item[=].item[=].text = "Unable to resolve 'appointment' sub-questionnaire"
* item[=].item[=].type = #display

* item[=].item[+].linkId = "panel-blood-electrolyte"
* item[=].item[=].text = "Unable to resolve 'appointment' sub-questionnaire"
* item[=].item[=].type = #display



// // --- Choose from List of Catalogs - Catalog Header Profile--------------------
// * item[=].item[+].item.linkId = "PlanDefinition.CatalogReference"
// * item[=].item[+].item.text = "Unable to resolve 'PlanDefinition Catalog Reference' sub-questionnaire"
// * item[=].item[+].item.type = #display


// ### Blood by Automated count #################

Instance: 58410-2
InstanceOf: Questionnaire
Title: "CBC panel, Blood"  // Consumer name
Description: "58410-2	CBC panel - Blood by Automated count"
Usage: #example
* meta.versionId = "5"
* meta.lastUpdated = "2022-04-13T19:47:22.495+00:00"
* meta.source = "#4Q75pMeTbscwKKwf"
* url = "http://loinc.org/q/58410-2"
* name = "CBC_Pnl_Bld_Auto"
* title = "CBC Pnl Bld Auto"
* status = #draft
* publisher = "Regenstrief Institute, Inc."
* contact.name = "Regenstrief Institute, Inc."
* contact.telecom.system = #url
* contact.telecom.value = "http://loinc.org"
* copyright = "This content from LOINC® is copyright © 1995-2022 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at https://loinc.org/license/"
* code = http://loinc.org#58410-2 "CBC Pnl Bld Auto"
* item[0].linkId = "70312"
* item[=].code = http://loinc.org#6690-2 "WBC # Bld Auto"
* item[=].text = "WBC # Bld Auto"
* item[=].type = #decimal
* item[=].required = true
* item[=].repeats = false
* item[+].linkId = "70313"
* item[=].code = http://loinc.org#789-8 "RBC # Bld Auto"
* item[=].text = "RBC # Bld Auto"
* item[=].type = #decimal
* item[=].required = true
* item[=].repeats = false
* item[+].linkId = "70314"
* item[=].code = http://loinc.org#718-7 "Hgb Bld-mCnc"
* item[=].text = "Hgb Bld-mCnc"
* item[=].type = #decimal
* item[=].required = true
* item[=].repeats = false
* item[+].linkId = "70315"
* item[=].code = http://loinc.org#4544-3 "Hct VFr Bld Auto"
* item[=].text = "Hct VFr Bld Auto"
* item[=].type = #decimal
* item[=].required = true
* item[=].repeats = false
* item[+].linkId = "70316"
* item[=].code = http://loinc.org#787-2 "MCV RBC Auto"
* item[=].text = "MCV RBC Auto"
* item[=].type = #decimal
* item[=].required = true
* item[=].repeats = false
* item[+].linkId = "70317"
* item[=].code = http://loinc.org#785-6 "MCH RBC Qn Auto"
* item[=].text = "MCH RBC Qn Auto"
* item[=].type = #decimal
* item[=].required = true
* item[=].repeats = false
* item[+].linkId = "70318"
* item[=].code = http://loinc.org#786-4 "MCHC RBC Auto-mCnc"
* item[=].text = "MCHC RBC Auto-mCnc"
* item[=].type = #decimal
* item[=].required = true
* item[=].repeats = false
* item[+].linkId = "70319"
* item[=].code = http://loinc.org#21000-5 "RDW RBC Auto"
* item[=].text = "RDW RBC Auto"
* item[=].type = #decimal
* item[=].repeats = false
* item[+].linkId = "70320"
* item[=].code = http://loinc.org#788-0 "RDW RBC Auto-Rto"
* item[=].text = "RDW RBC Auto-Rto"
* item[=].type = #decimal
* item[=].repeats = false
* item[+].linkId = "70321"
* item[=].code = http://loinc.org#777-3 "Platelet # Bld Auto"
* item[=].text = "Platelet # Bld Auto"
* item[=].type = #decimal
* item[=].required = true
* item[=].repeats = false
* item[+].linkId = "70322"
* item[=].code = http://loinc.org#32207-3 "PDW Bld Auto"
* item[=].text = "PDW Bld Auto"
* item[=].type = #decimal
* item[=].repeats = false
* item[+].linkId = "70323"
* item[=].code = http://loinc.org#32623-1 "PMV Bld Auto"
* item[=].text = "PMV Bld Auto"
* item[=].type = #decimal
* item[=].repeats = false


// ### Basic metabolic panel ###############
Instance: 51990-0
InstanceOf: Questionnaire
Title: "Basic metabolic panel, Blood"  // Consumer name
Description: "51990-0 Basic metabolic panel - Blood"
Usage: #example
* meta.versionId = "4"
* meta.lastUpdated = "2022-04-13T19:47:22.495+00:00"
* meta.source = "#4Q75pMeTbscwKKwf"
* url = "http://loinc.org/q/51990-0"
* name = "Bas_Metab_Pnl_Bld"
* title = "Bas Metab Pnl Bld"
* status = #draft
* publisher = "Regenstrief Institute, Inc."
* contact.name = "Regenstrief Institute, Inc."
* contact.telecom.system = #url
* contact.telecom.value = "http://loinc.org"
* copyright = "This content from LOINC® is copyright © 1995-2022 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at https://loinc.org/license/"
* code = http://loinc.org#51990-0 "Bas Metab Pnl Bld"
* item[0].linkId = "21550"
* item[=].code = http://loinc.org#2339-0 "Glucose Bld-mCnc"
* item[=].text = "Glucose Bld-mCnc"
* item[=].type = #decimal
* item[=].required = true
* item[=].repeats = false
* item[+].linkId = "21547"
* item[=].code = http://loinc.org#6299-2 "BUN Bld-mCnc"
* item[=].text = "BUN Bld-mCnc"
* item[=].type = #decimal
* item[=].required = true
* item[=].repeats = false
* item[+].linkId = "21551"
* item[=].code = http://loinc.org#38483-4 "Creat Bld-mCnc"
* item[=].text = "Creat Bld-mCnc"
* item[=].type = #decimal
* item[=].required = true
* item[=].repeats = false
* item[+].linkId = "21546"
* item[=].code = http://loinc.org#44734-2 "BUN/Creat Bld"
* item[=].text = "BUN/Creat Bld"
* item[=].type = #decimal
* item[=].repeats = false
* item[+].linkId = "21554"
* item[=].code = http://loinc.org#49765-1 "Calcium Bld-mCnc"
* item[=].text = "Calcium Bld-mCnc"
* item[=].type = #decimal
* item[=].required = true
* item[=].repeats = false
* item[+].linkId = "29779"
* item[=].text = "Lytes Pnl Bld"
* item[=].type = #group
* item[=].required = true
* item[=].item[0].linkId = "29784"
* item[=].item[=].code = http://loinc.org#2947-0 "Sodium Bld-sCnc"
* item[=].item[=].text = "Sodium Bld-sCnc"
* item[=].item[=].type = #decimal
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "29783"
* item[=].item[=].code = http://loinc.org#6298-4 "Potassium Bld-sCnc"
* item[=].item[=].text = "Potassium Bld-sCnc"
* item[=].item[=].type = #decimal
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "29782"
* item[=].item[=].code = http://loinc.org#2069-3 "Chloride Bld-sCnc"
* item[=].item[=].text = "Chloride Bld-sCnc"
* item[=].item[=].type = #decimal
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "29781"
* item[=].item[=].code = http://loinc.org#20565-8 "CO2 Bld-sCnc"
* item[=].item[=].text = "CO2 Bld-sCnc"
* item[=].item[=].type = #decimal
* item[=].item[=].required = true
* item[=].item[=].repeats = false
* item[=].item[+].linkId = "29785"
* item[=].item[=].code = http://loinc.org#41276-7 "Anion Gap Bld-sCnc"
* item[=].item[=].text = "Anion Gap Bld-sCnc"
* item[=].item[=].type = #decimal
* item[=].item[=].repeats = false

// ### Lipid 1996 panel ########################

Instance: 24331-1
InstanceOf: Questionnaire
Title: "Lipid 1996 panel, Blood"  // Consumer name
Description: "24331-1 Lipid 1996 panel - Serum or Plasma, but only for ordering"
Usage: #example
* meta.versionId = "4"
* meta.lastUpdated = "2022-04-13T19:47:22.495+00:00"
* meta.source = "#4Q75pMeTbscwKKwf"
* url = "http://loinc.org/q/24331-1"
* name = "Lipid_Pnl_SerPl"
* title = "Lipid 1996 Pnl SerPl"
* status = #draft
* publisher = "Regenstrief Institute, Inc."
* contact.name = "Regenstrief Institute, Inc."
* contact.telecom.system = #url
* contact.telecom.value = "http://loinc.org"
* copyright = "This content from LOINC® is copyright © 1995-2022 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at https://loinc.org/license/"
* code = http://loinc.org#24331-1 "Lipid 1996 Pnl SerPl"
* item[0].linkId = "10417"
* item[=].code = http://loinc.org#2093-3 "Cholest SerPl-mCnc"
* item[=].text = "Cholest SerPl-mCnc"
* item[=].type = #decimal
* item[=].required = true
* item[=].repeats = false
* item[+].linkId = "10422"
* item[=].code = http://loinc.org#2571-8 "Trigl SerPl-mCnc"
* item[=].text = "Trigl SerPl-mCnc"
* item[=].type = #decimal
* item[=].required = true
* item[=].repeats = false
* item[+].linkId = "10418"
* item[=].code = http://loinc.org#2085-9 "HDLc SerPl-mCnc"
* item[=].text = "HDLc SerPl-mCnc"
* item[=].type = #decimal
* item[=].required = true
* item[=].repeats = false
* item[+].linkId = "10420"
* item[=].code = http://loinc.org#13457-7 "LDLc SerPl Calc-mCnc"
* item[=].text = "LDLc SerPl Calc-mCnc"
* item[=].type = #decimal
* item[=].repeats = false
* item[+].linkId = "29767"
* item[=].code = http://loinc.org#13458-5 "VLDLc SerPl Calc-mCnc"
* item[=].text = "VLDLc SerPl Calc-mCnc"
* item[=].type = #decimal
* item[=].repeats = false
* item[+].linkId = "38269"
* item[=].code = http://loinc.org#11054-4 "LDLc/HDLc SerPl"
* item[=].text = "LDLc/HDLc SerPl"
* item[=].type = #decimal
* item[=].repeats = false
* item[+].linkId = "38268"
* item[=].code = http://loinc.org#9830-1 "Cholest/HDLc SerPl"
* item[=].text = "Cholest/HDLc SerPl"
* item[=].type = #decimal
* item[=].repeats = false

// ### Activated protein C resistance panel ####################
Instance: 48596-1
InstanceOf: Questionnaire
Title: "Activated Protein C Resistance Panel, Blood"  // Consumer name
Description: "48596-1 Activated protein C resistance panel - Platelet poor plasma"
Usage: #example
* meta.versionId = "4"
* meta.lastUpdated = "2022-04-13T19:47:22.495+00:00"
* meta.source = "#4Q75pMeTbscwKKwf"
* url = "http://loinc.org/q/48596-1"
* name = "APCR_Pnl_PPP"
* title = "aPCR Pnl PPP"
* status = #draft
* publisher = "Regenstrief Institute, Inc."
* contact.name = "Regenstrief Institute, Inc."
* contact.telecom.system = #url
* contact.telecom.value = "http://loinc.org"
* copyright = "This content from LOINC® is copyright © 1995-2022 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at https://loinc.org/license/"
* code = http://loinc.org#48596-1 "aPCR Pnl PPP"
* item[0].linkId = "17206"
* item[=].code = http://loinc.org#14979-9 "aPTT PPP"
* item[=].text = "aPTT PPP"
* item[=].type = #decimal
* item[=].repeats = false
* item[+].linkId = "17207"
* item[=].code = http://loinc.org#48590-4 "aPTT after addition of APC PPP"
* item[=].text = "aPTT after addition of APC PPP"
* item[=].type = #decimal
* item[=].repeats = false
* item[+].linkId = "17208"
* item[=].code = http://loinc.org#13590-5 "aPCR PPP"
* item[=].text = "aPCR PPP"
* item[=].type = #decimal
* item[=].repeats = false
* item[+].linkId = "17209"
* item[=].code = http://loinc.org#48591-2 "aPCR PPP-Imp"
* item[=].text = "aPCR PPP-Imp"
* item[=].type = #string
* item[=].repeats = false