Instance: observationMicrobiolGrowthAerobe
InstanceOf: Observation
Title: "CH LAB-Order Observation Example of Microbiological Growth aerobe"
Description: "Observation Definition for Microbiological Growth aerobe"
Usage: #example
* basedOn = Reference(4-sepsis-ServiceRequest)
* status = #final
// * code.coding[+].system = http://acmelabs.org
// * code.coding[=].code = 123-456-789-observation
// * code.coding[=].display = "Blood culture for bacteria, including anaerobic screen"
* code.coding[+].system = $loinc
* code.coding[=].code = #90435-9
* code.coding[=].display = "Microorganism preliminary growth [Presence] in Blood by Aerobe culture"

* subject = Reference(Patient/SaraSpeckmann) "Sara Speckmann"
* effectivePeriod.start = "2025-03-16T06:20:17Z"
* effectivePeriod.end = "2025-03-16T06:50:17Z"
* issued = "2025-03-16T07:10:17Z"
* performer = Reference(EvaErlenmeyerLaborPipette) "E. Erlenmeyer, Labor Pipette"
* valueBoolean = true
//* valueCodeableConcept = $sct#3092008 "Staphylococcus aureus"
* interpretation = $v3-ObservationInterpretation#POS
* method = $sct#104177005 "Blood culture for bacteria, including anaerobic screen"
* hasMember = Reference(observationMicroorgIdentAndSuscept) "Result of Gram Staining"
* hasMember = Reference(observationMALDI-TOF-Kpneu) "MALDI-TOF Klebsiella pneumoniae"
* hasMember = Reference(observationMALDI-TOF-Ecoli) "MALDI-TOF Escherichia coli"

Instance: observationMALDI-TOF-Kpneu  // reflexed observation
InstanceOf: ChLabObservationR4R5
Title: "CH LAB-Order Observation Example of MALDI-TOF Klebsiella pneumoniae"
Description: "Observation Definition for MALDI-TOF Klebsiella pneumoniae"
Usage: #example
* basedOn[+] = Reference(4-sepsis-ServiceRequest)
// * basedOn[+] = Reference(4-sepsis-ServiceRequestFollowUp)
// * extension[triggeredBy].extension[type].valueCodeableConcept = $observation-triggered-by-type#reflex 
// * extension[triggeredBy].extension[observation].valueReference = Reference(observationMicrobiolGrowthAerobe) "Microbiological Growth Aerobe"

// TriggeredBy Extension
* extension[triggeredBy].extension[type].valueCodeableConcept.coding.system = "http://fhir.ch/ig/ch-lab-order/CodeSystem/triggeredby-type"
* extension[triggeredBy].extension[type].valueCodeableConcept.coding.code = #reflex
* extension[triggeredBy].extension[type].valueCodeableConcept.coding.display = "Reflex test"
* extension[triggeredBy].extension[observation].valueReference = Reference(observationMicrobiolGrowthAerobe) "Microbiological Growth Aerobe"

* status = #final
* code.coding[+].system = $loinc
* code.coding[=].code = #41852-5
* code.coding[=].display = "Microorganism or agent identified in Specimen"
* subject = Reference(Patient/SaraSpeckmann) "Sara Speckmann"
* effectivePeriod.start = "2025-03-16T06:20:17Z"   
* effectivePeriod.end = "2025-03-16T06:50:17Z"
* issued = "2025-03-16T07:10:17Z"
* performer = Reference(EvaErlenmeyerLaborPipette) "E. Erlenmeyer, Labor Pipette"

* derivedFrom = Reference(observationMicrobiolGrowthAerobe)

// component microorganism identified
* component[0].code = $loinc#76346-6 "Microorganism identified in Isolate by MS.MALDI-TOF"
// * component[=].code.text = "Klebsiella pneumoniae (organism) susceptible to amoxicillin+clavulanic acid and to ceftriaxone"
* component[=].valueCodeableConcept = $sct#56415008 "Klebsiella pneumoniae (organism)"

// component susceptibility of microorganism
* component[+].code = $loinc#18862-3 "Amoxicillin+Clavulanate [Susceptibility]"
* component[=].valueCodeableConcept = $sct#131196009 "Susceptible (qualifier value)"
* component[+].code = $loinc#18895-3 "cefTRIAXone [Susceptibility]"
* component[=].valueCodeableConcept = $sct#131196009 "Susceptible (qualifier value)"
//* component[=].interpretation

