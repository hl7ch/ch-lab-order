Instance: 4-sepsis-DiagnosticReport  // Diagnostic Report reflexed from ServiceRequest 4-sepsis
InstanceOf: ChLabOrderDiagnosticReport
Title: "CH LAB-Order 4-sepsis DiagnosticReport"
Description: "Diagnostic Report for Sepsis Investigation"
Usage: #example
* identifier.system = "http://example.com/fhir/DiagnosticReport/4-sepsis"
* identifier.value = "4-sepsis-diagnostic-report"
* basedOn = Reference(4-sepsis-ServiceRequest)
* status = #final
* category = $loinc#26436-6 "Laboratory studies (set)"
* code.coding[+].code = #90423-5
* code.coding[=].system = $loinc
* code.coding[=].display = "Microorganism preliminary growth detection panel - Blood by Culture"
* subject = Reference(Patient/SaraSpeckmann)
* performer = Reference(EvaErlenmeyerLaborPipette)
* result[+] = Reference(observationMicrobiolGrowthAerobe)
* result[+] = Reference(observationMicrobiolGrowthAnaerobe)