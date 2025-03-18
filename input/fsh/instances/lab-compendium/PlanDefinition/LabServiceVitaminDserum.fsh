Instance: LabServiceVitaminDserum
InstanceOf: PlanDefinition
Title: "PlanDefinition 25-hydroxyvitamin D3 [Moles/Vol]"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabServiceDefinition"
// * language = #de-CH
* text.status = #additional
* text.div = "<div xml:lang=\"de-CH\" xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"de-CH\">\n            <p><b>Zusätzliche Informationen in deutscher Sprache | Informationen in deutscher Sprache: </b></p>\n            <p>Monoparametrischer medizinischer Biologietest :</p>\n            <p>Konzentration von 25-hydroxyvitamin D3 [Moles/Vol]</p>\n            <p>Beschreibung : Vitamine D Konzentration in Serum-Probe</p>\n            <p>verschreibbar : ja</p>\n            <p>Laufzeit : 120 Minuten</p>\n        </div>"
* extension[0].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/CatalogReference"
* extension[=].valueReference = Reference(Composition/Pipette-Catalog-Header)
* extension[+].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ServiceBillingCode"
* extension[=].valueReference = Reference(ChargeItemDefinition/example-lab-billing-vitamind-focus)
* extension[+].extension[0].url = "textualSummary"
* extension[=].extension[=].valueMarkdown = "Reimbursement is subject to the patient condition in conjunction with the reason for ordering"
* extension[=].extension[+].url = "reimbursabilitySummary"
* extension[=].extension[=].valueCode = #conditional
* extension[=].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/BillingSummary"
* extension[+].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ScheduleSummary"
* extension[=].valueString = "Set up: Mon-Sat (Day shift or Night shift), Sun (Day shift); Report available: 1 day"
* extension[+].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LimitationSummary"
* extension[=].valueString = "No specific limitation for this test"
* url = "http://hl7.org/fhir/uv/order-catalog/PlanDefinition/example-lab-service-LabServiceVitaminDserum"
* version = "0.1.0"
* name = "VitaminDMeasurement"
* title = "25-hydroxyvitamin D3 [Moles/Vol]"
* title.extension.extension[0].url = "lang"
* title.extension.extension[=].valueCode = #de-CH
* title.extension.extension[+].url = "content"
* title.extension.extension[=].valueString = "25-hydroxyvitamin D3 [Moles/Vol]"
* title.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* type = http://hl7.org/fhir/uv/order-catalog/CodeSystem/laboratory-service-definition-type#test "unitary measurement performed on an in vitro biologic specimen"
* status = #active
* experimental = true
* date = "2020-02-19T20:00:00+02:00"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/Special/committees/orders"
* description = "Vitamine D dosée sur échantillon de sérum"
* useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#task
* useContext.valueCodeableConcept = $v3-ActCode#LABOE // "laboratory test order entry task"
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#756
* topic[0] = $loinc#18719-5 "Chemistry studies (set)"
* topic[+] = $sct#166312007 "Blood chemistry"
* action.extension.extension.extension.url = "Material"
* action.extension.extension.extension.valueReference = Reference(SpecimenDefinition/single-test-serum-venous) "example-specimen-venous-serum-single-test"
* action.extension.extension.extension.valueReference = Reference(SpecimenDefinition/single-test-serum-capillary) "example-specimen-capillary-serum-single-test"
* action.extension.extension.url = "ExclusiveGroup"
* action.extension.url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/SpecimenRequested"
* action.code = $loinc#14635-7 "25-hydroxyvitamin D3 [Moles/volume] in Serum or Plasma"
* action.timingDuration = 120 'mn' "minutes"
* action.definitionCanonical = "http://fhir.ch/ig/ch-lab-order/example-lab-procedure-vitamind-serum"