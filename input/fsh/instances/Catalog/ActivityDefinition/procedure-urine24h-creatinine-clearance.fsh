Instance: procedure-urine24h-creatinine-clearance
InstanceOf: ActivityDefinition
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabProcedureDefinition"
* language = #en-US
* url = "http://hl7.org/fhir/uv/order-catalog/ActivityDefinition/procedure-urine24h-creatinine-clearance"
* version = "0.1.0"
* name = "UrineCreatinineClearanceProcedure"
* title = "Procedure - 24-hour urine creatinine clearance"
* status = #draft
* experimental = true
* date = "2020-02-13T18:00:00+01:00"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/Special/committees/orders"
* description = "Procedures conveying the creatinine renal clearance in 24h urine observation"
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* purpose = "This procedures only hooks the creatinine renal clearance in 24h urine observation to the laboratory service \"Creatinine 24H renal clearance\""

* effectivePeriod.start = "2020-04-01"
* effectivePeriod.end = "2020-12-25"

* topic[0] = LOINC#18719-5 "Chemistry studies (set)"  // LOINC Specialty code
* topic[+] = SCT#275711006 "Serum chemistry test (procedure)" // SNOMED CT Specialty
* topic[+] = SCT#102811001 "Creatinine renal clearance, function (observable entity)" // SNOMED CT observable entity


* kind = #ServiceRequest
* code = LOINC#2164-2 "Creatinine renal clearance in 24 hour Urine and Serum or Plasma"
// * observationResultRequirement = Reference(ObservationDefinition/example-observation-creatinine-renal-clearance)

* observationRequirement[0] = Reference(ObservationDefinition/observation-collection-duration)
* observationRequirement[+] = Reference(ObservationDefinition/observation-collection-volume)
* observationResultRequirement[0] = Reference(ObservationDefinition/observation-collection-duration)
* observationResultRequirement[+] = Reference(ObservationDefinition/observation-collection-volume)
* observationResultRequirement[+] = Reference(ObservationDefinition/observation-urine24h-creatinine)