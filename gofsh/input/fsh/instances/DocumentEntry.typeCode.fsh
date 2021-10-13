Instance: DocumentEntry.typeCode
InstanceOf: $shareablevalueset
Usage: #definition
* meta.source = "http://art-decor.org/fhir/ValueSet/2.16.756.5.30.1.127.3.10.1.27--20200226173448"
* extension.url = "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod"
* extension.valuePeriod.start = "2020-02-26T17:34:48+02:00"
* url = "http://fhir.ch/ig/ch-lab-order/ValueSet/DocumentEntry.typeCode"
* identifier.use = #official
* identifier.system = "http://art-decor.org/ns/oids/vs"
* identifier.value = "2.16.756.5.30.1.127.3.10.1.27"
* version = "2.0.4"
* name = "DocumentEntryTypeCode"
* title = "DocumentEntry.typeCode"
* status = #active
* experimental = false
* date = "2020-07-08T16:30:23+02:00"
* publisher = "HL7 Switzerland"
* contact.name = "HL7 Switzerland"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.hl7.ch/"
* description = "Type of document as per Annex 3 EPRO-FDHA.\n      \t\tThe code defines a document’s type (e.g. discharge report, laboratory report). Each document type should be assigned to precisely one document class.\n    "
* jurisdiction = urn:iso:std:iso:3166#CH
* immutable = false
* copyright = "This artefact includes content from SNOMED Clinical Terms® (SNOMED CT®) which is copyright of the International Health Terminology Standards Development Organisation (IHTSDO). Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license - for more information contact http://www.snomed.org/snomed-ct/getsnomed-ct or info@snomed.org."
* compose.include.system = "http://snomed.info/sct"
* compose.include.concept[0].code = #721965002
* compose.include.concept[=].display = "Laboratory order (record artifact)"
* compose.include.concept[=].designation[0].language = #de-CH
* compose.include.concept[=].designation[=].value = "Laborauftrag"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "Mandat d’analyse en laboratoire"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "Richiesta di analisi di laboratorio"
* compose.include.concept[=].designation[+].language = #en-US
* compose.include.concept[=].designation[=].value = "Laboratory Order"
* compose.include.concept[+].code = #721966001
* compose.include.concept[=].display = "Pathology order (record artifact)"
* compose.include.concept[=].designation[0].language = #de-CH
* compose.include.concept[=].designation[=].value = "Pathologieauftrag"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "Mandat de rapport d’examen pathologique"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "Richiesta di esame istologico"
* compose.include.concept[=].designation[+].language = #en-US
* compose.include.concept[=].designation[=].value = "Pathology order"
* compose.include.concept[+].code = #4241000179101
* compose.include.concept[=].display = "Laboratory report (record artifact)"
* compose.include.concept[=].designation[0].language = #de-CH
* compose.include.concept[=].designation[=].value = "Laborbericht"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "Rapport de laboratoire"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "Referto di laboratorio"
* compose.include.concept[=].designation[+].language = #en-US
* compose.include.concept[=].designation[=].value = "Laboratory report"
* compose.include.concept[+].code = #371528001
* compose.include.concept[=].display = "Pathology report (record artifact)"
* compose.include.concept[=].designation[0].language = #de-CH
* compose.include.concept[=].designation[=].value = "Pathologiebericht"
* compose.include.concept[=].designation[+].language = #fr-CH
* compose.include.concept[=].designation[=].value = "Rapport d’examen pathologique"
* compose.include.concept[=].designation[+].language = #it-CH
* compose.include.concept[=].designation[=].value = "Referto istologico"
* compose.include.concept[=].designation[+].language = #en-US
* compose.include.concept[=].designation[=].value = "Pathology report"