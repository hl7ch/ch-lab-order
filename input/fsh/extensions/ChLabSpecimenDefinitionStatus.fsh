Extension: ChLabSpecimenDefinitionStatus
Id: ch-lab-specimen-status
Title: "CH LAB-Order SpecimenDefinition.status (R5 backport)"
Description: "Status of the specimen definition (active | retired | draft)."
* ^url = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-specimen-status"
* ^context.type = #element
* ^context.expression = "SpecimenDefinition"
* valueCode from http://hl7.org/fhir/ValueSet/publication-status (required)
