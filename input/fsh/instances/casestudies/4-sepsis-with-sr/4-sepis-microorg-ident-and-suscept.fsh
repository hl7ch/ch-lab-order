Instance: observationMicroorgIdentAndSuscept
InstanceOf: ChLabObservationR4R5
Title: "Observation with Microorganism Identification and Sensitivity"
Description: "Laboratory result including Gram stain, identified organism, and susceptibility."
Usage: #example
* basedOn = Reference(4-sepsis-ServiceRequest)

// TriggeredBy Extension
* extension[triggeredBy].extension[type].valueCodeableConcept.coding.system = "http://fhir.ch/ig/ch-lab-order/CodeSystem/triggeredby-type"
* extension[triggeredBy].extension[type].valueCodeableConcept.coding.code = #reflex
* extension[triggeredBy].extension[type].valueCodeableConcept.coding.display = "Reflex test"
* extension[triggeredBy].extension[observation].valueReference = Reference(observationMicrobiolGrowthAerobe) "Microbiological Growth Aerobe"
* status = #final
* code = $loinc#85421-6 "Bacterial identification and susceptibility panel - Isolate"
* subject = Reference(Patient/SaraSpeckmann) "Sara Speckmann"
* effectivePeriod.start = "2025-03-16T06:20:17Z"
* effectivePeriod.end = "2025-03-16T06:50:17Z"
* issued = "2025-03-11T10:28:00+01:00"
* performer = Reference(EvaErlenmeyerLaborPipette) "E. Erlenmeyer, Labor Pipette"
// * valueBoolean = false
// * valueCodeableConcept = $sct#87172008 "Gram-negative bacillus (organism)"
* hasMember[0] = Reference(ObservationEcoli) "Escherichia coli"
* hasMember[1] = Reference(ObservationKpneumoniae) "Klebsiella pneumoniae"

// Result found: Microorganism # 1 : Escherichia coli
Instance: ObservationEcoli
InstanceOf: ChLabObservationR4R5
Title: "Gram Stain Result"
Description: "Identified microorganism"
Usage: #example
* basedOn = Reference(4-sepsis-ServiceRequest)
* status = #final
// * category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
// * code = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#43409-2 "Bacteria identified in Isolate by Culture"
* subject = Reference(Patient/SaraSpeckmann)
* effectiveDateTime = "2025-04-08"
* issued = "2025-04-08T10:28:00+01:00"
* performer = Reference(EvaErlenmeyerLaborPipette) "E. Erlenmeyer, Labor Pipette"
* valueCodeableConcept = $sct#112283007 "Escherichia coli (organism)"
* hasMember[0] = Reference(ObservationSusceptibilityEcoli)
* hasMember[1] = Reference(ObservationGramStainResultEcoli)

Instance: ObservationSusceptibilityEcoli
InstanceOf: ChLabObservationR4R5
Title: "Antibiotic Susceptibility of Escherichia coli"
Description: "Susceptibility of organism to Amoxicillin + Clavulanate and Ceftriaxone"
Usage: #example
* basedOn = Reference(4-sepsis-ServiceRequest)
* status = #final
* code = $loinc#29576-6 "Bacterial susceptibility panel"
* subject = Reference(Patient/SaraSpeckmann)
* effectiveDateTime = "2025-04-08"
* method = $sct#359872008 "Disk diffusion susceptibility test (procedure)"
// * specimen = Reference(Specimen/GramStainSpecimen)
* performer = Reference(EvaErlenmeyerLaborPipette) "E. Erlenmeyer, Labor Pipette"
* valueCodeableConcept = $sct#131196009 "Susceptible"

// component susceptibility of microorganism
* component[+].code = $loinc#18862-3 "Amoxicillin+Clavulanate [Susceptibility]"
* component[=].valueCodeableConcept = $sct#131196009 "Susceptible (qualifier value)"
* component[+].code = $loinc#18895-3 "cefTRIAXone [Susceptibility]"
* component[=].valueCodeableConcept = $sct#131196009 "Susceptible (qualifier value)"
//* component[=].interpretation

