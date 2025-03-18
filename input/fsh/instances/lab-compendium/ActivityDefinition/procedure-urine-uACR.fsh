Instance: procedure-urine-uACR
InstanceOf: ActivityDefinition
Title: "CH LAB-Order Procedure Urine Albumin/Creatinine Ratio"
Description: "Procedure Albumin/Creatinine Ratio [Mass Ratio] in Urine"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabProcedureDefinition"
* language = #en-US
* url = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-urine-uACR"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.4.642.19.7.102"
* version = "0.1.0"
// * name = "Urine_eGFK_CKD_EPI_Procedure"
* title = "Procedure to assess the Urine Albumin/Creatinine Ratio (uACR)"
* status = #draft
* experimental = false
* date = "2024-12-13T18:00:00+01:00"

* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.ch"
* description = "Procedure conveying the uACR in urine albumin/creatinine ratio observation"
//* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
//* purpose = "This procedures only hooks the creatinine renal clearance in 24h urine observation to the laboratory service \"Creatinine 24H renal clearance\""

* effectivePeriod.start = "2025-01-01"
* effectivePeriod.end = "2025-12-31"

* topic[0] = $loinc#18719-5 "Chemistry studies (set)"  // LOINC Specialty code
* topic[+] = $sct#275711006 "Serum chemistry test (procedure)" // SNOMED CT Specialty
* topic[+] = $sct#271075006 "Urine albumin/creatinine ratio measurement (procedure)" 

// * relatedArtifact.type = #documentation
// * relatedArtifact.display = "Explanation of diagnostic tests to determine the ratio of the concentration of albumin and creatinine in urine"
// * library = "https://www.zkidney.com/mdrd-main"
* kind = #ServiceRequest
// * code.text = "uACR in Urine"
* code = $loinc#9318-7 "Albumin/Creatinine [Mass Ratio] in Urine"
// * timingTiming.event.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
// * timingTiming.event.extension.valueExpression.language = #text/cql
// * timingTiming.event.extension.valueExpression.expression = "Now()"
// * participant.type = #practitioner

* specimenRequirement = Reference(SpecimenDefinition/specimenUrineSpot)
* observationRequirement[0] = Reference(ObservationDefinition/observationAlbuminUrine)
* observationRequirement[+] = Reference(ObservationDefinition/observationCreatinineUrine)
* observationResultRequirement[+] = Reference(ObservationDefinition/observation-uACR)
