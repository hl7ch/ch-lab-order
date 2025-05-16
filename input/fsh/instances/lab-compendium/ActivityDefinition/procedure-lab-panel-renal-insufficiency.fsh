
Instance: procedure-lab-panel-renal-insufficiency
InstanceOf: ActivityDefinition
Title: "CH LAB-Order Procedure for Renal Insufficiency Assessment Panel"
Description: "Procedure for estimated Glomerual Filtration Rate and and Urine Albumine-Creatinine Ratio"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabProcedureDefinition"
* language = #en-US
* url = "http://fhir.ch/ig/ch-lab-order/ActivityDefinition/procedure-lab-panel-renal-insufficiency"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.4.642.19.7.100"
* status = #draft
* description = "Order Panel for chronic renal insufficiency"
* relatedArtifact.type = #documentation
* relatedArtifact.display = "Explanation of diagnostic tests used for assessment of stable renal insufficiency"
* kind = #ServiceRequest
* code = $sct#723190009 "Chronic renal insufficiency (disorder)"
* code.text = "test for assessment of renal insufficiency"
// * timingTiming.event.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
// * timingTiming.event.extension.valueExpression.language = #text/cql
// * timingTiming.event.extension.valueExpression.expression = "Now()"
// * participant.type = #practitioner

* specimenRequirement = Reference(SpecimenDefinition/specimenUrineSpot)
* specimenRequirement = Reference(SpecimenDefinition/single-test-serum-venous)
* observationResultRequirement[0] = Reference(ObservationDefinition/observationAlbuminUrine)
* observationResultRequirement[+] = Reference(ObservationDefinition/observationCreatinineUrine)
* observationResultRequirement[+] = Reference(ObservationDefinition/observation-uACR)
* observationResultRequirement[+] = Reference(ObservationDefinition/observationCreatinineSerum)
