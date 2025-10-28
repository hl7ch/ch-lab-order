Extension: ChLabScheduleSummary
// Id: ch-lab-schedule-summary
Title: "CH LAB Schedule Summary"
Description: "Summary of scheduling or collection times for the laboratory service."
* ^url = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ChLabScheduleSummary"
* ^version = "1.0.0"
* ^status = #active
* ^publisher = "CH LAB Working Group"
* ^context.type = #element
* ^context.expression = "PlanDefinition"

// * extension contains
//     daysOfWeek 0..* and
//     timeOfDay 0..* and
//     comment 0..1
// * extension[daysOfWeek].valueCode 1..1
// * extension[timeOfDay].valueTime 1..1
// * extension[comment].valueString 0..1

* url = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ChLabScheduleSummary" (exactly)
* value[x] only string