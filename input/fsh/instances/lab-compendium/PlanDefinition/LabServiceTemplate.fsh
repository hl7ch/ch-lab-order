Instance: LabServiceTemplate   // PlanDefinition
InstanceOf: ChLabServiceDefinitionR4
Title: "CH LAB-Order Template for Lab Service"
Description: "only for development purposes"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabServiceDefinition"
* language = #en-US
* extension[0].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/CatalogReference"
* extension[=].valueReference = Reference(Composition/example-lab-compendium-header)
// * extension[+].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ServiceBillingCode"
// * extension[=].valueCodeableConcept = $nabm#0407
* extension[+].extension[0].url = "textualSummary"
* extension[=].extension[=].valueMarkdown = "no notable particularity for billing"
* extension[=].extension[+].url = "reimbursabilitySummary"
* extension[=].extension[=].valueCode = #normal
* extension[=].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/BillingSummary"
* extension[+].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ScheduleSummary"
* extension[=].valueString = "Daily ; report on D0"

* url = "http://fhir.ch/ig/ch-lab-order/PlanDefinition/LabServiceTemplate"
* version = "current"
* name = "UrineCreatinineClearancePanel"
* title = "24-hour urine creatinine clearance panel"
* type = $laboratory-service-definition-type#panel "collection of tests and panels performed on one or more in vitro biologic specimens"
* status = #draft
* experimental = false
* date = "2020-02-12T19:00:00+01:00"
* publisher = "HL7 Switzerland Laborgruppe"

* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.ch"
* description = "This 24-hour urine creatinine clearance panel is reusing the procedures from the          serum creatinine test as well as the procedure from the 24h urine creatinine panel."
* useContext.code = $usage-context-type#task
* useContext.valueCodeableConcept = $v3-ActCode#LABOE "laboratory test order entry task"
* useContext.valueCodeableConcept.text = "this panel is orderable"
* jurisdiction = $m49.htm#001
* topic[0] = $loinc#18719-5 "Chemistry studies (set)"
* topic[+] = $sct#409091002 "24 hour urine measurement (procedure)"
// * topic[+] = $SH-REF-08#BIOCHBM "Biochimie générale et spécialisée"
// * topic[+] = $nabm#13-03 "BIOCHIMIE - URINE"
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

// * action.code.coding[orderCodeLOINC] = $loinc#34555-3 "Creatinine 24H renal clearance panel"
// * action.code.coding[orderCodeLOINC].system = $sct#409091002 "24 hour urine measurement (procedure)"

* action.timingDuration = 2 'h' "hours"
* action.groupingBehavior = #logical-group
* action.selectionBehavior = #all
* action.definitionCanonical = "http://hl7.org/fhir/uv/order-catalog/ActivityDefinition/example-lab-urine24h-creatinine-clearance"
* action.action[0].definitionCanonical = "http://hl7.org/fhir/uv/order-catalog/ActivityDefinition/example-lab-procedure-serum-creatinine"
* action.action[+].definitionCanonical = "http://hl7.org/fhir/uv/order-catalog/ActivityDefinition/example-lab-urine24h-creatinine"