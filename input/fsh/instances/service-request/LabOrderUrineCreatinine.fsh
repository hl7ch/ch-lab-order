Instance: LabOrderUrineCreatinine
InstanceOf: ChLabOrderSR
Title: "CH LAB-ServiceRequest for Creatinine [Moles/volume] in Urine"
Description: "Service Request for Creatinine [Moles/volume] in Urine"
Usage: #example
* id = "lab-order-urine-creatinine"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[placerOrderIdentifier].value = "Y274589"
// * instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/PlanDefinition/procedure-creatinine-clearance"
* basedOn = Reference(LabOrder-uACR)
// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-123456789"
* status = #active
* intent = #original-order

// What is being ordered
// ---- Clinical Chemistry Tests ----
* code.coding.code = #14683-7
* code.coding.system = $loinc
* code.coding.display = "Creatinine [Moles/volume] in Urine"

// * orderDetails[+]: // codeableConcept
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
* note.text = "Please use mmol/L for the ratio calculation mol[albumin]/mmol[creatinine]. Most labs in Switzerland use mg[albumin]/mmol[creatinine] as unit for the ratio calculation."

// Viollier, Bioanalytica, Medisyn, Unilabs, Synlab, Medics, laborteam: mg[albumin]/mmol[creatinine]
// Risch: mg[albumin]/mmol[creatinine]