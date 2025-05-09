ValueSet: NormalReasonsVitaminD
Id: normal-contexts-vitamin-d
Title: "Contexts for reimbursement of the vitamin D test"
Description: "Diese Valueset listet die Standardantworten auf die Frage \"Verordnungskontext für den Vitamin-D-Test\" auf, die eine Erstattung dieses Tests erlauben."
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
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#756
* ^immutable = false
* include codes from system SNOMED_CT where concept is-a #41345002  // Rickets (disorder) -- Rachitis
* include codes from system SNOMED_CT where concept is-a #4598005   // Osteomalacia (disorder)
* include codes from system SNOMED_CT where concept is-a #312894000 // Osteopenia (disorder)
* include codes from system SNOMED_CT where concept is-a #64859006  // Osteoporosis (disorder)
* include codes from system SNOMED_CT where concept is-a #268029009 // Pathological fracture (disorder)
* include codes from system SNOMED_CT where concept is-a #443731004 // Assessment using falls risk assessment score for the elderly (procedure)
* include codes from system SNOMED_CT where concept is-a #391040000 // At risk of osteoporotic fracture (finding)
* include codes from system SNOMED_CT where concept is-a #90708001  // Kidney disease (disorder)
* include codes from system SNOMED_CT where concept is-a #73132005  // Disorder of parathyroid gland (disorder)
* include codes from system SNOMED_CT where concept is-a #119292006 // Disorder of gastrointestinal tract (disorder)
* include codes from system SNOMED_CT where concept is-a #32230006  // Malabsorption syndrome (disorder)
* include codes from system SNOMED_CT where concept is-a #235856003 // Disorder of liver (disorder) 
* include codes from system SNOMED_CT where concept is-a #761938008 // Medicinal prescription record (record artifact)