Instance: panel-blood-electrolyte
InstanceOf: PlanDefinition
Description: "LabService of Pipette Lab for Electrolyte Panel"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabServiceDefinition"
* language = #en-US
* extension[0].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/CatalogReference"
* extension[=].valueReference = Reference(Composition/Pipette-Catalog-Header)
* extension[+].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ServiceBillingCode"
* extension[=].valueCodeableConcept = https://medcodesearch.ch/de/AL/laboratory_analyses#1479.00 "Kalium Grosslabor"
* extension[+].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ServiceBillingCode"
* extension[=].valueCodeableConcept = https://medcodesearch.ch/de/AL/laboratory_analyses#1574.00 "Natrium"
* extension[+].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ServiceBillingCode"
* extension[=].valueCodeableConcept = https://medcodesearch.ch/de/AL/laboratory_analyses#1229.00 "Chlorid"
* extension[+].extension[0].url = "textualSummary"
* extension[=].extension[=].valueMarkdown = "no notable particularity for billing"
* extension[=].extension[+].url = "reimbursabilitySummary"
* extension[=].extension[=].valueCode = #normal
* extension[=].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/BillingSummary"
* extension[+].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ScheduleSummary"
* extension[=].valueString = "Set up: Mon-Sat (Day shift or Night shift), Sun (Day shift); Report available: 1 day"
* extension[+].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LimitationSummary"
* extension[=].valueString = "No specific limitation for this panel"
* url = "http://fhir.ch/ig/ch-lab-order/lab-compendium/PlanDefinition/panel-blood-electrolyte"
* version = "0.1.0"
* name = "BloodElectrolytePanel"
* title = "Blood electrolyte panel (serum or plasma)"
* type = http://fhir.ch/ig/ch-lab-order/lab-compendium/CodeSystem/laboratory-service-definition-type#panel "collection of tests and panels performed on one or more in vitro biologic specimens"
* status = #draft
* experimental = true
* date = "2020-02-11T20:00:00+02:00"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/Special/committees/orders"
* description = "Potassium measurement on serum specimen"
* useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#task "Workflow Task"
* useContext.valueCodeableConcept = $v3-ActCode#LABOE // "laboratory test order entry task"
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* topic[0] = $loinc#18719-5 "Chemistry studies (set)"
* topic[+] = $sct#166312007 "Blood chemistry"
// * topic[+] = http://tools.cofrac.fr/documentation/SH-REF-08#BIOCHBM "Biochimie générale et spécialisée"
// * topic[+] = http://www.codage.ext.cnamts.fr/codif/nabm#13-01 "BIOCHIMIE - SANG"
* action.extension.extension.extension.url = "Material"
* action.extension.extension.extension.valueReference = Reference(SpecimenDefinition/specimen-serum-plasma) "Serum Plasma"

* action.extension.extension.url = "ExclusiveGroup"
* action.extension.url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/SpecimenRequested"
* action.code = $loinc#24326-1 "Electrolytes 1998 panel - Serum or Plasma"
* action.timingDuration = 30 'mn' "minutes"
* action.definitionCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-blood-electrolyte"