Instance: observationMALDI-TOF-Ecoli  // reflexed observation
InstanceOf: ChLabObservationR4R5
Title: "CH LAB-Order Observation Example of MALDI-TOF Escherichia coli"
Description: "Observation Definition for MALDI-TOF Escherichia coli"
Usage: #example
* basedOn[+] = Reference(4-sepsis-ServiceRequest)
// * basedOn[+] = Reference(4-sepsis-ServiceRequestFollowUp)
// * extension[triggeredBy].extension[type].valueCodeableConcept = $observation-triggered-by-type#reflex 
// * extension[triggeredBy].extension[observation].valueReference = Reference(observationMicrobiolGrowthAerobe) "Microbiological Growth Aerobe"

// TriggeredBy Extension
* extension[triggeredBy].extension[type].valueCodeableConcept.coding.system = "http://fhir.ch/ig/ch-lab-order/CodeSystem/triggeredby-type"
* extension[triggeredBy].extension[type].valueCodeableConcept.coding.code = #reflex
* extension[triggeredBy].extension[type].valueCodeableConcept.coding.display = "Reflex test"
* extension[triggeredBy].extension[observation].valueReference = Reference(observationMicrobiolGrowthAerobe) "Microbiological Growth Aerobe"

* status = #final
* code.coding[+].system = $loinc
* code.coding[=].code = #41852-5
* code.coding[=].display = "Microorganism or agent identified in Specimen"
* subject = Reference(Patient/SaraSpeckmann) "Sara Speckmann"
* effectivePeriod.start = "2025-03-16T06:20:17Z"   
* effectivePeriod.end = "2025-03-16T06:50:17Z"
* issued = "2025-03-16T07:10:17Z"
* performer = Reference(EvaErlenmeyerLaborPipette) "E. Erlenmeyer, Labor Pipette"

* derivedFrom = Reference(observationMicrobiolGrowthAerobe)

// component microorganism identified
* component[0].code = $loinc#76346-6 "Microorganism identified in Isolate by MS.MALDI-TOF"
// * component[=].code.text = "Escherichia coli (organism) susceptible to amoxicillin+clavulanic acid and to ceftriaxone"
* component[=].valueCodeableConcept = $sct#112283007 "Escherichia coli"

// component susceptibility of microorganism
* component[+].code = $loinc#18862-3 "Amoxicillin+Clavulanate [Susceptibility]"
* component[=].valueCodeableConcept = $sct#131196009 "Susceptible (qualifier value)"
* component[+].code = $loinc#18895-3 "cefTRIAXone [Susceptibility]"
* component[=].valueCodeableConcept = $sct#131196009 "Susceptible (qualifier value)"
//* component[=].interpretation

// https://confluence.ihtsdotools.org/display/DOCEG/Observable+Entity+and+Microbiology+Test+Results

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
* basedOn = Reference(ServiceRequest/4-sepsis-ServiceRequest)
* groupIdentifier.use = #official
* groupIdentifier.system = "urn:oid:2.16.756.5.40"  //  requisition.system
* groupIdentifier.value = "ReqID-123456789123"      //  requisition.value
* status = #requested
* businessStatus.text = "waiting for specimen"
* intent = #original-order
* priority = #urgent
* code = $task-code#fulfill
* code.text = "Sepsis Workup"
* description = "Create order for getting specimen, Set up inhouse testing,  generate order for any sendouts and submit with specimen"
* focus = Reference(ServiceRequest/4-sepsis-ServiceRequest) "Request for Sepsis Investigation"
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
* input.type = $sct#119297000 "Blood sample"
* input.valueReference = Reference(Specimen/Blood-bactec-plus-4-sepsis) "Blood sample for sepsis workup"

Instance: signature
InstanceOf: Provenance
Usage: #inline
* target = Reference(ServiceRequest/4-sepsis-ServiceRequest) "Request for Sepsis Investigation"
* recorded = "2025-03-28T06:45:05+10:00"
* agent.role = $v3-ParticipationType#AUT
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