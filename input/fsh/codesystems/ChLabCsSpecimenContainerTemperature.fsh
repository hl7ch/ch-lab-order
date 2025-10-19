CodeSystem: ChLabCsSpecimenContainerTemperature
Id: ch-lab-cs-specimen-container-temperature
Title: "Specimen Container Temperature"
Description: "Temperature conditions for laboratory specimen containers."
* ^url = "http://fhir.ch/ig/ch-lab-order/CodeSystem/ch-lab-cs-specimen-container-temperature"
* ^status = #active
* ^experimental = false
* ^version = "1.0.0"
* ^publisher = "CH LAB Working Group"
* ^content = #complete
* ^caseSensitive = true

// Example codes
* #frozen "Frozen" "Specimen must be kept frozen until processing."
* #refrigerated "Refrigerated" "Specimen must be stored between +2°C and +8°C."
* #ambient "Ambient" "Specimen can be transported or stored at room temperature."
* #room "Room temperature" "Specimen must be kept at typical room temperature (20-25°C)."
* #bodytemp "Body temperature" "Specimen must be kept at or near body temperature (~37°C)."
