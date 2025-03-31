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

Instance: observationMicrobiolGrowthAnaerobe
InstanceOf: Observation
Title: "CH LAB-Order Observation Example of Microbiological Growth anaerobe"
Description: "Observation Definition for Microbiological Growth anaerobe"
Usage: #example

* status = #final
// * code.coding[+].system = http://acmelabs.org
// * code.coding[=].code = 123-456-789-observation
// * code.coding[=].display = "Blood culture for bacteria, including anaerobic screen"
* code.coding[+].system = $loinc
* code.coding[=].code = #90437-5
* code.coding[=].display = "Microorganism preliminary growth [Presence] in Blood by Anaerobe culture"

* subject = Reference(Patient/SaraSpeckmann) "Sara Speckmann"
* effectivePeriod.start = "2025-03-16T06:20:17Z"
* effectivePeriod.end = "2025-03-16T06:50:17Z"
* issued = "2025-03-11T10:28:00+01:00"
* performer = Reference(EvaErlenmeyerLaborPipette) "E. Erlenmeyer, Labor Pipette"
* valueBoolean = false
//* valueCodeableConcept = $sct#3092008 "Staphylococcus aureus"
* interpretation = $v3-ObservationInterpretation#NEG
* method = $sct#104177005 "Blood culture for bacteria, including anaerobic screen"

Instance: observationMALDI-TOF  // reflexed observation
InstanceOf: ChLabObservationR4R5
Title: "CH LAB-Order Observation Example of MALDI-TOF"
Description: "Observation Definition for MALDI-TOF"
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

* component[0].code.coding[+].system = $loinc
* component[=].code.coding[=].code = #76346-6
* component[=].code.coding[=].display = "Microorganism identified in Isolate by MS.MALDI-TOF"
* component[=].valueCodeableConcept.coding[+].system = $sct
* component[=].valueCodeableConcept.coding[=].code = #56415008
* component[=].valueCodeableConcept.coding[=].display = "Klebsiella pneumoniae (organism)"
* component[=].valueCodeableConcept.text = "Klebsiella pneumoniae (organism) susceptible to amoxicillin+clavulanic acid and to ceftriaxone"
//* component[=].interpretation

* component[1].code.coding[+].system = $loinc
* component[=].code.coding[=].code = #76346-6
* component[=].code.coding[=].display = "Microorganism identified in Isolate by MS.MALDI-TOF"
* component[=].code.text = "Escherichia coli (organism) susceptible to amoxicillin+clavulanic acid and to ceftriaxone"
* component[=].valueCodeableConcept.coding[+].system = $sct
* component[=].valueCodeableConcept.coding[=].code = #112283007
* component[=].valueCodeableConcept.coding[=].display = "Escherichia coli (organism)"
* component[=].valueCodeableConcept.text = "Escherichia coli (organism) susceptible to amoxicillin+clavulanic acid and to ceftriaxone"
// * component[=].interpretation

// https://confluence.ihtsdotools.org/display/DOCEG/Observable+Entity+and+Microbiology+Test+Results
