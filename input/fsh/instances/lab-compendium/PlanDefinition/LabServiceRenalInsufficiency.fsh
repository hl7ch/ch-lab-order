Instance: LabServiceRenalInsufficiency  // PlanDefinition
InstanceOf: LabServiceDefinition
Title: "CH LAB-Order Service for Renal Insufficiency Assessment Panel"
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

* url = "http://fhir.ch/ig/ch-lab-order/PlanDefinition/LabServiceRenalInsufficiency"
* identifier.use = #official
* identifier.value = "RenalInsufficiendyLabPanel"
* version = "current"
* name = "RenalInsufficiendyLabPanel"
* title = "Renal Insufficiency Lab Panel"

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
* topic[+] = $sct#441915005 "Measurement of renal function (procedure)"
* topic[+] = $sct#269858003 "Biochemical evaluation of blood urea/renal function (procedure)"
* topic[+] = $sct#444275009 "Measurement of creatinine concentration in serum or plasma specimen with calculation of glomerular filtration rate (procedure)"
* topic[+] = $sct#250745003 "Albumin/creatinine ratio measurement (procedure)"

* action.extension[+].extension[+].extension.url = "Material"
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
* action.code = $sct#441915005 "Measurement of renal function (procedure)"
* action.timingDuration = 2 'h' "hours"
* action.groupingBehavior = #logical-group
* action.selectionBehavior = #all
* action.definitionCanonical =           "http://fhir.ch/ig/ch-lab-order/ActivityDefinition/procedure-lab-panel-renal-insufficiency"
* action.action[+].definitionCanonical = "http://fhir.ch/ig/ch-lab-order/ActivityDefinition/procedure-lab-eGFR-ckd-epi"
* action.action[+].definitionCanonical = "http://fhir.ch/ig/ch-lab-order/ActivityDefinition/procedure-urine-uACR"