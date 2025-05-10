Instance: LabOrder-uACR
InstanceOf: ChLabOrderSR
Title: "CH LAB-Order Albumin/Creatinine Ratio in Urine"
Description: "Service Request for a albumin and creatinine test in Urine, and Ratio Calculation"
Usage: #example
* id = "lab-order-uACR"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/PlanDefinition/uACR-Service"   // PlanDefinition
// Reference to superior order

* basedOn[0] = Reference(LabOrderRenalInsufficiencyPanel)
// * basedOn[+] = Reference(248f80c7-3d8c-4aa1-8eb6-53bcbb6c9bec)
// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-123456789"
* status = #active
* intent = #original-order
// * category = $sct#721963009 "Order (record artifact)"

// What is being ordered
// ---- Clinical Chemistry Tests ----
// * code.coding.code = #32294-1
// * code.coding.system = $loinc
// * code.coding.display = "Albumin/Creatinine [Ratio] in Urine"
// 
// * code.coding.code = #9318-7
// * code.coding.system = $loinc
// * code.coding.display = "Albumin/Creatinine [Mass Ratio] in Urine"
// 
* code.coding.code = #14585-4
* code.coding.system = $loinc
* code.coding.display = "Albumin/Creatinine [Molar Ratio] in Urine"
// Units of Measure for the ratio mmol/mol{creat}

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
// //* insurance = Reference(HealthInsuranceCard)
* supportingInfo[+] = Reference(MedicationStatement/Diclofenac)
* supportingInfo[+] = Reference(Condition/Renal-insufficiency)
* specimen[+] = Reference(Specimen/Urine) "Urine specimen"
