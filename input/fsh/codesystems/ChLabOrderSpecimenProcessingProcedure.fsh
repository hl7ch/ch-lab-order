CodeSystem: ChLabOrderSpecimenProcessingProcedure
Id: Specimen.processing.procedure
Title: "Service Request Processing Procedure"
Description: "ch-lab-order defines 2 different Kinds of Processing Procedures"
* ^url = "http://fhir.ch/ig/ch-lab-order/CodeSystem/Specimen.processing.procedure"
// * ^url = "http://build.fhir.org/ig/hl7ch/ch-lab-order/CodeSystem/Specimen.processing.procedure"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = true
* ^date = "2021-06-01T10:21:46+00:00"
* ^publisher = "HL7 Switzerland"
* ^contact.name = "Marcel Hanselmann"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.hl7.ch"
* ^jurisdiction = urn:iso:std:iso:3166#CH
* ^copyright = "CC-BY-SA-4.0"
* ^caseSensitive = true
* ^content = #complete
* ^count = 2
* #FREEZE "Tiefkühlen bei -18° Celsius" "Freeze at -18° Celsius"
* #COOLING "Kühlen bei 5° - 8° Celsius" "Cooling at 5° - 8° Celsius"
