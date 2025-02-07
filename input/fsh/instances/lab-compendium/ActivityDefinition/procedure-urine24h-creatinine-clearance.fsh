Instance: procedure-urine24h-creatinine-clearance
InstanceOf: ActivityDefinition
Title: "CH LAB-Order ActivityDefinition Creatinine Clearance"
Description: "Procedure to get the renal clearance in 24h Urine and Serum or Plasma"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabProcedureDefinition"
* language = #en-US
* url = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-urine24h-creatinine-clearance"
* version = "0.1.0"
* name = "UrineCreatinineClearanceProcedure"
* title = "Procedure - 24-hour urine creatinine clearance"
* status = #draft
* experimental = false
* date = "2024-12-13T18:00:00+01:00"

* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.4.642.19.7.201"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.ch"
* description = "Procedures conveying the creatinine renal clearance in 24h urine observation"
//* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
//* purpose = "This procedures only hooks the creatinine renal clearance in 24h urine observation to the laboratory service \"Creatinine 24H renal clearance\""

* effectivePeriod.start = "2025-01-01"
* effectivePeriod.end = "2025-12-31"

* topic[0] = $loinc#18719-5 "Chemistry studies (set)"  // LOINC Specialty code
* topic[+] = $sct#275711006 "Serum chemistry test (procedure)" // SNOMED CT Specialty
* topic[+] = $sct#167181009 "Measurement of renal clearance of creatinine (procedure)"  // SNOMED CT observable entity

// * relatedArtifact.type = #documentation
// * relatedArtifact.display = "Explanation of diagnostic tests ..."
* kind = #ServiceRequest
* code = $loinc#2164-2 "Creatinine renal clearance in 24 hour Urine and Serum or Plasma"
// * observationResultRequirement = Reference(ObservationDefinition/example-observation-creatinine-renal-clearance)

// * observationRequirement[0] = Reference(ObservationDefinition/creatinine-clearance)
* observationResultRequirement = Reference(ObservationDefinition/creatinine-clearance)
