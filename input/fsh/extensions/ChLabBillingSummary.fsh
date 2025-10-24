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
/*
* extension contains
    billingCode 0..1 and
    billingSystem 0..1 and
    comment 0..1
* extension[billingCode].valueCoding 1..1
* extension[billingSystem].valueUri 1..1
* extension[comment].valueString 0..1
*/
// Sub-extensions:
* extension contains
    textualSummary 0..1 and
    reimbursabilitySummary 0..1

* extension[textualSummary].valueMarkdown
* extension[reimbursabilitySummary].valueCode