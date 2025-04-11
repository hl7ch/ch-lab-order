Instance: observationGramStainAndSusceptibility
InstanceOf: ChLabObservationR4R5
Title: "CH LAB-Order Observation reporting result of Gram Staining"
Description: "Result of Gram Staining, which is a test to identify the type of bacteria present in a sample."
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
* valueCodeableConcept = $sct#87172008 "Gram-negative bacillus (organism)"
* hasMember[0] = Reference(OrganismIdentification)
* hasMember[1] = Reference(SusceptibilityTest)

Instance: OrganismIdentification
InstanceOf: ChLabObservationR4R5
Title: "Organism Identification"
Description: "Identified microorganism"
Usage: #example
* basedOn = Reference(4-sepsis-ServiceRequest)

* status = #final
// * category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = $loinc#43409-2 "Bacteria identified in Isolate by Culture"
* subject = Reference(Patient/SaraSpeckmann)
* effectiveDateTime = "2025-04-08"
* performer = Reference(EvaErlenmeyerLaborPipette) "E. Erlenmeyer, Labor Pipette"
* valueCodeableConcept = $sct#112283007 "Escherichia coli (organism)"

Instance: SusceptibilityTest
InstanceOf: ChLabObservationR4R5
Title: "Antibiotic Susceptibility"
Description: "Susceptibility of organism to Amoxicillin + Clavulanate"
Usage: #example
* basedOn = Reference(4-sepsis-ServiceRequest)
* status = #final
// * category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
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