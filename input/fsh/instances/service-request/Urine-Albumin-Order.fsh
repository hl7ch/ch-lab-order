Instance: UrineAlbuminOrder
InstanceOf: ChLabOrderSR
Title: "CH LAB-Order Albumin/Creatinine Ratio in Urine"
Description: "Service Request for a Albumin and Creatine test in Urine, and Ratio Calculation"
Usage: #example
* id = "urine-albumine-order"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/PlanDefinition/example-lab-panel-renal-insufficiency"

// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-123456789"
* status = #active
* intent = #original-order
// * category = $sct#721963009 "Order (record artifact)"

// What is being ordered
// ---- Clinical Chemistry Tests ----
* code.coding.code = #32294-1
* code.coding.system = $loinc
* code.coding.display = "Albumin/Creatinine [Ratio] in Urine"

// ---- orderDetails ----
* orderDetail.coding.code = #NW
* orderDetail.coding.system = $v2-0119
* orderDetail.coding.display = "New order/service"
* orderDetail.text = "Order Control code"

* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannGruppenpraxis)
* reasonCode = $sct#90688005
* reasonCode.text = "Chronic renal failure syndrome (disorder)"
* insurance = Reference(HealthInsuranceCard)

// * supportingInfo[+] = Reference(ServiceRequest/Serum-eGFR-Order)
// * supportingInfo[+] = Reference(ServiceRequest/urineCreatinine)

// * specimen[+] = Reference(Specimen/Serum) "Serum specimen"
* specimen[+] = Reference(Specimen/Urine) "Urine specimen"
