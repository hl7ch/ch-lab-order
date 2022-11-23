Instance: procedure-crp-highsens
InstanceOf: ActivityDefinition
Description: "Service CRP"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabProcedureDefinition"
* language = #en-US
* url = "http://hl7.org/fhir/uv/order-catalog/ActivityDefinition/procedure-crp-highsens"
* identifier.use = #official
* identifier.value = "CRP_test"
* version = "0.1.0"
* name = "CRPMeasurementProcedure"
* title = "Procedure - CRP measurement on in vitro blood serum - SI-Units"
* status = #draft
* experimental = true
* date = "2020-01-24T14:00:00+02:00"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/Special/committees/orders"
* description = "Potassium measurement procedure on in-vitro serum specimen"
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* purpose = "This _ActivityDefinition_ specifies the input specimens and observations needed to perform potassium level test on serum, and the output observation.                  It is referenced by any _PlanDefinition_ representing a lab service focusing on this test."
* effectivePeriod.start = "2020-04-01"
* effectivePeriod.end = "2020-12-25"
* topic[0] = http://snomed.info/sct#166312007 "Blood chemistry"
* topic[1] = http://snomed.info/sct#711357009 "Measurement of C-reactive protein using high sensitivity technique (procedure)"
* kind = #ServiceRequest
* code = http://loinc.org#30522-7 "C reactive protein [Mass/volume] in Serum or Plasma by High sensitivity method"
* priority = #routine
* timingDuration = 30 'mn' "minutes"
* specimenRequirement = Reference(SpecimenDefinition/single-test-serum-venous)
* observationResultRequirement = Reference(ObservationDefinition/observation-serum-potassium)