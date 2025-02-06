Instance: procedure-lab-eGFR-ckd-epi
InstanceOf: ActivityDefinition
Title: "CH LAB-Order ActivityDefinition eGFK CKD-EPI"
Description: "Procedure to get the estimated GFR [Moles/volume] using CKD-EPI 2021 calculator, and mesurement of serum creatinine"
Usage: #example
* url = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-lab-eGFR-ckd-epi"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.4.642.19.7.101"
* status = #draft
* description = "Order eGFK CKD-EPI 2021"
* relatedArtifact.type = #documentation
* relatedArtifact.display = "Explanation of diagnostic tests for estimated GFR by CKD-EPI 2021 formula"
* library = "https://www.zkidney.com/mdrd-main"
* kind = #ServiceRequest

// codes from SNOMED CT and from LOINC
* code.coding[+].system = $sct
* code.coding[=].code = #444275009
* code.coding[=].display = "Measurement of creatinine concentration in serum or plasma specimen with calculation of glomerular filtration rate (procedure)"
* code.coding[+].system = $loinc
* code.coding[=].code = #98979-8
* code.coding[=].display = "Glomerular filtration rate/1.73 sq M.predicted [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (CKD-EPI 2021)"

* code.text = "eGFR by CKD-EPI 2021"
* timingTiming.event.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* timingTiming.event.extension.valueExpression.language = #text/cql
* timingTiming.event.extension.valueExpression.expression = "Now()"
* participant.type = #practitioner

// * observationRequirement = Reference(Patient/ age )
* observationResultRequirement = Reference(ObservationDefinition/serumCreatinine)
