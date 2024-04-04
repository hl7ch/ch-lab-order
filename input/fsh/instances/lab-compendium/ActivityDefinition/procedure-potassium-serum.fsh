Instance: procedure-potassium-serum
InstanceOf: ActivityDefinition
Title: "ActivityDefinition Potassium"
Description: "Procedure Potassium [Moles/volume] in Serum or Plasma"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabProcedureDefinition"
* language = #en-US
* url = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-potassium-serum"
* identifier.use = #official
* identifier.value = "K_serum_test"
* version = "0.1.0"
* name = "PotassiumSerumMeasurementProcedure"
* title = "Procedure - potassium measurement on in vitro blood serum"
* status = #active
* experimental = true
* date = "2020-01-24T14:00:00+02:00"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/Special/committees/orders"
* description = "Potassium measurement procedure on in-vitro serum specimen"
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* purpose = "This _ActivityDefinition_ specifies the input specimens and observations needed to perform potassium level test on serum, and the output observation.                  It is referenced by any _PlanDefinition_ representing a lab service focusing on this test."

* effectivePeriod.start = "2020-04-01"
* effectivePeriod.end = "2020-12-25"

* topic[0] = $loinc#18719-5 "Chemistry studies (set)"  // LOINC Specialty code
* topic[+] = $sct#275711006 "Serum chemistry test (procedure)" // SNOMED CT Specialty

* kind = #ServiceRequest
* code = $loinc#2823-3 "Potassium [Moles/volume] in Serum or Plasma"
* priority = #routine
* timingDuration = 30 'mn' "minutes"
* specimenRequirement = Reference(SpecimenDefinition/single-test-serum-venous)
* specimenRequirement = Reference(SpecimenDefinition/single-test-serum-capillary)
* observationRequirement = Reference(ObservationDefinition/input-observation-reason-for-ordering)
* observationResultRequirement = Reference(ObservationDefinition/observation-serum-potassium)