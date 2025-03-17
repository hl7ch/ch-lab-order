Instance: ServiceRequestCreatinineSerum
InstanceOf: ChLabOrderSR
Title: "CH LAB-ServiceRequest for Creatinine in Serum"
Description: "Service Request for Creatinine [Moles/volume] in Serum or Plasma"
Usage: #example

* id = "service-request-creatinine-serum"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123987"
* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/PlanDefinition/CreatinineSerumLabService"

* basedOn[+] = Reference(ServiceRequestCreatinineClearance)
* basedOn[+] = Reference(ServiceRequest-eGFR)

// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-1234567"

* status = #active
* intent = #original-order
// * category = $sct#721963009 "Order (record artifact)"

// What is being ordered

// ---- Clinical Chemistry Tests ----
* code.coding.code = #14682-9
* code.coding.system = $loinc
* code.coding.display = "Creatinine [Moles/volume] in Serum or Plasma"

// * orderDetails[+]: // codeableConcept

* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannGruppenpraxis)

* occurrenceDateTime = "2025-01-15"
* reasonCode = $sct#90688005
* reasonCode.text = "Chronic renal failure syndrome (disorder)"
* insurance = Reference(HealthInsuranceCard)
* supportingInfo[+] = Reference(MedicationStatement/Diclofenac)
* supportingInfo[+] = Reference(Condition/Renal-insufficiency)
* note.text = "Please collect blood sample for serum creatinine and 24-hour urine sample for urine creatinine."

// * reasonCode = $sct#90688005
// * reasonCode.text = "Chronic renal failure syndrome (disorder)"
// * insurance = Reference(HealthInsuranceCard)
// * supportingInfo[+] = Reference(MedicationStatement/Diclofenac)
// * supportingInfo[+] = Reference(Condition/Renal-insufficiency)
// * specimen[+] = Reference(Specimen/Serum) "Serum specimen"



// * status = #active
// * intent = #order
// * code = $loinc#34555-3 "Creatinine 24H renal clearance panel"
// * subject = Reference(Patient/example) "John Doe"
// * requester = Reference(Practitioner/example) "Dr. Jane Smith"
// * performer = Reference(Organization/lab-example) "Example Clinical Laboratory"
* specimen[0] = Reference(Specimen/Serum) "Serum Sample"
// * specimen[+] = Reference(Specimen/Urine-24h) "24-hour Urine Sample"
// * reasonCode = $sct#431855005 "Chronic kidney disease stage 3"
// * note.text = "Please collect a 24-hour urine sample and serum creatinine level for clearance calculation."