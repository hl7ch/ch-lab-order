Instance: serum-venous-new
InstanceOf: ChLab_SpecimenDefinitionR4
Usage: #example
Title: "Serum Specimen Definition (Venous Blood)"
Description: "Example serum specimen for venous blood with defined handling."

* extension[status].valueCode = #active
* extension[testingDestination].valueCodeableConcept = $v2-0074#CH "Chemistry"

// ─────────────────────────────
// Specimen collection method (new extension)
// ─────────────────────────────
* extension[collectionMethod].url = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-specimen-collection-method"
* extension[collectionMethod].valueCodeableConcept = http://snomed.info/sct#28520004 "Venipuncture for blood test (procedure)"


* typeCollected = http://snomed.info/sct#122555007 "Venous blood specimen"
* typeTested.type = http://snomed.info/sct#119364003 "Serum specimen"
* typeTested.preference = #preferred

// ─────────────────────────────
// Handling (using extension)
// ─────────────────────────────
* typeTested.extension[handling].extension[temperatureQualifier].valueCodeableConcept.coding[0].system = "http://fhir.ch/ig/ch-lab-order/CodeSystem/ch-lab-cs-specimen-container-temperature"
* typeTested.extension[handling].extension[temperatureQualifier].valueCodeableConcept.coding[0].code = #ambient
* typeTested.extension[handling].extension[temperatureQualifier].valueCodeableConcept.coding[0].display = "Ambient"

* typeTested.extension[handling].extension[maxDuration].valueDuration = 2 'h'
* typeTested.extension[handling].extension[instruction].valueMarkdown = "Keep at room temperature; centrifuge within 2 hours after collection."
