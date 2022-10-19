Instance: LabOrder-form-flat
InstanceOf: Questionnaire
Title: "Questionnaire Lab Order from Catalog"
Description: "Example for generic Questionnaire (flat version)"
Usage: #example
* id = "LabOrder-form-flat"
* meta.versionId = "1"
* meta.lastUpdated = "2022-10-01T20:17:53.340+00:00"
* meta.profile[0] = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extr-smap"
* meta.profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-pop-exp"

* url = "http://fhir.ch/ig/ch-lab-order/Questionnaire/LabOrder-form-flat"
// * version = "1.1.0-assembled"
* name = "LabOrderForm"
* title = "Questionnaire Lab Order from Catalog"
* status = #active
* subjectType = #Patient
* date = "2022-10-10"
* publisher = "HL7 Switzerland"
* contact.name = "Marcel Hanselmann"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.hl7.ch"
* jurisdiction = urn:iso:std:iso:3166#CH
* copyright = "CC-BY-SA-4.0"