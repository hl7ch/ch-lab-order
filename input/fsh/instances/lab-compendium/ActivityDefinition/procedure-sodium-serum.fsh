Instance: procedure-sodium-serum
InstanceOf: ActivityDefinition
Title: "CH LAB-Order Procedure Sodium"
Description: "Procedure Sodium [Moles/volume] in Serum or Plasma"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabProcedureDefinition"
* language = #en-US
* url = "http://fhir.ch/ig/ch-lab-order/ActivityDefinition/procedure-sodium-serum"
* identifier.use = #official
* identifier.value = "Na_serum_test"
* version = "0.1.0"
* name = "SodiumSerumMeasurementProcedure"
* title = "Procedure - sodium measurement on in vitro blood serum"
* status = #active
* experimental = true
* date = "2020-01-24T14:00:00+02:00"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/Special/committees/orders"
* description = "Sodium measurement procedure on in-vitro serum specimen"
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#756
* purpose = "This _ActivityDefinition_ specifies the input specimens and observations needed to perform sodium level test on serum, and the output observation. It is referenced by any _PlanDefinition_ representing a lab service focusing on this test."

* effectivePeriod.start = "2020-04-01"
* effectivePeriod.end = "2020-12-25"

* topic[0] = $loinc#18719-5 "Chemistry studies (set)"  // LOINC Specialty code
* topic[+] = $sct#275711006 "Serum chemistry test (procedure)" // SNOMED CT Specialty

* kind = #ServiceRequest
* code = $loinc#2951-2 "Sodium [Moles/volume] in Serum or Plasma"
* priority = #routine
// * timingDuration = 30 'mn' "minutes"
* specimenRequirement = Reference(SpecimenDefinition/single-test-serum-venous)
* observationResultRequirement = Reference(ObservationDefinition/observation-serum-sodium)