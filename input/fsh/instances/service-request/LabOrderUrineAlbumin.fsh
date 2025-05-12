Instance: LabOrderUrineAlbumin
InstanceOf: ChLabOrderSR
Title: "CH LAB-Order Albumin [Moles/volume] in Urine"
Description: "This term was created for, but not limited in use to, the cobas Tina-quant Albumin test kit. (Conversion factors: mg/L x 0.0152 = μmol/L, g/L x 15.2 = μmol/L)"
Usage: #example
* id = "lab-order-urine-albumin"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[placerOrderIdentifier].value = "123"
// * instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/PlanDefinition/example-lab-panel-renal-insufficiency"
* basedOn = Reference(LabOrder-uACR)
// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-123456789"
* status = #active
* intent = #original-order

// What is being ordered
// ---- Clinical Chemistry Tests ----
* code.coding.code = #77158-4
* code.coding.system = $loinc
* code.coding.display = "Microalbumin [Moles/volume] in Urine by Detection limit <= 3.0 mg/L"

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
* specimen[+] = Reference(Specimen/Urine) "Urine specimen"
* note.text = "Please use umol/L as Unit for the ratio calculation umol[albumin]/mmol[creatinine]."
