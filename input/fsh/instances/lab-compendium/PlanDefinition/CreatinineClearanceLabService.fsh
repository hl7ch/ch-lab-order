Instance: CreatinineClearanceLabService   // PlanDefinition
InstanceOf: ChLab_LabServiceDefinition
Title: "CH LAB-Order Creatinin Clearance Service"
Description: "Plan Definition for Creatinine Clearance"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabServiceDefinition"
* language = #de-CH
* extension[0].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/CatalogReference"
* extension[=].valueReference = Reference(Composition/example-lab-compendium-header)
// * extension[+].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ServiceBillingCode" // insert AL for Switzerland

// * extension[=].valueCodeableConcept = $nabm#0407
* extension[+].extension[0].url = "textualSummary"
* extension[=].extension[=].valueMarkdown = "no notable particularity for billing"
* extension[=].extension[+].url = "reimbursabilitySummary"
* extension[=].extension[=].valueCode = #normal
* extension[=].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/BillingSummary"
* extension[+].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ScheduleSummary"
* extension[=].valueString = "Daily ; report on D0"
* url = "http://fhir.ch/ig/ch-lab-order/lab-compendium/PlanDefinition/CreatinineClearanceLabService"
* version = "current"
* name = "RenalInsufficiencyPanel"
* title = "Renal Insufficiendy Panel"
* type = $laboratory-service-definition-type#panel
* status = #draft
* experimental = false
* date = "2020-02-12T19:00:00+01:00"
* publisher = "HL7 Switzerland"
* contact.telecom.system = #url
* contact.telecom.value = "https://hl7.ch"

* description = "This creatinin clearance panel is using the procedures from the 
    serum creatinine test as well as the procedure from the 24h urine creatinine panel."
* useContext.code = $usage-context-type#task
* useContext.valueCodeableConcept = $v3-ActCode#LABOE "laboratory test order entry task"
* useContext.valueCodeableConcept.text = "this panel is orderable"
* jurisdiction = urn:iso:std:iso:3166#CH
* topic[0] = $loinc#18719-5 "Chemistry studies (set)"
* topic[+] = $sct#444275009 "Measurement of creatinine concentration in serum or plasma specimen with calculation of glomerular filtration rate"
* topic[+] = $sct#250745003 "Albumin/creatinine ratio measurement (procedure)"

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
* action.definitionCanonical =           "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-urine24h-creatinine-clearance"
* action.action[0].definitionCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-serum-creatinine"
* action.action[+].definitionCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-urine24h-creatinine"