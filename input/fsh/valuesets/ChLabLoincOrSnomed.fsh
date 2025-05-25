ValueSet: LoincOrSnomed
Id: loinc-or-snomed
Title: "LOINC or SNOMED CT"
Description: "Codes for lab orders from either LOINC or SNOMED CT."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "http://fhir.ch/ig/ch-lab-order/ValueSet/loinc-or-snomed"
* ^publisher = "HL7 Switzerland"
* ^status = #draft
* ^experimental = false
* ^date = "2025-05-22"
* ^publisher = "HL7 Switzerland"

* include codes from system $loinc
* include codes from system $sct
