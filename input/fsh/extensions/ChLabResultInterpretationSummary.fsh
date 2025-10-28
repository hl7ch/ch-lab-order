

Extension: ChLabResultInterpretationSummary
Id: ChLabResultInterpretationSummary
Title: "Summary of result interpretation guidance of the laboratory service"
Description: "This extension to PlanDefinition conveys the textual summary of result interpretation guidance for the laboratory service represented by the PlanDefinition instance. This guidance, may include, for instance tables of reference ranges associated with various sets of conditions."
Context: PlanDefinition
// * ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
// * ^extension[=].valueCode = #oo
// * ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics"
// * ^extension[=].valueCode = #can-bind
// * ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
// * ^extension[=].valueInteger = 2
// * ^extension[=].valueInteger.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
// * ^extension[=].valueInteger.extension.valueCanonical = "http://hl7.org/fhir/uv/order-catalog/ImplementationGuide/ig-uv-order-catalog"
// * ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
// * ^extension[=].valueCode = #trial-use
// * ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
// * ^extension[=].valueCode.extension.valueCanonical = "http://hl7.org/fhir/uv/order-catalog/ImplementationGuide/ig-uv-order-catalog"
// * ^url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ResultInterpretationSummary"
// * ^identifier.system = "urn:ietf:rfc:3986"
// * ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.999.42.22"
// * ^version = "1.0.0-ballot"
// * ^status = #draft
// * ^publisher = "HL7 International / Orders and Observations"
// * ^contact.telecom.system = #url
// * ^contact.telecom.value = "http://www.hl7.org/Special/committees/orders"
// * ^jurisdiction = $m49.htm#001
* . ..1
* url = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ChLabResultInterpretationSummary" (exactly)
* value[x] only markdown