Instance: 0-generic-mod-Questionnaire   // corresponds to resource
InstanceOf: ChOrfQuestionnaire
Title: "questionnaire 0-generic, modular version"
Description: "Example for Questionnaire for generic Lab Order"
Usage: #definition
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
* extension[=].extension[0].valueId = "Bundle"
* extension[=].extension[1].url = "type"
* extension[=].extension[1].valueCode = #Bundle
* extension[=].extension[2].url = "description"
* extension[=].extension[2].valueString = "The Bundle that is to be used to pre-populate the form"

* url = "http://fhir.ch/ig/ch-lab-order/Questionnaire/0-generic-mod"
* name = "LabOrderForm"
* title = "Lab Order Form 0-generic modular version"
* status = #active
* subjectType = #Patient
* date = "2022-05-04"
* publisher = "HL7 Switzerland"

// ###############  begin of general part  ##################################

// ---------- order (Auftrag) ----------
* item[+].linkId = "order"
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

// ---------- Patient: The principle target of a particular Form Content is one patient ----------
* item[+].linkId = "patient"
* item[=].definition = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-composition#Composition.subject"
* item[=].text = "Patient"
* item[=].type = #group
* item[=].required = true

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
// ##########################################################

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


/*/ --- LabServiceDefinition --------------------------------
* item[+].linkId = "labServiceDefinition"
* item[=].definition = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabServiceDefinition"
* item[=].text = "Lab Service Definition"
* item[=].type = #group
* item[=].repeats = true

*  item[=].item.extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
// * item[=].item.extension.valueCanonical = "http://fhir.ch/ig/ch-orf/Questionnaire/ch-orf-module-appointment|2.0.0"
* item[=].item.linkId = "PlanDefinition"
* item[=].item.text = "Unable to resolve 'appointment' sub-questionnaire"
* item[=].item.type = #display



// --- Choose from List of Catalogs - Catalog Header Profile--------------------
* item[=].item[+].item.linkId = "PlanDefinition.CatalogReference"
* item[=].item[+].item.text = "Unable to resolve 'PlanDefinition Catalog Reference' sub-questionnaire"
* item[=].item[+].item.type = #display

*/

Instance: 24326-1
InstanceOf: Questionnaire
Title: "Electrolytes 1998 panel, Blood"  // Consumer name
Description: "24326-1 Electrolytes 1998 panel - Serum or Plasma, but only for ordering"
Usage: #definition

* meta.versionId = "1"
* meta.lastUpdated = "2021-03-02T15:07:05.000-05:00"
* meta.source = "#uylouGDJXQ40Mvhr"
* meta.profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire|3.0"
* meta.tag.code = L-Forms#"lformsVersion: 29.0.0"
* name = "Lytes_1998_Pnl_SerPl" // Computer friendly name
* title = "Electrolytes 1998 panel - Serum or Plasma"
* status = #draft
* code = LOINC#24326-1 "Electrolytes 1998 panel - Serum or Plasma"
* item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].extension.valueCoding = http://unitsofmeasure.org#mmol/L "mmol/L"
* item[=].linkId = "/2951-2"
* item[=].code = LOINC#2951-2 "Sodium SerPl-sCnc"
* item[=].text = "Sodium SerPl-sCnc"
* item[=].type = #decimal
* item[=].required = false
* item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].extension.valueCoding = http://unitsofmeasure.org#mmol/L "mmol/L"
* item[=].linkId = "/2823-3"
* item[=].code = LOINC#2823-3 "Potassium SerPl-sCnc"
* item[=].text = "Potassium SerPl-sCnc"
* item[=].type = #decimal
* item[=].required = false
* item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].extension.valueCoding = http://unitsofmeasure.org#mmol/L "mmol/L"
* item[=].linkId = "/2075-0"
* item[=].code = LOINC#2075-0 "Chloride SerPl-sCnc"
* item[=].text = "Chloride SerPl-sCnc"
* item[=].type = #decimal
* item[=].required = false
* item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].extension.valueCoding = http://unitsofmeasure.org#mmol/L "mmol/L"
* item[=].linkId = "/1963-8"
* item[=].code = LOINC#1963-8 "HCO3 SerPl-sCnc"
* item[=].text = "HCO3 SerPl-sCnc"
* item[=].type = #decimal
* item[=].required = false
* item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].extension.valueCoding = http://unitsofmeasure.org#mmol/L "mmol/L"
* item[=].linkId = "/2028-9"
* item[=].code = LOINC#2028-9 "CO2 SerPl-sCnc"
* item[=].text = "CO2 SerPl-sCnc"
* item[=].type = #decimal
* item[=].required = false
* item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].extension.valueCoding = http://unitsofmeasure.org#mmol/L "mmol/L"
* item[=].linkId = "/33037-3"
* item[=].code = LOINC#33037-3 "Anion Gap SerPl-sCnc"
* item[=].text = "Anion Gap SerPl-sCnc"
* item[=].type = #decimal
* item[=].required = false