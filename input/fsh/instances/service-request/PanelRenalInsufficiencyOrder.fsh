Instance: PanelRenalInsufficiencyOrder
InstanceOf: ChLabOrderSR
Title: "CH LAB-Order: Panel for eGFR and Albumin/Creatinin Ratio in Urine"
Description: "Service Request for a Laboratory Panel (Battery) to assess the renal insufficiency"
Usage: #example
* id = "panel-renal-insufficiency-order"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/PlanDefinition/RenalInsuffiencyLabService"

// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-123456789"
* status = #active
* intent = #original-order
// * category = $sct#721963009 "Order (record artifact)"

// What is being ordered
// ---- Clinical Chemistry Tests ----
* code.coding.code = #108252007
* code.coding.system = $sct
* code.coding.display = "Laboratory procedure (procedure)"

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

* supportingInfo[+] = Reference(ServiceRequest/egfr-order)
* supportingInfo[+] = Reference(ServiceRequest/uacr-order)

* specimen[+] = Reference(Specimen/Serum) "Serum specimen"
* specimen[+] = Reference(Specimen/Urine) "Urine specimen"
