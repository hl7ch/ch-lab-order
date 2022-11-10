Instance: chloride-serum
InstanceOf: PlanDefinition
Description: "Lab Service of Pipette Lab for Serum Chloride"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabServiceDefinition"
* language = #en-US
* extension[0].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/CatalogReference"
* extension[=].valueReference = Reference(Composition/Pipette-Catalog-Header)
* extension[+].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ServiceBillingCode"  // Analysen-Liste Code
* extension[=].valueCodeableConcept = http://www.ama-assn.org/go/cpt#CPTfakecode "Chloride, serum"
* extension[+].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ServiceBillingCode"
* extension[=].valueCodeableConcept = http://www.codage.ext.cnamts.fr/codif/nabm#1608 "SANG : POTASSIUM (K)"
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
* url = "http://hl7.org/fhir/uv/order-catalog/PlanDefinition/example-lab-service-chloride-serum"
* identifier.use = #official
* identifier.value = "Cl_serum_test"
* version = "0.1.0"
* name = "ChlorideSerumMeasurement"
* title = "Chloride measurement on in vitro blood serum"
* title.extension.extension[0].url = "lang"
* title.extension.extension[=].valueCode = #fr-FR
* title.extension.extension[+].url = "content"
* title.extension.extension[=].valueString = "Dosage du chloride sérique"
* title.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* type = http://hl7.org/fhir/uv/order-catalog/CodeSystem/laboratory-service-definition-type#test "unitary measurement performed on an in vitro biologic specimen"
* status = #draft
* experimental = true
* date = "2020-02-05T20:00:00+02:00"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/Special/committees/orders"
* description = "Chloride measurement on serum specimen"
* useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#task
* useContext.valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#LABOE "laboratory test order entry task"
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* topic[0] = http://loinc.org#18719-5 "Chemistry studies (set)"
* topic[+] = http://snomed.info/sct#166312007 "Blood chemistry"
* topic[+] = http://tools.cofrac.fr/documentation/SH-REF-08#BIOCHBM "Biochimie générale et spécialisée"
* topic[+] = http://www.codage.ext.cnamts.fr/codif/nabm#13-01 "BIOCHIMIE - SANG"
* relatedArtifact.type = #documentation
* relatedArtifact.citation = "Chloride is an essential mineral required by humans that is found mainly in body fluids. It is an important, negatively charged ion in the blood, and a major electrolyte that helps to conduct electrical impulses. Electrolytes including chloride are located in the blood, lymph, and intra- and extra-cellular fluid. Chloride helps to regulate osmolarity by offsetting the positively charged sodium and potassium ions in the serum. It combines with hydrogen to form hydrochloric acid in the digestive tract which breaks down proteins, absorbs metallic minerals, and activates intrinsic factor. Chloride is absorbed both actively and passively in order to help maintain extracellular fluid volume. There is a continuous exchange of chloride and bicarbonate that occurs between the red blood cells and the plasma that controls the pH and excretion of carbon dioxide, a waste product of respiration.[https://traceminerals.com/chloride-the-forgotten-essential-mineral/]
"
* relatedArtifact.url = "https://en.wikipedia.org/wiki/Chloride"
* action.extension.extension.extension.url = "Material"
* action.extension.extension.extension.valueReference = Reference(SpecimenDefinition/example-specimen-venous-serum-single-test) "example-specimen-venous-serum-single-test"
* action.extension.extension.url = "ExclusiveGroup"
* action.extension.url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/SpecimenRequested"
* action.code.coding[0] = https://testdirectory.questdiagnostics.com/#733 "Chloride, Serum"
* action.code.coding[+] = http://loinc.org#2075-0 "Chloride [Moles/volume] in Serum or Plasma"
* action.timingDuration = 30 'mn' "minutes"
* action.definitionCanonical = "http://hl7.org/fhir/uv/order-catalog/ActivityDefinition/procedure-chloride-serum"