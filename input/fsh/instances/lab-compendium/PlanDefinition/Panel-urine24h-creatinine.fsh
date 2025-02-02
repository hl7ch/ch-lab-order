Instance: PanelUrine24hCreatinine
InstanceOf: PlanDefinition
Title: "CH LAB-Order 24-hour Urine Creatinine Panel Service"
Description: "PlanDefinition for mesurement of Creatinine [Mass/time] in 24 hour Urine"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabServiceDefinition"
* language = #en-US
* extension[0].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/CatalogReference"
* extension[=].valueReference = Reference(Composition/Gantenbein-Catalog-Header)
* extension[+].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ServiceBillingCode"
* extension[=].valueCodeableConcept = https://medcodesearch.ch/de/AL/laboratory_analyses#1509.00 "Kreatinin, Urin"
* extension[+].extension[0].url = "textualSummary"
* extension[=].extension[=].valueMarkdown = "no notable particularity for billing"
* extension[=].extension[+].url = "reimbursabilitySummary"
* extension[=].extension[=].valueCode = #normal
* extension[=].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/BillingSummary"
* extension[+].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ScheduleSummary"
* extension[=].valueString = "Daily ; report on D0"
* url = "http://hl7.org/fhir/uv/order-catalog/PlanDefinition/PanelUrine24hCreatinine"
* version = "0.1.0"
* name = "UrineCreatininePanel"
* title = "24-hour urine creatinine panel"
* type = http://hl7.org/fhir/uv/order-catalog/CodeSystem/laboratory-service-definition-type#panel
* status = #active
* experimental = true
* date = "2020-02-12T19:00:00+01:00"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/Special/committees/orders"
* description = "Potassium measurement on serum specimen"
* useContext[0].code = http://terminology.hl7.org/CodeSystem/usage-context-type#task
* useContext[=].valueCodeableConcept = $v3-ActCode#LABOE // "laboratory test order entry task"
* useContext[=].valueCodeableConcept.text = "this panel is orderable"
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#task
* useContext[=].valueCodeableConcept = $v3-ActCode#LABRREV // "laboratory results review task"
* useContext[=].valueCodeableConcept.text = "This panel may be added upon the pathologist initiative after result review of the order"
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#756

* topic[0] = $loinc#18729-4 "Urinalysis studies (set)"
* topic[+] = $sct#409091002 "24 hour urine measurement (procedure)"

* action.extension.extension.extension.url = "Material"
* action.extension.extension.extension.valueReference = Reference(SpecimenDefinition/urine-24h) "example-specimen-urine-24h"
* action.extension.extension.url = "ExclusiveGroup"
* action.extension.url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/SpecimenRequested"
* action.code = $loinc#65634-8 "Creatinine 24 hour urine panel - 24 hour Urine"
* action.timingDuration = 2 'h' "hours"
* action.definitionCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-urine24h-creatinine"