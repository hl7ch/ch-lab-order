Instance: 4-sepsis-DiagnosticReport  // Diagnostic Report Growht detection panel
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
* result[+] = Reference(ObservationMicrobiolGrowthAerobic)
* result[+] = Reference(ObservationMicrobiolGrowthAnaerobic)

Instance: 4-sepsis-DiagnosticReportGrowth  // Diagnostic Report Growht detection panel
InstanceOf: ChLabOrderDiagnosticReport
Title: "CH LAB-Order 4-sepsis DiagnosticReport"
Description: "Diagnostic Report for Sepsis Investigation"
Usage: #example
* identifier.system = "http://example.com/fhir/DiagnosticReport/4-sepsis"
* identifier.value = "4-sepsis-diagnostic-report"
* basedOn = Reference(4-sepsis-ServiceRequestGrowth)
* status = #final
* category = $loinc#26436-6 "Laboratory studies (set)"
* code.coding[+].code = #90423-5
* code.coding[=].system = $loinc
* code.coding[=].display = "Microorganism preliminary growth detection panel - Blood by Culture"
* subject = Reference(Patient/SaraSpeckmann)
* performer = Reference(EvaErlenmeyerLaborPipette)
* result[+] = Reference(ObservationMicrobiolGrowthAerobic)
* result[+] = Reference(ObservationMicrobiolGrowthAnaerobic)

/*
Instance: 4-sepsis-DiagnosticReportHbHt  // Diagnostic Report reflexed from ServiceRequest 4-sepsis
InstanceOf: ChLabOrderDiagnosticReport
Title: "CH LAB-Order 4-sepsis DiagnosticReport"
Description: "Diagnostic Report for Sepsis Investigation"
Usage: #example
* identifier.system = "http://example.com/fhir/DiagnosticReport/4-sepsis"
* identifier.value = "4-sepsis-diagnostic-report"
* basedOn = Reference(4-sepsis-ServiceRequestHbHt)
* status = #final
* category = $loinc#26436-6 "Laboratory studies (set)"
* code.coding[+].code = #90423-5
* code.coding[=].system = $loinc
* code.coding[=].display = "Microorganism preliminary growth detection panel - Blood by Culture"
* subject = Reference(Patient/SaraSpeckmann)
* performer = Reference(EvaErlenmeyerLaborPipette)
* result[+] = Reference(ObservationMicrobiolGrowthAerobic)
* result[+] = Reference(ObservationMicrobiolGrowthAnaerobic)
*/

Instance: 4-sepsis-DiagnosticReportCBCDiff  // Diagnostic Report reflexed from ServiceRequest 4-sepsis
InstanceOf: ChLabOrderDiagnosticReport
Title: "CH LAB-Order 4-sepsis DiagnosticReport"
Description: "Diagnostic Report for Sepsis Investigation"
Usage: #example
* identifier.system = "http://example.com/fhir/DiagnosticReport/4-sepsis"
* identifier.value = "4-sepsis-diagnostic-report"
* basedOn = Reference(4-sepsis-ServiceRequestCBCDiff)
* status = #final
* category = $loinc#26436-6 "Laboratory studies (set)"
* code.coding[+].code = #57021-8
* code.coding[=].system = $loinc
* code.coding[=].display = "CBC W Auto Differential panel - Blood"
* subject = Reference(Patient/SaraSpeckmann)
* performer = Reference(EvaErlenmeyerLaborPipette)
// * result[+] = Reference(observationCBC)
// * result[+] = Reference(observationDiff)

Instance: 4-sepsis-DiagnosticReportCRP  // Diagnostic Report reflexed from ServiceRequest 4-sepsis
InstanceOf: ChLabOrderDiagnosticReport
Title: "CH LAB-Order 4-sepsis DiagnosticReport"
Description: "Diagnostic Report for Sepsis Investigation"
Usage: #example
* identifier.system = "http://example.com/fhir/DiagnosticReport/4-sepsis"
* identifier.value = "4-sepsis-diagnostic-report"
* basedOn = Reference(4-sepsis-ServiceRequestCRP)
* status = #final
* category = $loinc#26436-6 "Laboratory studies (set)"
* code.coding[+].code = #90423-5
* code.coding[=].system = $loinc
* code.coding[=].display = "Microorganism preliminary growth detection panel - Blood by Culture"
* subject = Reference(Patient/SaraSpeckmann)
* performer = Reference(EvaErlenmeyerLaborPipette)
// * result[+] = Reference(observationCRP)
