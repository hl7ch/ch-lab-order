Instance: vitamind-serum
InstanceOf: PlanDefinition
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabServiceDefinition"
* language = #fr-FR
* text.status = #additional
* text.div = "<div xml:lang=\"fr-FR\" xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"fr-FR\">\n            <p><b>Additional Narrative in French language | Vue narrative en français : </b></p>\n            <p>Examen de biologie médicale monoparamétrique :</p>\n            <p>Dosage de la 25-(OH)-vitamine D (D2 + D3)</p>\n            <p>description : Vitamine D dosée sur échantillon de sérum</p>\n            <p>prescriptible : oui</p>\n            <p>délai de rendu : 120 minutes</p>\n        </div>"
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
* url = "http://hl7.org/fhir/uv/order-catalog/PlanDefinition/example-lab-service-vitamind-serum"
* version = "0.1.0"
* name = "VitaminDMeasurement"
* title = "Dosage de la vitamine D dans le sang"
* title.extension.extension[0].url = "lang"
* title.extension.extension[=].valueCode = #fr-FR
* title.extension.extension[+].url = "content"
* title.extension.extension[=].valueString = "Dosage de la 25-(OH)-vitamine D (D2 + D3)"
* title.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* type = http://hl7.org/fhir/uv/order-catalog/CodeSystem/laboratory-service-definition-type#test "unitary measurement performed on an in vitro biologic specimen"
* status = #draft
* experimental = true
* date = "2020-02-19T20:00:00+02:00"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/Special/committees/orders"
* description = "Vitamine D dosée sur échantillon de sérum"
* useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#task
* useContext.valueCodeableConcept = $v3ActCode#LABOE "laboratory test order entry task"
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* topic[0] = $lnc#18719-5 "Chemistry studies (set)"
* topic[+] = $sct#166312007 "Blood chemistry"

* action.extension.extension.extension.url = "Material"
* action.extension.extension.extension.valueReference = Reference(SpecimenDefinition/Venous-Blood) "example-specimen-venous-serum-single-test"
* action.extension.extension.url = "ExclusiveGroup"
* action.extension.url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/SpecimenRequested"
* action.code = $lnc#14635-7 "25-hydroxyvitamin D3 [Moles/volume] in Serum or Plasma"
* action.timingDuration = 120 'mn' "minutes"
* action.definitionCanonical = "http://fhir.ch/ig/ch-lab-order/example-lab-procedure-vitamind-serum"