ValueSet: ChLabVsSpecimenType
Id: ch-lab-vs-specimen-type
Title: "CH LAB-Order Specimen Type (SNOMED CT)"
Description: "SNOMED CT concepts representing specimen types for laboratory use."
* ^url = "http://fhir.ch/ig/ch-lab-order/ValueSet/ch-lab-vs-specimen-type"
* ^status = #active
* ^experimental = false
* include codes from system http://snomed.info/sct where concept is-a #123038009  // Specimen (specimen)
