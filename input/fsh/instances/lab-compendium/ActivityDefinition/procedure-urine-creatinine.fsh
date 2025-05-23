Instance: procedure-urine-creatinine
InstanceOf: ActivityDefinition
Title: "CH LAB-Order Procedure Urine Creatinine"
Description: "Procedure Creatinine [Mass/volume] in Urine"
Usage: #example
* url = "http://fhir.ch/ig/ch-lab-order/ActivityDefinition/procedure-urine-creatinine"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.4.642.19.7.103"
* status = #draft
* description = "Determination of Creatinine in Urine"
* relatedArtifact.type = #documentation
* relatedArtifact.display = "Explanation of diagnostic tests to determine level of creatinine in urine"
* kind = #ServiceRequest
* code = $loinc#2161-8 "Creatinine [Mass/volume] in Urine"
* code.text = "Creatinine (U) [Mass/Vol]"   // LOINC Display name
* timingTiming.event.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* timingTiming.event.extension.valueExpression.language = #text/cql
* timingTiming.event.extension.valueExpression.expression = "Now()"
* participant.type = #practitioner

// * observationResultRequirement = Reference(ObservationDefinition/example-observation-creatinine-renal-clearance)

* observationRequirement = Reference(ObservationDefinition/observationCreatinineUrine)
* observationResultRequirement = Reference(ObservationDefinition/observationCreatinineUrine)
// * observationResultRequirement[+] = Reference(ObservationDefinition/urineCreatinine-creatinine-ratio)