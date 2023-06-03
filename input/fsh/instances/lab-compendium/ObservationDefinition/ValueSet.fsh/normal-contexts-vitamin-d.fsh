ValueSet: NormalReasonsVitaminD
Id: normal-contexts-vitamin-d
Title: "Contextes de remboursement du dosage de la vitamine D"
Description: "Ce jeu de valeurs liste les réponses normales associées à la question \"contexte de prescription de l'examen dosage de la vitamine D\", autorisant le remboursement de cet examen (NABM 1139)."
* ^meta.lastUpdated = "2020-03-10T07:30:00.000+00:00"
* ^meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ObservationValueSet"
* ^language = #de-CH
* ^url = "http://fhir.ch/ig/ch-lab-order/ValueSet/normal-contexts-vitamin-d"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2019-12-20"
* ^publisher = "HL7 International - Orders and Observations Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/Special/committees/orders"
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* ^immutable = false
* include codes from system SNOMED_CT where concept is-a #41345002  // Rickets (disorder) -- Rachitis
* include codes from system SNOMED_CT where concept is-a #4598005   // Osteomalacia (disorder)
* include codes from system SNOMED_CT where concept is-a #737295003 // Transplanted kidney present (finding)
* include codes from system SNOMED_CT where concept is-a #707206008 // Assessment for bariatric surgery (procedure)
* include codes from system SNOMED_CT where concept is-a #443731004 // Assessment using falls risk assessment score for the elderly (procedure)
* include codes from system SNOMED_CT where concept is-a #66999008  // Hyperparathyroidism (disorder) [not in orig file]