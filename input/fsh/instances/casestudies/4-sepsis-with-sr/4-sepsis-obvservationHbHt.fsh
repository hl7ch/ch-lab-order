Instance: ObservationHbHt
InstanceOf: ChLabObservationR4R5
Title: "Hemoglobin/Hematocrit Panel Result"
Description: "Example of Hb/Ht result"
Usage: #example
* basedOn = Reference(4-sepsis-ServiceRequestHbHt)
* status = #final

* code = $loinc#24360-0 "Hemoglobin and Hematocrit panel - Blood"
* subject = Reference(Patient/SaraSpeckmann)
* effectiveDateTime = "2025-04-08"
* performer = Reference(EvaErlenmeyerLaborPipette) "E. Erlenmeyer, Labor Pipette"
* hasMember[0] = Reference(ObservationHb)
* hasMember[1] = Reference(ObservationHt)

Instance: ObservationHb
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
* valueQuantity = 107 'g/L' "g/L"

Instance: ObservationHt
InstanceOf: ChLabObservationR4R5
Title: "Hematocrit Result"
Description: "Example of Ht result"
Usage: #example
* basedOn = Reference(4-sepsis-ServiceRequestHbHt)
* status = #final

* code = $loinc#20570-8 "Hematocrit [Volume Fraction] of Blood by calculation"
* subject = Reference(Patient/SaraSpeckmann)
* effectiveDateTime = "2025-04-08"
* performer = Reference(EvaErlenmeyerLaborPipette) "E. Erlenmeyer, Labor Pipette"
* valueQuantity = 33 '%' "%"
