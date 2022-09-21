ValueSet: ClinicalFocusVitaminD
Id: example-clinical-focus-vitamin-d
Title: "All possible clinical contexts for vitamin D test"
Description: "Broadest value set that may be referenced by ObservationDefinition.validCodedValueSet"
* ^meta.lastUpdated = "2020-03-10T13:30:00.000+00:00"
* ^meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ObservationValueSet"
* ^language = #en-US
* ^url = "http://fhir.ch/ig/ch-lab-order/ValueSet/example-clinical-focus-vitamin-d"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2019-12-20"
* ^publisher = "HL7 International - Orders and Observations Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/Special/committees/orders"
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* ^immutable = false
* include codes from system SNOMED_CT where concept is-a #404684003 // Clinical finding (finding)
* include codes from system SNOMED_CT where concept is-a #272379006 // Event (event)
* include codes from system SNOMED_CT where concept is-a #413350009 // Finding with explicit context (situation)