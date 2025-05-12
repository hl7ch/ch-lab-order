Instance: ObservationHbCRP
InstanceOf: ChLabObservationR4R5
Title: "C-reactive protein (CRP) Result"
Description: "Example of CRP result"
Usage: #example
* basedOn = Reference(4-sepsis-ServiceRequestHbHt)
* status = #final

* code = $loinc#1988-5 "C reactive protein [Mass/volume] in Serum or Plasma" // subset of loinc
* code.text = "CRP [Mass/Vol]" // display name* subject = Reference(Patient/SaraSpeckmann)
* effectiveDateTime = "2025-04-08"
* performer = Reference(EvaErlenmeyerLaborPipette) "E. Erlenmeyer, Labor Pipette"
* valueQuantity = 28 'mg/L' "mg/L"
* referenceRange.high.value = 10  // depends on method
* referenceRange.high.unit = "mg/L"
