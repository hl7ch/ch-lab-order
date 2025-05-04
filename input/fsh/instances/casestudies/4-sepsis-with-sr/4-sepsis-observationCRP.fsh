Instance: ObservationHbCRP
InstanceOf: ChLabObservationR4R5
Title: "Hemoglobin Result"
Description: "Example of Hb result"
Usage: #example
* basedOn = Reference(4-sepsis-ServiceRequestHbHt)
* status = #final

* code = $loinc#718-7 "Hemoglobin [Mass/volume] in Blood"
* subject = Reference(Patient/SaraSpeckmann)
* effectiveDateTime = "2025-04-08"
* performer = Reference(EvaErlenmeyerLaborPipette) "E. Erlenmeyer, Labor Pipette"
* valueQuantity = 107 'g/L' "g/L"* hasMember[0] = Reference(ObservationHb)