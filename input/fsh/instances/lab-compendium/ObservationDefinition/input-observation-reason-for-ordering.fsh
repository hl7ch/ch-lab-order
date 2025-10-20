Instance: input-observation-reason-for-ordering
InstanceOf: ChLab_ObservationDefinitionR4
Title: "ObservationDefinition generic"
Description: "For which reason is the test ordered"
Usage: #example
// * meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/InputObservationDefinition"
* language = #en-US
* category = $observation-category#exam "Exam"
* code = $loinc#67098-4 "Reason for test or procedure"
* permittedDataType[0] = #CodeableConcept
* permittedDataType[+] = #string
* multipleResultsAllowed = true
* validCodedValueSet = Reference(ValueSet/reasons-for-order) // must be added