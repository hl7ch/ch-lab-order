Instance: procedure-urine-uACR
InstanceOf: ActivityDefinition
Title: "CH LAB-Order ActivityDefinition Urine Albumin/Creatinin Ratio"
Description: "Procedure Albumin/Creatinine Ratio [Mass Ratio] in Urine"
Usage: #example
* url = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-urine-uACR"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.4.642.19.7.102"
* status = #draft
* description = "Procedure Albumin/Creatinine Ratio in Urine"
* relatedArtifact.type = #documentation
* relatedArtifact.display = "Explanation of diagnostic tests to determine the ratio of the concentration of albumin and creatinine in urine"
* kind = #ServiceRequest
* code.text = "uACR in Urine"
* code = $loinc#9318-7 "Albumin/Creatinine [Mass Ratio] in Urine"
* timingTiming.event.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* timingTiming.event.extension.valueExpression.language = #text/cql
* timingTiming.event.extension.valueExpression.expression = "Now()"
* participant.type = #practitioner

* specimenRequirement = Reference(SpecimenDefinition/specimenUrineSpot)
* observationResultRequirement[0] = Reference(ObservationDefinition/urineAlbumin)
* observationResultRequirement[+] = Reference(ObservationDefinition/urineCreatinine)
* observationResultRequirement[+] = Reference(ObservationDefinition/uACR)
