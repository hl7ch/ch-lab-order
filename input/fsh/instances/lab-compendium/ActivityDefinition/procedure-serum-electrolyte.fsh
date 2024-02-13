Instance: procedure-serum-electrolyte
InstanceOf: ActivityDefinition
Title: "ActivityDefinition Electrolytes"
Description: "Procedure Electrolytes 1998 panel - Serum or Plasma"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabProcedureDefinition"
* language = #en-US
* url = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-serum-electrolyte"
* version = "0.1.0"
* name = "BloodElectrolyteProcedure"
* title = "Procedure - blood electrolyte (serum or plasma)"
* status = #draft
* experimental = true
* date = "2020-02-11T14:00:00+02:00"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/Special/committees/orders"
* description = "Na, K, Cl level measurements on serum or plasma"
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* purpose = "This _ActivityDefinition_ specifies the input specimens and input and output observations for blood electrolyte.              It is referenced by any _PlanDefinition_ representing a lab service incorporating this procedure."
* effectivePeriod.start = "2020-04-01"
* effectivePeriod.end = "2020-12-25"

* topic[0] = $loinc#18719-5 "Chemistry studies (set)"  // LOINC Specialty code
* topic[+] = $sct#275711006 "Serum chemistry test (procedure)" // SNOMED CT Specialty

* kind = #ServiceRequest
* code = $loinc#24326-1 "Electrolytes 1998 panel - Serum or Plasma"
* specimenRequirement = Reference(SpecimenDefinition/single-test-serum-venous)
* observationResultRequirement[0] = Reference(ObservationDefinition/observation-serum-sodium)
* observationResultRequirement[+] = Reference(ObservationDefinition/observation-serum-potassium)
* observationResultRequirement[+] = Reference(ObservationDefinition/observation-serum-chloride)