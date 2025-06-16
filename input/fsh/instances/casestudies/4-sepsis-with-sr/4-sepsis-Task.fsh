// ############################################################
// #    Tasks
// # ##########################################################

Instance: SepsisWorkup
InstanceOf: Task
Description: "Example Task for Sepsis Workup"
Usage: #example
* contained = signature
* identifier.use = #official
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd33595f8"
* basedOn.display = "Sepsis Workup"
* groupIdentifier.use = #official
* groupIdentifier.system = "http://example.org/placer-system/req-nr"  //  requisition.system
* groupIdentifier.value = "ReqID-123456789123"      //  requisition.value
* status = #requested
* businessStatus.text = "waiting for specimen"
* intent = #original-order
* priority = #urgent
* code = $task-code#fulfill
* code.text = "Sepsis Workup"
* description = "Create order for getting specimen, Set up inhouse testing,  generate order for any sendouts and submit with specimen"
* focus = Reference(ServiceRequest/4-sepsis-ServiceRequest) "Request for Laboratory Sepsis Investigation"
* for = Reference(Patient/SaraSpeckmann) "Sara Speckmann"
* encounter = Reference(Encounter/example201) "Example In-Patient Encounter"
* executionPeriod.start = "2025-03-28T06:45:05+10:00"
* authoredOn = "2025-03-28T06:45:05+10:00"
* lastModified = "2025-03-28T09:45:05+10:00"
* requester = Reference(HansHauserKantonsspital) "Dr Hans Hauser, Kantonsspital"
* performerType = $sct#61246008 "Laboratory medicine specialist (occupation)"
* owner = Reference(Organization/LaborPipette) "Labor Pipette"
// * reason.concept.text = "The Task.reason should only be included if there is no Task.focus or if it differs from the reason indicated on the focus"
// * note.text = "This is an example to demonstrate using task for actioning a servicerequest and to illustrate how to populate many of the task elements - this is the parent task that will be broken into subtask to grab the specimen and a sendout lab test"
* relevantHistory = Reference(signature) "Author's Signature"
* restriction.repetitions = 1
* restriction.period.end = "2025-03-29T06:45:05+10:00"
// 
* input[+].type = $sct#878861003 "Blood specimen in blood culture bottle (specimen)"  //TODO: check if this is the right code and display text
* input[=].valueReference = Reference(Specimen/4-sepsis-Blood-bactec-plus-aerobic) "Blood Collection in Blood Culture Bottles, 4-sepsis"
* input[+].type = $sct#119297000 "Blood sample" //TODO: check if this is the right code and display text
* input[=].valueReference = Reference(Specimen/Blood-4-sepsis) "Blood Sample, 4-sepsis"
* input[+].type = $sct#119364003 "Serum specimen (specimen)" //TODO: check if this is the right code and display text
* input[=].valueReference = Reference(Specimen/Serum-4-sepsis) "Serum Sample, 4-sepsis"

/*
* output[0].type.text = "DiagnosticReport generated"
* output[=].valueReference = Reference(DiagnosticReport/4-sepsis-DiagnosticReportGrowth) "CH LAB-Order 4-sepsis DiagnosticReport Growth"
* output[+].type.text = "collected specimen"
* output[=].valueReference = Reference(Specimen/4-sepsis-Blood-bactec-plus-aerobic)

* output[+].type.text = "DiagnosticReport generated"
* output[=].valueReference = Reference(DiagnosticReport/4-sepsis-DiagnosticReportHbHt) "CH LAB-Order 4-sepsis DiagnosticReport Hb and Ht"
* output[+].type.text = "collected specimen"
* output[=].valueReference = Reference(Specimen/Blood-4-sepsis)

* output[+].type.text = "DiagnosticReport generated"
* output[=].valueReference = Reference(DiagnosticReport/4-sepsis-DiagnosticReportCBCDiff) "CH LAB-Order 4-sepsis DiagnosticReport CBCDiff"
* output[+].type.text = "collected specimen"
* output[=].valueReference = Reference(Specimen/Blood-4-sepsis)

* output[+].type.text = "DiagnosticReport generated"
* output[=].valueReference = Reference(DiagnosticReport/4-sepsis-DiagnosticReportCRP) "CH LAB-Order 4-sepsis DiagnosticReport CRP"
* output[+].type.text = "collected specimen"
* output[=].valueReference = Reference(Specimen/Serum-4-sepsis)
*/

Instance: signature
InstanceOf: Provenance
Usage: #inline
* target = Reference(ServiceRequest/4-sepsis-ServiceRequest) "Request for Sepsis Investigation"
* recorded = "2025-03-28T06:45:05+10:00"
* agent.role = $v3-ParticipationType#AUT    // "author"
* agent.who = Reference(Practitioner/HansHauser) "Hans Hauser"
* signature.type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.1 "Author's Signature"
* signature.when = "2025-03-28T06:45:05+10:00"
* signature.who = Reference(Practitioner/HansHauser) "Dr Hans Hauser"
* signature.targetFormat = #application/fhir+xml
* signature.sigFormat = #application/signature+xml
* signature.data = "dGhpcyBibG9iIGlzIHNuaXBwZWQ="

Instance: example201
InstanceOf: Encounter
Description: "Example In-Patient Encounter"
Usage: #example
* identifier.use = #temp
* identifier.value = "Encounter_Hans_20130404"
* status = #finished
* class = $v3-ActCode#AMB "ambulatory"
* type = $sct#11429006 "Consultation"
* priority = $sct#17621005 "Normal"
* subject = Reference(Patient/SaraSpeckmann) "Sara Speckmann"
* participant.individual = Reference(Practitioner/HansHauser) "Dr Hans Hauser"
* reasonCode.text = "The patient had fever peaks over the last night, the general condition deteriorated massively."
* serviceProvider = Reference(Organization/Kantonsspital) "Kantonsspital"