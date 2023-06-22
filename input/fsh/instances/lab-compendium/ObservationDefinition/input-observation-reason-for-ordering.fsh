Instance: input-observation-reason-for-ordering
InstanceOf: ObservationDefinition
Description: "For which reason is the test ordered"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/InputObservationDefinition"
* language = #en-US
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam "Exam"
* code = $loinc#67098-4 "Reason for test or procedure"
* permittedDataType[0] = #CodeableConcept
* permittedDataType[+] = #string
* multipleResultsAllowed = true
* validCodedValueSet = Reference(ValueSet/reasons-for-order) // must be added