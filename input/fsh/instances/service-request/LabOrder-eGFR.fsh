Instance: LabOrder-eGFR
InstanceOf: ChLabOrderSR
Title: "CH LAB-Order eGFR CKD-EPI 2021"
Description: "Service Request for serum creatinine and calculation of eGFR"
Usage: #example
* id = "lab-order-eGFR"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[placerOrderIdentifier].value = "Y274589"

// Reference to superior order
* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/PlanDefinition/eGFR-Service"
* basedOn[+] = Reference(LabOrderRenalInsufficiencyPanel)

// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* requisition.value = "ReqID-123456789"
* status = #active
* intent = #original-order

// What is being ordered
// ---- Clinical Chemistry Tests ----
* code.coding.code = #98979-8
* code.coding.system = $loinc
* code.coding.display = "Glomerular filtration rate [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (CKD-EPI 2021)/1.73 sq M"

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
//* insurance = Reference(HealthInsuranceCard)

* specimen[+] = Reference(Specimen/Serum) "Serum specimen"

