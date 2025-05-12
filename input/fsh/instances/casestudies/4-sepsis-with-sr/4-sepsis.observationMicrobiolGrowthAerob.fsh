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
* hasMember[+] = Reference(observationMicroorgIdentAndSuscept) "Microorganism Identification and Susceptibility"
* hasMember[+] = Reference(observationMALDI-TOF-Kpneu) "MALDI-TOF Klebsiella pneumoniae"
* hasMember[+] = Reference(observationMALDI-TOF-Ecoli) "MALDI-TOF Escherichia coli"

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
