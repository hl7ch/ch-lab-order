// Define the PlanDefinition resource

// Instance: RenalInsuffiencyLabService
// InstanceOf: ChLab_LabServiceDefinition
// Usage: #example
// * title = "Renal Insuffiency Lab Service"
// * description = "A clinical guideline for managing diabetes, including regular HbA1c testing and lifestyle recommendations."
// * status = #active
// * experimental = true
// * date = "2023-10-01"
// * publisher = "Example Healthcare Organization"
// * jurisdiction = urn:iso:std:iso:3166#US "United States of America"
// * purpose = "To provide a standardized approach for managing diabetes in adult patients."
// * action[+].title = "Perform HbA1c Test"
// * action[=].description = "Order an HbA1c test every 3 months for diabetic patients."
// * action[=].code = http://snomed.info/sct#43396009 "Hemoglobin A1c measurement"
// * action[=].timingTiming.repeat.frequency = 1
// * action[=].timingTiming.repeat.period = 3
// * action[=].timingTiming.repeat.periodUnit = #mo
// * action[+].title = "Lifestyle Recommendations"
// * action[=].description = "Provide lifestyle recommendations, including diet and exercise."
// * action[=].code = http://snomed.info/sct#386358003 "Diet education"
// * action[=].relatedAction[+].actionId = "1"
// * action[=].relatedAction[=].relationship = #before-start

// Alias: $nabm = http://www.codage.ext.cnamts.fr/codif/nabm
// Alias: $laboratory-service-definition-type = http://hl7.org/fhir/uv/order-catalog/CodeSystem/laboratory-service-definition-type
// Alias: $usage-context-type = http://terminology.hl7.org/CodeSystem/usage-context-type
// Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
// Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
// Alias: $loinc = http://loinc.org
// Alias: $sct = http://snomed.info/sct
// Alias: $SH-REF-08 = http://tools.cofrac.fr/documentation/SH-REF-08

Instance: RenalInsuffiencyLabService   // PlanDefinition
InstanceOf: ChLab_LabServiceDefinition
Title: "CH LAB-Order Renal Insufficiency Assessment Service"
Description: "Plan Definition for eGFK and uACR procedures"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabServiceDefinition"
* language = #de-CH
* extension[0].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/CatalogReference"
* extension[=].valueReference = Reference(Composition/Pipette-Catalog-Header)
// * extension[+].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ServiceBillingCode" // insert AL for Switzerland

// * extension[=].valueCodeableConcept = $nabm#0407
* extension[+].extension[0].url = "textualSummary"
* extension[=].extension[=].valueMarkdown = "no notable particularity for billing"
* extension[=].extension[+].url = "reimbursabilitySummary"
* extension[=].extension[=].valueCode = #normal
* extension[=].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/BillingSummary"
* extension[+].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ScheduleSummary"
* extension[=].valueString = "Daily ; report on D0"
* url = "http://hl7.org/fhir/uv/order-catalog/PlanDefinition/example-lab-panel-urine24h-creatinine-clearance"
* version = "current"
* name = "RenalInsufficiendyPanel"
* title = "Renal Insufficiendy Panel"
* type = $laboratory-service-definition-type#panel
* status = #draft
* experimental = false
* date = "2025-01-12T19:00:00+01:00"
* publisher = "HL7 Switzerland"
* contact.telecom.system = #url
* contact.telecom.value = "https://hl7.ch"

* description = "This renal insufficiency panel is using the procedure from the 
    eGFK CKD EPI 2021 test as well as the procedure from the uACR test."
* useContext.code = $usage-context-type#task
* useContext.valueCodeableConcept = $v3-ActCode#LABOE "laboratory test order entry task"
* useContext.valueCodeableConcept.text = "this panel is orderable"
* jurisdiction = urn:iso:std:iso:3166#CH
* topic[0] = $loinc#18719-5 "Chemistry studies (set)"
* topic[+] = $sct#269858003 "Biochemical evaluation of blood urea/renal function (procedure)"
* topic[+] = $sct#444275009 "Measurement of creatinine concentration in serum or plasma specimen with calculation of glomerular filtration rate (procedure)"
* topic[+] = $sct#250745003 "Albumin/creatinine ratio measurement (procedure)"

// TODO: adapt actions
* action.extension[0].extension[0].extension.url = "Material"
* action.extension[=].extension[=].extension.valueReference = Reference(SpecimenDefinition/example-specimen-venous-serum-single-test) "example-specimen-venous-serum-single-test"
* action.extension[=].extension[=].url = "ExclusiveGroup"
* action.extension[=].extension[+].extension.url = "Material"
* action.extension[=].extension[=].extension.valueReference = Reference(SpecimenDefinition/example-specimen-capillary-serum-single-test) "example-specimen-capillary-serum-single-test"
* action.extension[=].extension[=].url = "ExclusiveGroup"
* action.extension[=].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/SpecimenRequested"
* action.extension[+].extension.extension.url = "Material"
* action.extension[=].extension.extension.valueReference = Reference(SpecimenDefinition/example-specimen-urine-24h) "example-specimen-urine-24h"
* action.extension[=].extension.url = "ExclusiveGroup"
* action.extension[=].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/SpecimenRequested"
* action.code = $loinc#34555-3 "Creatinine 24H renal clearance panel"
* action.timingDuration = 2 'h' "hours"
* action.groupingBehavior = #logical-group
* action.selectionBehavior = #all
* action.definitionCanonical =           "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-lab-panel-renal-insufficiency"
* action.action[0].definitionCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-lab-eGFR-ckd-epi"
* action.action[+].definitionCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-lab-uACR"