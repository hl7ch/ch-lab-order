Instance: example-lab-billing-vitamind-focus
InstanceOf: ChargeItemDefinition
Title: "ChargeItemDefinition: Limitations on Vitamin D Test"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabChargeItemDefinition"
// * language = #de-CH
* text.status = #additional
* text.div = "<div xml:lang=\"de-CH\" xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"de-CH\">\n            <p><b>Additional Narrative in French language | Vue narrative en français : </b></p>\n            <p>Codage affiné (1139) et conditions d'application du dosage de la vitamine D - Nomenclature des Actes de Biologie Médicale (NABM version 56)</p>\n            <p>La prise en charge de cet acte est limitée aux situations suivantes : </p>\n            <ul>\n                <li>suspicion de rachitisme</li>\n                <li>suspicion d’ostéomalacie</li>\n                <li>suivi ambulatoire de l’adulte transplanté rénal au-delà de trois mois après transplantation</li>\n                <li>avant et après chirurgie bariatrique</li>\n                <li>évaluation et prise en charge des personnes âgées sujettes aux chutes répétées</li>\n                <li>respect des résumés des caractéristiques du produit (RCP) des médicaments préconisant la\n                    réalisation de l’acte 1139</li>\n            </ul>\n        </div>"
* url = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ChargeItemDefinition/example-lab-billing-vitamind-focus"
* version = "0.1.0"
* title = "Bestimmung von 25-OH-Vitamin D"
* status = #active
* date = "2022-07-01"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/Special/committees/orders"
* description = "Limitationen. Nur einmal verrechenbar im Falle einer separaten Bestimmung der beiden Formen von 25-HydroxyVitamin-D (25-OH-D3 und 25-OH-D2)"

* useContext[0].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = $sct#41345002 "Rickets (disorder)"
* useContext[=].valueCodeableConcept.text = "(Verdacht) Rachitis"

* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = $sct#4598005 "Osteomalacia (disorder)"
* useContext[=].valueCodeableConcept.text = "(Verdacht) Osteomalazie"

* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = $sct#312894000 "Osteopenia (disorder)"
* useContext[=].valueCodeableConcept.text = "(Verdacht) Osteopenie"

* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = $sct#64859006 "Osteoporosis (disorder)"
* useContext[=].valueCodeableConcept.text = "(Verdacht) Osteoporose"

* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = $sct#268029009 "Pathological fracture (disorder)"
* useContext[=].valueCodeableConcept.text = "(Verdacht) nicht traumatische Fraktur"

* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = $sct#443731004 "Assessment using Falls Risk Assessment Scale for the Elderly (procedure)"
* useContext[=].valueCodeableConcept.text = "Beurteilung und Behandlung nach unklarem Sturzereignis bei Patienten ≥ 65 Jahren"

* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = $sct#391040000 "At increased risk of osteoporotic fracture (finding)"
* useContext[=].valueCodeableConcept.text = "bei anamnestisch erhöhtem Frakturrisiko bei Patienten ≥ 65 Jahre"

* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = $sct#90708001 "Kidney disease (disorder)"
* useContext[=].valueCodeableConcept.text = "Nierenerkrankungen, inkl. Urolithiasis"

* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = $sct#73132005 "Disorder of parathyroid gland (disorder)"
* useContext[=].valueCodeableConcept.text = "Störungen des Parathormons, der Kalzämie und/oder der Phosphatämie"

* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = $sct#119292006 "Disorder of gastrointestinal tract (disorder)"
* useContext[=].valueCodeableConcept.text = "Gastrointestinale Erkrankungen"

* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = $sct#32230006 "Malabsorption syndrome (disorder)"
* useContext[=].valueCodeableConcept.text = "Malabsorptionssyndrome"

* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = $sct#235856003 "Disorder of liver (disorder)"
* useContext[=].valueCodeableConcept.text = "Lebererkrankungen"

* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = $sct#761938008 "Medicinal prescription record (record artifact)"
* useContext[=].valueCodeableConcept.text = "Patienten, die Medikamente, die den Vit. D Stoffwechsel beeinflussen, einnehmen"

* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#756   // Code for 
* code = https://medcodesearch.ch/de/AL/laboratory_analyses#1006.00 "Vitamin D"  // needs API connection

* propertyGroup.priceComponent.type = #base
* propertyGroup.priceComponent.code = https://medcodesearch.ch/de/AL/laboratory_analyses#1006.00
* propertyGroup.priceComponent.factor = 1

// Limitationen AL: 
// 1. Nur einmal verrechenbar im Falle einer separaten Bestimmung der beiden Formen von 25-Hydroxy-Vitamin-D (25- OH-D3 und 25-OH-D2)
// 2. Nur bei Patienten und Patientinnen: 
// - mit einer der folgenden Erkrankungen oder Verdacht auf eine der folgenden Erkrankungen: 
// • Osteomalazie, Rachitis
// • Osteopenie
// • Osteoporose
// • nicht traumatische Fraktur
// • nach unklarem Sturzereignis bei Patienten ≥ 65 Jahre
// • bei anamnestisch erhöhtem Frakturrisiko bei Patienten ≥ 65 Jahre
// - mit einer der folgenden Erkrankungen oder Verdacht auf eine der folgenden Erkrankungen, die den Vitamin D Stoffwechsel oder dessen Absorption beeinflussen: 
// • Nierenerkrankungen, inkl. Urolithiasis 
// • Störungen des Parathormons, der Kalzämie und/oder der Phosphatämie
// • Gastrointestinale Erkrankungen
// • Malabsorptionssyndrome
// • Lebererkrankungen
// - die Medikamente einnehmen, die den Vitamin D Stoffwechsel oder dessen Absorption beeinflussen
//   https://www.deutsche-apotheker-zeitung.de/daz-az/2011/daz-12-2011/vitamin-d3-und-arzneimittel
// 3. Falls eine Verlaufskontrolle des Vitamin D Spiegels im Rahmen einer der unter Punkt 2 gelisteten Fälle indiziert ist, darf die Analyse maximal einmal pro 3 Monat.