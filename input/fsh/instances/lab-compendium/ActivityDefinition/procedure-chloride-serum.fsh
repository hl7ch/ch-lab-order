Instance: procedure-chloride-serum
InstanceOf: ChLab_LabProcedureDefinitionR4
Title: "CH LAB-Order Procedure Chloride in Serum"
Description: "Procedure Chloride [Moles/volume] in Serum or Plasma"
Usage: #example
// * meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabProcedureDefinition"
* language = #en-US
* url = "http://fhir.ch/ig/ch-lab-order/ActivityDefinition/procedure-chloride-serum"
* identifier.use = #official
* identifier.value = "Chloride_Serum_test"
* version = "0.1.0"
* name = "ChlorideSerumMeasurementProcedure"
* title = "Procedure - chloride measurement on in vitro blood serum"
* status = #active
* experimental = false
* date = "2025-01-01T14:00:00+02:00"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/Special/committees/orders"
* description = "Chloride measurement procedure on in-vitro serum specimen"
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#756
* purpose = "This _ActivityDefinition_ specifies the input specimens and observations needed to perform              chloride level test on serum, and the output observation.              It is referenced by any _PlanDefinition_ representing a lab service focusing on this test."
* effectivePeriod.start = "2025-01-01"
* effectivePeriod.end = "2025-12-25"

* topic[0] = $loinc#18719-5 "Chemistry studies (set)"  // LOINC Specialty code
* topic[+] = $sct#275711006 "Serum chemistry test (procedure)" // SNOMED CT Specialty
* kind = #ServiceRequest

// Detail type of lab procedure (Snomed CT)
* code = $sct#271238006 "Serum chloride measurement (procedure)"

* priority = #routine
// * timingDuration = 30 'mn' "minutes"
* specimenRequirement = Reference(SpecimenDefinition/single-test-serum-venous)
* observationResultRequirement = Reference(ObservationDefinition/observation-chloride-serum)
