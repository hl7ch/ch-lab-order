Instance: procedure-crp-highsens-SI
InstanceOf: ActivityDefinition
Title: "CH LAB-Order Procedure CRP highsens SI"
Description: "Procedure C reactive protein [Moles/volume] in Serum or Plasma by High sensitivity method"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabProcedureDefinition"
* language = #en-US
* url = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-crp-highsens-SI"
* identifier.use = #official
* identifier.value = "CRP_test"
* version = "0.1.0"
* name = "CRPMeasurementProcedure"
* title = "Procedure - CRP measurement on in vitro blood serum - SI-Units"
* status = #active
* experimental = true
* date = "2020-01-24T14:00:00+02:00"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/Special/committees/orders"
* description = "C reactive protein [Moles/volume] in Serum or Plasma by High sensitivity method"
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#756
// * purpose = "This _ActivityDefinition_ specifies the input specimens and observations needed to perform potassium level test on serum, and the output observation.                  It is referenced by any _PlanDefinition_ representing a lab service focusing on this test."
* effectivePeriod.start = "2022-04-01"
* effectivePeriod.end = "2023-12-25"

// * topic[0] = $loinc#18719-5 "Chemistry studies (set)"  // LOINC Specialty code
// * topic[+] = $sct#275711006 "Serum chemistry test (procedure)" // SNOMED CT Specialty
// * topic[+] = $sct#711357009 "Measurement of C-reactive protein using high sensitivity technique (procedure)" // SCT Code

* kind = #ServiceRequest
* code = $loinc#76486-0 "C reactive protein [Moles/volume] in Serum or Plasma by High sensitivity method"
* priority = #routine
// * timingDuration = 30 'mn' "minutes"
* specimenRequirement = Reference(SpecimenDefinition/single-test-serum-venous)
* observationResultRequirement = Reference(ObservationDefinition/observation-serum-potassium)