CodeSystem: ChLabCsSpecimenContainerTemperature
Id: ch-lab-cs-specimen-container-temperature
Title: "Specimen Container Temperature (local mirror of R5)"
Description: """
Mirror of the FHIR R5 CodeSystem http://hl7.org/fhir/specimen-container-temperature.
Defines temperature conditions for laboratory specimen containers.
"""
* ^url = "http://fhir.ch/ig/ch-lab-order/CodeSystem/ch-lab-cs-specimen-container-temperature"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

* #room "Room temperature"
  "The specimen is kept at room temperature."
* #refrigerated "Refrigerated"
  "The specimen is kept at refrigerator temperature (2-8 °C)."
* #frozen "Frozen"
  "The specimen is kept frozen (-20 °C or below)."
* #deep-frozen "Deep frozen"
  "The specimen is kept deep-frozen (-70 °C or below)."
