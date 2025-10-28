Extension: ChLabLimitationSummary
Id: ch-lab-limitation-summary
Title: "CH LAB Limitation Summary"
Description: "Summary of limitations or restrictions for a lab test."
* ^context.type = #element
* ^context.expression = "PlanDefinition"

// * url = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-limitation-summary" (exactly)
* value[x] only string