Instance: ObservationGramStainResultEcoli
InstanceOf: ChLabObservationR4R5
Title: "Gram Stain Result"
Description: "Gram stain result"
Usage: #example
* basedOn = Reference(4-sepsis-ServiceRequest)
* status = #final
* code = $loinc#87975-9 "Microscopic observation [Identifier] in Isolate by Gram stain"
* subject = Reference(Patient/SaraSpeckmann)
* effectiveDateTime = "2025-04-08"
* issued = "2025-04-08T10:28:00+01:00"
* performer = Reference(EvaErlenmeyerLaborPipette) "E. Erlenmeyer, Labor Pipette"
// * method = $sct#359872008  // TODO: check SCT code and concept for Gram stain
* valueCodeableConcept = http://snomed.info/sct#87172008 "Gram-negative bacillus"  // check SCT code and concept for Gram stain

// Result found: Microorganism # 2 : Klebsiella pneumoniae

Instance: ObservationKpneumoniae
InstanceOf: ChLabObservationR4R5
Title: "Gram Stain Result"
Description: "Identified microorganism"
Usage: #example
* basedOn = Reference(4-sepsis-ServiceRequest)

* status = #final
// * category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
// * code = $loinc#18725-2 "Microbiology studies (set)"
* code = $loinc#43409-2 "Bacteria identified in Isolate by Culture"
* subject = Reference(Patient/SaraSpeckmann)
* effectiveDateTime = "2025-04-08"
* issued = "2025-04-08T10:28:00+01:00"
* performer = Reference(EvaErlenmeyerLaborPipette) "E. Erlenmeyer, Labor Pipette"
* subject = Reference(Patient/SaraSpeckmann)
* valueCodeableConcept = $sct#56415008 "Klebsiella pneumoniae (organism)"

* hasMember[0] = Reference(ObservationSusceptibilityKpneumoniae)
* hasMember[1] = Reference(ObservationGramStainResultKpneumoniae)

Instance: ObservationSusceptibilityKpneumoniae
InstanceOf: ChLabObservationR4R5
Title: "Antibiotic Susceptibility of Klebsiella pneumoniae"
Description: "Susceptibility of organism to Amoxicillin + Clavulanate and Ceftriaxone"
Usage: #example
* basedOn = Reference(4-sepsis-ServiceRequest)
* status = #final
// * category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = $loinc#29576-6 "Bacterial susceptibility panel"
* subject = Reference(Patient/SaraSpeckmann)
* effectiveDateTime = "2025-04-08"
* method = $sct#359872008 "Disk diffusion susceptibility test (procedure)"
// * specimen = Reference(Specimen/GramStainSpecimen)
* issued = "2025-04-08T10:28:00+01:00"
* performer = Reference(EvaErlenmeyerLaborPipette) "E. Erlenmeyer, Labor Pipette"
* subject = Reference(Patient/SaraSpeckmann)
* valueCodeableConcept = $sct#131196009 "Susceptible"

// component susceptibility of microorganism
* component[+].code = $loinc#18862-3 "Amoxicillin+Clavulanate [Susceptibility]"
* component[=].valueCodeableConcept = $sct#131196009 "Susceptible (qualifier value)"
* component[+].code = $loinc#18895-3 "cefTRIAXone [Susceptibility]"
* component[=].valueCodeableConcept = $sct#131196009 "Susceptible (qualifier value)"
//* component[=].interpretation

Instance: ObservationGramStainResultKpneumoniae
InstanceOf: ChLabObservationR4R5
Title: "Gram Stain Result"
Description: "Gram stain result"
Usage: #example
* basedOn = Reference(4-sepsis-ServiceRequest)
* status = #final
* code = $loinc#87975-9 "Microscopic observation [Identifier] in Isolate by Gram stain"
* subject = Reference(Patient/SaraSpeckmann)
* effectiveDateTime = "2025-04-08"
* issued = "2025-04-08T10:28:00+01:00"
* performer = Reference(EvaErlenmeyerLaborPipette) "E. Erlenmeyer, Labor Pipette"
* valueCodeableConcept = http://snomed.info/sct#87172008 "Gram-negative bacillus"