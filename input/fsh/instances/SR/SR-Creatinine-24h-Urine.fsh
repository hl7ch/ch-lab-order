Instance: SR-Creatinine-24h-Urine
InstanceOf: ChLabOrderSR_labtest
Title: "LabOrder Service Request for Clinical Chemistry Tests: Creatinine24 h Urine"
Description: "Example for Service Request"
Usage: #example
* id = "SR-Creatinine-24h-Urine"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"

* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/Catalog/ActivityDefinition/procedure-urine24h-creatinine"

// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-1234567"

* status = #active
* intent = #original-order
* category = $servicerequest-categories#RequestForLabExam "Anforderung Laboruntersuchung"

// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Clinical Chemistry Tests ----
* code = $loinc#20624-3 "Creatinine [Mass/volume] in 24 hour Urine"

// orderDetails: Additional order information, codeableConcept

* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannArztpraxis)
* reasonCode = $sct#723188008
* reasonCode.text = "Renal insufficiency (disorder)"
* insurance = Reference(HealthInsuranceCard)

// ---- Specimen ----
* specimen[0] = Reference(Specimen/Urine-24h) "Urin 24h Sample"
// * specimen[+] = Reference(Specimen/Serum-capillary)
// * specimen[+] = Reference(Specimen/Blood)