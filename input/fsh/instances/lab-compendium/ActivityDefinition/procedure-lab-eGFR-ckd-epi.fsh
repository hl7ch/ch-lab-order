Instance: procedure-lab-eGFR-ckd-epi
InstanceOf: ActivityDefinition
Title: "CH LAB-Order Procedure eGFK CKD-EPI"
Description: "Procedure to get the estimated GFR [Moles/volume] using CKD-EPI 2021 calculator, and mesurement of serum creatinine"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabProcedureDefinition"
* language = #en-US
* url = "http://fhir.ch/ig/ch-lab-order/ActivityDefinition/procedure-lab-eGFR-ckd-epi"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.4.642.19.7.101"
* version = "0.1.0"
// * name = "Lab_eGFK_CKD_EPI_Procedure"
* title = "Procedure to assess the estimated glomerular filtration rate (eGFR CKD EPI 2021)"
* status = #draft
* experimental = false
* date = "2024-12-13T18:00:00+01:00"

* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.ch"
* description = "Procedure conveying the eGFR CKD-EPI 2021 in serum creatinin observation"
//* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
//* purpose = "This procedures only hooks the creatinine renal clearance in 24h urine observation to the laboratory service \"Creatinine 24H renal clearance\""

* effectivePeriod.start = "2025-01-01"
* effectivePeriod.end = "2025-12-31"

* topic[0] = $loinc#18719-5 "Chemistry studies (set)"  // LOINC Specialty code
* topic[+] = $sct#275711006 "Serum chemistry test (procedure)" // SNOMED CT Specialty
* topic[+] = $sct#271075006 "Urine albumin/creatinine ratio measurement (procedure)" 

// * relatedArtifact.type = #documentation
// * relatedArtifact.display = "Explanation of diagnostic tests for estimated GFR by CKD-EPI 2021 formula"
* library = "https://www.zkidney.com/mdrd-main"
* kind = #ServiceRequest
// * code.text = "eGFR calculated with CKD-EPI 2021"
* code = $loinc#98979-8 "Glomerular filtration rate [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (CKD-EPI 2021)/1.73 sq M"

// codes from SNOMED CT and from LOINC
// * code.coding[+].system = $sct
// * code.coding[=].code = #444275009
// * code.coding[=].display = "Measurement of creatinine concentration in serum or plasma specimen with calculation of glomerular filtration rate (procedure)"
// * code.coding[+].system = $loinc
// * code.coding[=].code = #98979-8
// * code.coding[=].display = "Glomerular filtration rate/1.73 sq M.predicted [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (CKD-EPI 2021)"
// * code.text = "eGFR by CKD-EPI 2021"
// * timingTiming.event.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
// * timingTiming.event.extension.valueExpression.language = #text/cql
// * timingTiming.event.extension.valueExpression.expression = "Now()"
// * participant.type = #practitioner

// * observationRequirement = Reference(Patient/ age grösse gewicht )
* specimenRequirement = Reference(SpecimenDefinition/specimenUrineSpot)
* observationRequirement = Reference(ObservationDefinition/observationCreatinineSerum)
* observationResultRequirement = Reference(ObservationDefinition/observation-eGFR)
