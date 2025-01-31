Instance: example-lab-uACR
InstanceOf: ActivityDefinition
Usage: #example
* url = "http://fhir.ch/ig/ch-lab-order/ActivityDefinition/example-lab-uACR"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.4.642.19.7.102"
* status = #draft
* description = "Order Albumin/Creatinine Ratio in Urine"
* relatedArtifact.type = #documentation
* relatedArtifact.display = "Explanation of diagnostic tests to determine the ratio of the concentration of albumin and creatinine in urine"
* kind = #ServiceRequest
* code.text = "uACR in Urine"
* timingTiming.event.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* timingTiming.event.extension.valueExpression.language = #text/cql
* timingTiming.event.extension.valueExpression.expression = "Now()"
* participant.type = #practitioner