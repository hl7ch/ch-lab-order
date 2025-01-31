Instance: example-lab-eGFR-ckd-epi
InstanceOf: ActivityDefinition
Usage: #example
* url = "http://fhir.ch/ig/ch-lab-order/ActivityDefinition/example-lab-eGFR-ckd-epi"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.4.642.19.7.101"
* status = #draft
* description = "Order eGFK CKD-EPI 2021"
* relatedArtifact.type = #documentation
* relatedArtifact.display = "Explanation of diagnostic tests for estimated GFR by CKD-EPI 2021 formula"
* kind = #ServiceRequest
* code.text = "eGFR by CKD-EPI 2021"
* timingTiming.event.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* timingTiming.event.extension.valueExpression.language = #text/cql
* timingTiming.event.extension.valueExpression.expression = "Now()"
* participant.type = #practitioner