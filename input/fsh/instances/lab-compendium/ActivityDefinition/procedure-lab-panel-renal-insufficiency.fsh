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
* experimental = false
* date = "2024-12-13T18:00:00+01:00"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.ch"
* title = "Procedure for renal insufficiency assessment panel"
* description = "Order Panel for chronic renal insufficiency"
* relatedArtifact.type = #documentation
* relatedArtifact.display = "Explanation of diagnostic tests used for assessment of stable renal insufficiency"
* kind = #ServiceRequest
* code = $sct#441915005 "Measurement of renal function (procedure)"
* intent = #order
* specimenRequirement = Reference(SpecimenDefinition/specimenUrineSpot)
* specimenRequirement = Reference(SpecimenDefinition/single-test-serum-venous)
* observationResultRequirement[0] = Reference(ObservationDefinition/observationAlbuminUrine)
* observationResultRequirement[+] = Reference(ObservationDefinition/observationCreatinineUrine)
* observationResultRequirement[+] = Reference(ObservationDefinition/observation-uACR)
* observationResultRequirement[+] = Reference(ObservationDefinition/observationCreatinineSerum)
