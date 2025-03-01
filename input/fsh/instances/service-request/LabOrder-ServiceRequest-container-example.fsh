Instance: LabOrder-ServiceRequest-container-example
InstanceOf: ChLabOrderSR
Title: "Service Request as container for multiple Service Requests"
Description: "CH LAB-ServiceRequest for Creatinine Clearance and Electrolytes in Serum"
Usage: #example
* id = "LabOrder-container-example"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"

// der SR referenziert auf 3 weitere SR
* basedOn[0] = Reference(LabOrderCreatinineClearance)
* basedOn[+] = Reference(LabOrderSerumElectrolytes)

// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-1234567"

* status = #active
* intent = #original-order
// * category = $sct#721963009 "Order (record artifact)"

* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannGruppenpraxis)
* reasonCode = $sct#404223003
* reasonCode.text = "Deep venous thrombosis of lower extremity"
* insurance = Reference(HealthInsuranceCard)
* specimen[+] = Reference(Specimen/Serum) "Serum specimen"
// * specimen[+] = Reference(Specimen/Blood)