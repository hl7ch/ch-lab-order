ValueSet: ChLabVsContainerTemperature
Id: ch-lab-vs-container-temperature
Title: "Container Temperature"
Description: "Allowed temperature conditions for laboratory specimen containers."
* ^url = "http://fhir.ch/ig/ch-lab-order/ValueSet/ch-lab-vs-container-temperature"
* ^status = #active
* ^experimental = false
* ^version = "1.0.0"
* ^publisher = "CH LAB Working Group"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* include codes from system $specimen-handling-temperature
