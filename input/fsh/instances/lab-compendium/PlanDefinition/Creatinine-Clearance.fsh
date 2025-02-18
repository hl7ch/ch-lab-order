Instance: creatinine-clearance
InstanceOf: PlanDefinition
Title: "PlanDefinition Creatinine Clearance"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabServiceDefinition"
* language = #en-US
* extension[0].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/CatalogReference"
* extension[=].valueReference = Reference(Composition/Pipette-Catalog-Header)
* extension[+].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ServiceBillingCode"
* extension[=].valueCodeableConcept = https://medcodesearch.ch/de/AL/laboratory_analyses#1509.00
* extension[+].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ServiceBillingCode"
* extension[=].valueCodeableConcept = https://medcodesearch.ch/de/AL/laboratory_analyses#1509.01
* extension[+].extension[0].url = "textualSummary"
* extension[=].extension[=].valueMarkdown = "no notable particularity for billing"
* extension[=].extension[+].url = "reimbursabilitySummary"
* extension[=].extension[=].valueCode = #normal
* extension[=].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/BillingSummary"
* extension[+].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ScheduleSummary"
* extension[=].valueString = "Daily ; report on D0"
* url = "http://fhir.ch/ig/ch-lab-order/lab-compendium/PlanDefinition/creatinine-clearance" // Canonical identifier
* version = "0.1.0"
* name = "UrineCreatinineClearancePanel"
* title = "24-hour urine creatinine clearance panel"
* type = http://hl7.org/fhir/uv/order-catalog/CodeSystem/laboratory-service-definition-type#panel "collection of tests and panels performed on one or more in vitro biologic specimens"
* status = #active
* experimental = true
* date = "2020-02-12T19:00:00+01:00"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/Special/committees/orders"
* description = "This 24-hour urine creatinine clearance panel is reusing the procedures from the serum creatinine test as well as the procedure from the 24h urine creatinine panel."
* useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#task
* useContext.valueCodeableConcept = $v3-ActCode#LABOE // "laboratory test order entry task"
* useContext.valueCodeableConcept.text = "this panel is orderable"
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* topic[0] = $loinc#18719-5 "Chemistry studies (set)"
* topic[+] = $sct#409091002 "24 hour urine measurement (procedure)"

// ---- Serum Specimen, venous serum or capillary serum ----
* action.extension[0].extension[0].extension.url = "Material"
* action.extension[=].extension[=].extension.valueReference = Reference(SpecimenDefinition/single-test-serum-venous) "example-specimen-venous-serum-single-test"
* action.extension[=].extension[=].url = "ExclusiveGroup"
* action.extension[=].extension[+].extension.url = "Material"
* action.extension[=].extension[=].extension.valueReference = Reference(SpecimenDefinition/single-test-serum-capillary) "example-specimen-capillary-serum-single-test"
* action.extension[=].extension[=].url = "ExclusiveGroup"
* action.extension[=].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/SpecimenRequested"

// ---- Urine Specimen ----
* action.extension[+].extension.extension.url = "Material"
* action.extension[=].extension.extension.valueReference = Reference(SpecimenDefinition/urine-24h) "example-specimen-urine-24h"
* action.extension[=].extension.url = "ExclusiveGroup"
* action.extension[=].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/SpecimenRequested"

//
* action.code = $loinc#34555-3 "Creatinine 24H renal clearance panel"
// * action.timingDuration = 2 'h' "hours"
* action.groupingBehavior = #logical-group
* action.selectionBehavior = #all
* action.definitionCanonical           = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-urine24h-creatinine-clearance"
* action.action[0].definitionCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-creatinine-serum"
* action.action[+].definitionCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-urine24h-creatinine"