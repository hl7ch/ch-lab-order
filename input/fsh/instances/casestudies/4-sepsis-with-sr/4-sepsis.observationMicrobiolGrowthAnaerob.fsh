Instance: observationMicrobiolGrowthAnaerobic
InstanceOf: Observation
Title: "CH LAB-Order Observation Example of Microbiological Growth anaerobic"
Description: "Observation Definition for Microbiological Growth anaerobic"
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
* valueCodeableConcept = http://snomed.info/sct#260413007 "None"   // SNOMED CT code for "No growth"
* note.text = "No growth after 48 hours of incubation"
//* valueCodeableConcept = $sct#3092008 "Staphylococcus aureus"
* interpretation = $v3-ObservationInterpretation#NEG
* method = $sct#104177005 "Blood culture for bacteria, including anaerobic screen"
