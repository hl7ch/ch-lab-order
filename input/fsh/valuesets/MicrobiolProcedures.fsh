Instance:     MicrobiolProcedures
InstanceOf:   $shareablevalueset
Usage:        #Definition
Description:  "Valueset Snomed CT Codes of Microbiological Procedures"
* extension.url = "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod"
* extension.valuePeriod.start = "2024-01-24T00:00:00+01:00"
* url = "http://fhir.ch/ig/ch-lab-order/ValueSet/MicrobiolProcedures"
* identifier.use = #official
// * identifier.system = "http://art-decor.org/ns/oids/vs"
// * identifier.value = "2.16.756.5.30.1.1.11.xyz"
* version = "2024-01-24T00:00:00"
* name = "MicrobiologicalProcedure"
* title = "Microbiological Procedure"
* status = #active
* experimental = false
* publisher = "eHealth Suisse"
* contact.name = "eHealth Suisse"
* contact.telecom.system = #url
* contact.telecom.value = "www.e-health-suisse.ch"
* description = "Valueset Snomed CT Codes of Microbiological Procedures"
* immutable = true

* compose.include.system = "$sct"
* compose.include.concept[0].code = #19851009
* compose.include.concept[=].display = "Microbiology procedure (procedure)"
* compose.include.system = $sct  
* compose.include.concept[0].code = $sct#14788002
* compose.include.concept[=].display = "Antimicrobial susceptibility test (procedure)"

* compose.include.concept[+].code = $sct#115254003
* compose.include.concept[=].display = "Fungal identification method (procedure)"

* compose.include.concept[+].code = $sct#115253009
* compose.include.concept[=].display = "Bacterial identification method (procedure)"


// * compose.include.concept[=].designation[0].language = #de-CH
// * compose.include.concept[=].designation[=].value = "Varizellen-Zoster-Virus IgG Ab [Titer] in Serum"
// * compose.include.concept[=].designation[+].language = #fr-CH
// * compose.include.concept[=].designation[=].value = "Anticorps IgG du virus varicelle-zona [titre] dans le sérum"
// * compose.include.concept[=].designation[+].language = #it-CH
// * compose.include.concept[=].designation[=].value = "virus varicella-zoster Ab IgG [titolo] in siero"
// * compose.include.concept[=].designation[+].language = #rm-CH
// * compose.include.concept[=].designation[=].value = "Varizellen-Zoster-Virus IgG Ab [Titer] in Serum"
// * compose.include.concept[=].designation[+].language = #en-US
// * compose.include.concept[=].designation[=].value = "Varicella zoster virus IgG Ab [Titer] in Serum"
// * compose.include.concept[+].code = #22502-9
// * compose.include.concept[=].display = "Measles virus IgG Ab [Titer] in Serum"
// * compose.include.concept[=].designation[0].language = #de-CH
// * compose.include.concept[=].designation[=].value = "Masern-Virus IgG Ab [Titer] in Serum"
// * compose.include.concept[=].designation[+].language = #fr-CH
// * compose.include.concept[=].designation[=].value = "Anticorps IgG du virus de la rougeole [titre] dans le sérum"
// * compose.include.concept[=].designation[+].language = #it-CH
// * compose.include.concept[=].designation[=].value = "virus del morbillo Ab IgG [titolo] in siero"
// * compose.include.concept[=].designation[+].language = #rm-CH
// * compose.include.concept[=].designation[=].value = "Masern-Virus IgG Ab [Titer] in Serum"
// * compose.include.concept[=].designation[+].language = #en-US
// * compose.include.concept[=].designation[=].value = "Measles virus IgG Ab [Titer] in Serum"