Instance: procedure-hb-ht-panel
InstanceOf: ActivityDefinition
Title: "CH LAB-Order Procedures Hemoglobin and Hematocrit panel"
Description: "Hemoglobin-Hematocrit measurement procedure on in-vitro blood specimen"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabProcedureDefinition"
* language = #en-US
* url = "http://fhir.ch/ig/ch-lab-order/ActivityDefinition/procedure-hb-ht-panel"
* identifier.use = #official
* identifier.value = "Hemoglobin and Hematocrit panel (Bld)"  // LOINC display name
* version = "0.1.0"
* name = "HemoglobinHematokritPanelProcedure"
* title = "Procedure - Hemoglobin and Hematocrit panel - Blood" // Long
* status = #active
* experimental = true
* date = "2020-01-24T14:00:00+02:00"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/Special/committees/orders"
* description = "Hemoglobin-Hematocrit measurement procedure on in-vitro blood specimen"
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#756
* purpose = "This _ActivityDefinition_ specifies the input specimens and observations needed to perform potassium level test on serum, and the output observation.                  It is referenced by any _PlanDefinition_ representing a lab service focusing on this test."
* effectivePeriod.start = "2020-04-01"
* effectivePeriod.end = "2020-12-25"

* topic[0] = $loinc#18723-7 "Hematology studies (set)"  // LOINC Specialty code
* topic[+] = $sct#252275004 "Hematology test (procedure)" // SNOMED CT Specialty

* topic[+] = $sct#441689006 "Measurement of total hemoglobin concentration (procedure)"
* kind = #ServiceRequest
* code = $loinc#24360-0 "Hemoglobin and Hematocrit panel - Blood"
* priority = #routine
// * timingDuration = 30 'mn' "minutes"
* specimenRequirement = Reference(SpecimenDefinition/specimen-blood-EDTA) 
* observationResultRequirement[+] = Reference(ObservationDefinition/observation-blood-hemoglobin)
* observationResultRequirement[+] = Reference(ObservationDefinition/observation-blood-hematocrit)