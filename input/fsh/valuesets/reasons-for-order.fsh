ValueSet: ReasonsForOrder
Id: reasons-for-order
Title: "All Valid Reasons for Ordering a Lab Service"
Description: "Broadest value set of valid reasons for ordering laboratory services"
* ^meta.lastUpdated = "2020-03-10T13:30:00Z"
* ^language = #en-US
* ^url = "http://fhir.ch/ig/ch-lab-order/ValueSet/reasons-for-order"
* ^version = "current"
* ^status = #active
* ^experimental = false
* ^date = "2019-12-20"
* ^publisher = "HL7 International - Orders and Observations Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/Special/committees/orders"
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#756
* ^immutable = false
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* include codes from system SNOMED_CT where concept is-a #138875005

// maybe it makes sense to integrate OWL Ontology from SNOMED_CT