Instance: procedure-urine-albumin
InstanceOf: ActivityDefinition
Title: "CH LAB-Order Procedure Urine Albumin"
Description: "Procedure for Albumin [Mass/volume] in Urine Procedure"
Usage: #example
* url = "http://fhir.ch/ig/ch-lab-order/ActivityDefinition/procedure-urine-albumin"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.4.642.19.7.104"
* status = #draft
* description = "Order Albumin/Creatinine Ratio in Urine"
* relatedArtifact.type = #documentation
* relatedArtifact.display = "Explanation of diagnostic tests to determine level of albumin in urine"
* kind = #ServiceRequest
* code = $loinc#1754-1 "Albumin [Mass/volume] in Urine"
* code.text = "Albumin (U) [Mass/Vol]"  // LOINC Display name
* timingTiming.event.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* timingTiming.event.extension.valueExpression.language = #text/cql
* timingTiming.event.extension.valueExpression.expression = "Now()"
* participant.type = #practitioner
* kind = #ServiceRequest

* observationRequirement[0] = Reference(ObservationDefinition/observationAlbuminUrine)
* observationResultRequirement[0] = Reference(ObservationDefinition/observationAlbuminUrine)
