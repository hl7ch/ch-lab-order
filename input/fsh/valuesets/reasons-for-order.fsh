ValueSet: ReasonsForOrder
Id: reasons-for-order
Title: "All Valid Reasons for Ordering a Lab Service"
Description: "Broadest value set of valid reasons for ordering laboratory services"
* ^status = #active
* ^experimental = false
* include codes from system SNOMED_CT where concept is-a #138875005

// maybe it makes sense to integrate OWL Ontology from SNOMED_CT