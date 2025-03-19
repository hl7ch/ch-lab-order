Instance: observationMicrobiolGrowthAerobe
InstanceOf: Observation
Title: "CH LAB-Order Observation Example of Microbiological Growth"
Description: "Observation Definition for Microbiological Growth"
Usage: #example

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
* performer = Reference(EvaErlenmeyerLaborPipette) "E. Erlenmeyer"
* valueBoolean = true
//* valueCodeableConcept = $sct#3092008 "Staphylococcus aureus"
* interpretation = $v3-ObservationInterpretation#POS
* method = $sct#104177005 "Blood culture for bacteria, including anaerobic screen"

Instance: observationMicrobiolGrowthAnaerobe
InstanceOf: Observation
Title: "CH LAB-Order Observation Example of Microbiological Growth"
Description: "Observation Definition for Microbiological Growth"
Usage: #example

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
* issued = "2025-03-11T10:28:00+01:00"
* performer = Reference(EvaErlenmeyerLaborPipette) "E. Erlenmeyer"
* valueBoolean = false
//* valueCodeableConcept = $sct#3092008 "Staphylococcus aureus"
* interpretation = $v3-ObservationInterpretation#NEG
* method = $sct#104177005 "Blood culture for bacteria, including anaerobic screen"


// https://confluence.ihtsdotools.org/display/DOCEG/Observable+Entity+and+Microbiology+Test+Results