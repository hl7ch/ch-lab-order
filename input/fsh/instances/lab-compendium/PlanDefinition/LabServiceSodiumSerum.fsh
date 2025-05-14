Instance: LabServiceSodiumSerum
InstanceOf: PlanDefinition
Title: "CH LAB-Order Service for Sodium in Serum"
Description: "Lab Service of Pipette Lab for Serum Sodium"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabServiceDefinition"
* language = #en-US
* extension[0].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/CatalogReference"
* extension[=].valueReference = Reference(Composition/Gantenbein-Catalog-Header)
// * extension[+].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ServiceBillingCode"
// * extension[=].valueCodeableConcept = http://www.ama-assn.org/go/cpt#CPTfakecode "Sodium, serum"
* extension[+].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ServiceBillingCode"
* extension[=].valueCodeableConcept = https://medcodesearch.ch/de/AL/laboratory_analyses#1479.00 "Kalium Grosslabor"   // Analysen-Liste Code
* extension[+].extension[0].url = "textualSummary"
* extension[=].extension[=].valueMarkdown = "no notable particularity for billing"
* extension[=].extension[+].url = "reimbursabilitySummary"
* extension[=].extension[=].valueCode = #normal
* extension[=].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/BillingSummary"
* extension[+].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ScheduleSummary"
* extension[=].valueString = "Set up: Mon-Sat (Day shift or Night shift), Sun (Day shift); Report available: 1 day"
* extension[+].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LimitationSummary"
* extension[=].valueString = "No specific limitation for this test"
* extension[+].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/RegulatorySummary"
* extension[=].valueString = "CLIA Law & Regulations apply"
* url = "http://hl7.org/fhir/uv/order-catalog/PlanDefinition/LabServiceSodiumSerum"
* identifier.use = #official
* identifier.value = "Na_serum_test"
* version = "0.1.0"
* name = "SodiumSerumMeasurement"
* title = "Sodium measurement on in vitro blood serum"
* title.extension.extension[0].url = "lang"
* title.extension.extension[=].valueCode = #de-CH
* title.extension.extension[+].url = "content"
* title.extension.extension[=].valueString = "Dosage du sodium sérique"
* title.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* type = http://hl7.org/fhir/uv/order-catalog/CodeSystem/laboratory-service-definition-type#test "unitary measurement performed on an in vitro biologic specimen"
* status = #active
* experimental = true
* date = "2023-06-05T20:00:00+02:00"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/Special/committees/orders"
* description = "Sodium measurement on serum specimen"
* useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#task
* useContext.valueCodeableConcept = $v3-ActCode#LABOE // "laboratory test order entry task"
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#756
* topic[0] = $loinc#18719-5 "Chemistry studies (set)"
* topic[+] = $sct#166312007 "Blood chemistry"

// * relatedArtifact.type = #documentation
// * relatedArtifact.citation = "Sodium (Na) is a positively charged electrolyte and a mineral. Eighty-five percent of Na is located in the blood and lymph fluid. The hormone aldosterone that is secreted by the adrenal glands helps to regulate Na levels by signaling the kidneys to either retain or secrete it. Damage or disease to the kidneys can lead to dangerous fluctuations of sodium. Na plays a number of key roles in the homeostasis of the human body. It helps to maintain blood volume by osmotically pulling water into the blood vessels. Too much sodium in the blood may cause too much water to be brought into the blood vessels and lead to high blood pressure. Muscles and nerves conduct electrical impulses that require charged particles including Na. The electrical currents cause muscle cells to contract and nerve cells to relay electrical signals between them. Too little sodium can lead to muscle spasms, cramps, headache, irritability, restlessness, nausea and fatigue. Extreme hyponatremia can lead to confusion, hallucinations, decreased consciousness and coma. Conversely, hypernatremia can cause lethargy or restlessness, deep tendon reflexes, muscle spasticity and seizures."
// * relatedArtifact.url = "https://loinc.org/2951-2"
* action.extension.extension.extension.url = "Material"
* action.extension.extension.extension.valueReference = Reference(SpecimenDefinition/single-test-serum-venous) "example-specimen-venous-serum-single-test"
* action.extension.extension.extension.valueReference = Reference(SpecimenDefinition/single-test-serum-capillary) "example-specimen-capillary-serum-single-test"
* action.extension.extension.url = "ExclusiveGroup"
* action.extension.url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/SpecimenRequested"
* action.code.coding[0] = http://example.org/questdiagnostics.com/#733 "Sodium, Serum"
* action.code.coding[+] = $loinc#2951-2 "Sodium [Moles/volume] in Serum or Plasma"
* action.timingDuration = 30 'mn' "minutes"
* action.definitionCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-sodium-serum"