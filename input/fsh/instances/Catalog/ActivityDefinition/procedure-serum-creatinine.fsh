Instance: procedure-serum-creatinine
InstanceOf: ActivityDefinition
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabProcedureDefinition"
* language = #en-US
* url = "http://hl7.org/fhir/uv/order-catalog/ActivityDefinition/procedure-serum-creatinine"
* version = "0.1.0"
* name = "UrineCreatinineProcedure"
* title = "Procedure - serum creatinine - venous blood"
* status = #draft
* experimental = true
* date = "2020-02-13T12:00:00+01:00"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/Special/committees/orders"
* description = "creatinine measurements on serum specimen obtained from venous or capillary blood"
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* purpose = "This _ActivityDefinition_ specifies the input serum specimen and the output observation for serum creatinine.              It is referenced by any _PlanDefinition_ representing a lab service incorporating this procedure."

* effectivePeriod.start = "2020-04-01"
* effectivePeriod.end = "2020-12-25"

* topic[0] = LOINC#18719-5 "Chemistry studies (set)"  // LOINC Specialty code
* topic[+] = SCT#275711006 "Serum chemistry test (procedure)" // SNOMED CT Specialty
* kind = #ServiceRequest
* code = LOINC#2160-0 "Creatinine [Mass/volume] in Serum or Plasma"
* observationResultRequirement = Reference(ObservationDefinition/observation-serum-creatinine)