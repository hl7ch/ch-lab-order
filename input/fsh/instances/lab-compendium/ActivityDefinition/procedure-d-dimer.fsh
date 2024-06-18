Instance: procedure-d-dimer
InstanceOf: ActivityDefinition
Title: "ActivityDefinition D-Dimer"
Description: "Procedure Short Fibrin D-dimer FEU and DDU panel"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabProcedureDefinition"
* language = #en-US
* url = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-d-dimer"
* identifier.use = #official
* identifier.value = "Cl_serum_test"
* version = "0.1.0"
* name = "D_DimerMeasurementProcedure"
* title = "Procedure - d-dimer measurement on in vitro blood serum"
* status = #active
* experimental = true
* date = "2020-01-24T14:00:00+02:00"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/Special/committees/orders"
* description = "Chloride measurement procedure on in-vitro serum specimen"
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* purpose = "This _ActivityDefinition_ specifies the input specimens and observations needed to perform chloride level test on serum, and the output observation. It is referenced by any _PlanDefinition_ representing a lab service focusing on this test."

* effectivePeriod.start = "2020-04-01"
* effectivePeriod.end = "2020-12-25"

* topic[0] = $loinc#18720-3 "Coagulation studies (set)"  // LOINC Specialty code
* topic[+] = $sct#86236002 "Circulating anticoagulant assay (procedure)" // not shure correct code

* kind = #ServiceRequest
* code = $loinc#91556-1 "Fibrin D-dimer DDU [Mass/volume] in Blood by Immunoassay"
* priority = #routine
* timingDuration = 30 'mn' "minutes"
// * specimenRequirement = Reference(SpecimenDefinition/single-test-serum-venous)
// * observationResultRequirement = Reference(ObservationDefinition/observation-serum-chloride)