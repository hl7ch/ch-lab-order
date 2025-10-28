// Alias: $cpt = http://www.ama-assn.org/go/cpt   // will be replaced with official URL from FOHP AL
// Alias: $nabm = http://www.codage.ext.cnamts.fr/codif/nabm
Alias: $laboratory-service-definition-type = http://hl7.org/fhir/uv/order-catalog/CodeSystem/laboratory-service-definition-type
// Alias: $usage-context-type = http://terminology.hl7.org/CodeSystem/usage-context-type
// Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
// Alias: $SH-REF-08 = http://tools.cofrac.fr/documentation/SH-REF-08
// Alias: $testdirectory = https://testdirectory.questdiagnostics.com/

Instance: LabServicePotassiumSerum
InstanceOf: ChLabServiceDefinitionR4
Title: "CH LAB-Order Service for Potassium in Serum"
Description: "Lab Service for Serum Potassium"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabServiceDefinition"
* language = #en-US
* extension[0].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/CatalogReference"
* extension[=].valueReference = Reference(Composition/example-lab-compendium-header)
* extension[+].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ServiceBillingCode"
* extension[=].valueCodeableConcept = https://medcodesearch.ch/de/AL/laboratory_analyses#1479.00 "Kalium Grosslabor"  
// * extension[+].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ServiceBillingCode"
// * extension[=].valueCodeableConcept = $cpt#CPTfakecode "Potassium, serum"
// * extension[+].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ServiceBillingCode"
// * extension[=].valueCodeableConcept = $nabm#1608 "SANG : POTASSIUM (K)"
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
* url = "http://hl7.org/fhir/uv/order-catalog/PlanDefinition/example-lab-service-potassium-serum"
* identifier[0].use = #official
* identifier[=].value = "K_serum_test"
* identifier[+].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:oid:2.16.840.1.113883.4.642.40.999.34.8"
* version = "1.0.0-ballot"
* name = "PotassiumSerumMeasurement"
* title = "laboratory service - serum potassium level"
* title.extension.extension[0].url = "lang"
* title.extension.extension[=].valueCode = #fr-FR
* title.extension.extension[+].url = "content"
* title.extension.extension[=].valueString = "Dosage du potassium sérique"
* title.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* type = $laboratory-service-definition-type#test "unitary measurement performed on an in vitro biologic specimen"
* status = #draft
* experimental = true
* date = "2020-02-05T20:00:00+02:00"
* publisher = "HL7 International / Orders and Observations"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/orders"
* description = "Potassium measurement on serum specimen"
* useContext.code = $usage-context-type#task
* useContext.valueCodeableConcept = $v3-ActCode#LABOE "laboratory test order entry task"
// * jurisdiction = $m49.htm#001
* topic[0] = $loinc#18719-5 "Chemistry studies (set)"
* topic[+] = $sct#166312007 "Blood chemistry"
// * topic[+] = $SH-REF-08#BIOCHBM "Biochimie générale et spécialisée"
// * topic[+] = $nabm#13-01 "BIOCHIMIE - SANG"
// * relatedArtifact.type = #documentation
// * relatedArtifact.citation = "Potassium (symbol K from Latin:kalium) is a key chemical element involved in neuron function and influencing osmotic balance between cells and interstitial fluid. Depletion in potassium levels results in deficient fluid and electrolyte balance in the body as well as various nervous and cardiac dysfunctions. Studies suggest diets high in potassium can reduce the risk of hypertension and possibly stroke. Foods rich in potassium include parsley, dried apricots, potatoes, bananas, avocados, soybeans, and bran, as well as most fruits, vegetables, meat and fish. Overall, clear cases of potassium deficiency are rare in healthy individuals."
// * relatedArtifact.document.url = "https://en.wikipedia.org/wiki/Potassium"
* action.extension.extension.extension.url = "Material"
* action.extension.extension.extension.valueReference = Reference(SpecimenDefinition/single-test-serum-venous) "example-specimen-venous-serum-single-test"
* action.extension.extension.extension.valueReference = Reference(SpecimenDefinition/single-test-serum-capillary) "example-specimen-capillary-serum-single-test"
* action.extension.extension.url = "ExclusiveGroup"
* action.extension.url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/SpecimenRequested"

// * action.code.coding[0] = https://testdirectory.questdiagnostics.com#733 "Potassium, Serum"
// * action.code.coding[+] = $loinc#2823-3 "Potassium [Moles/volume] in Serum or Plasma"
* action.timingDuration = 30 'mn' "minutes"
* action.definitionCanonical = "http://hl7.org/fhir/uv/order-catalog/ActivityDefinition/example-lab-procedure-potassium-serum"