Alias: $laboratory-service-reimbursability-vs = http://hl7.org/fhir/uv/order-catalog/ValueSet/laboratory-service-reimbursability-vs

Extension: ChLabBillingSummary
Id: ch-lab-billing-summary
Title: "CH LAB Billing Summary"
Description: "Summary of billing information for a laboratory service."
* ^url = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-billing-summary"
* ^version = "1.0.0"
* ^status = #active
* ^publisher = "CH LAB Working Group"
* ^context.type = #element
* ^context.expression = "PlanDefinition"

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
// * ^url = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/BillingSummary"
// * ^identifier.system = "urn:ietf:rfc:3986"
// * ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.999.42.5"
// * ^version = "1.0.0-ballot"
// * ^status = #draft
 
// * . ..1
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    textualSummary 0..1 and
    reimbursabilitySummary 0..*
* extension[textualSummary] ^label = "textual billing summary"
* extension[textualSummary] ^short = "billing textual summary"
* extension[textualSummary] ^definition = "Summarizes in a human-readable manner the billing, claims and reimbursement dispositions defined for the laboratory service defined by the PlanDefinition"
* extension[textualSummary].value[x] only markdown
* extension[reimbursabilitySummary] ^label = "coded reimbursability summary"
* extension[reimbursabilitySummary] ^short = "coded reimbursability summary of the service"
* extension[reimbursabilitySummary] ^definition = "code summarizing the reimbursability of the laboratory service"
* extension[reimbursabilitySummary].value[x] only code
* extension[reimbursabilitySummary].value[x] from $laboratory-service-reimbursability-vs (extensible)
* extension[reimbursabilitySummary].value[x] ^binding.description = "Coarse categories of reimbursement dispositions for a laboratory service"

// * url = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/BillingSummary" (exactly)
// * value[x] only markdown or string