Instance: 6-histopath-ServiceRequestByForm
InstanceOf: ChOrfServiceRequest
Title: "Service Requst: laborder 0-generic"
Description: "Example for Service Request due to suspected melanoma of skin"
Usage: #example
* id = "6-histopath-service-request-by-form"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* status = #active
* intent = #original-order
* category = $servicerequest-categories#RequestForHistopathExam "Anforderung von histopathologischen Untersuchungen"
// code: what is being requested (procedure codes SNOMED CT, Test Codes LOINC), CodeableConcept
// code has an array of codings

// Pathology
* code.coding[0] = $loinc#11526-1 "Pathology study"

// orderDetails: Additional order information, codeableConcept

* priority = #urgent
* subject = Reference(Patient/SimoneStuder)
* requester = Reference(ArminAhrensArztpraxis)
* reasonCode = $sct#1163403006 "Pigmented nevus (morphologic abnormality)"
* reasonCode.text = "Suspicion Melanoma Skin"
* reasonReference = Reference(DiagnosticReport/skin-dermatoscopy)
* insurance = Reference(HealthInsuranceCardSimoneStuder)
* specimen[0] = Reference(Specimen/Skin) "Skin specimen"

