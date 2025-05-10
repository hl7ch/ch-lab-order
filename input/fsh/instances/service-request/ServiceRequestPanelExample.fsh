Instance: ServiceRequestPanelExample
InstanceOf: ChLabOrderSR
Title: "Service Request as container for multiple Service Requests"
Description: "CH LAB-ServiceRequest for Creatinine Clearance and Electrolytes in Serum"
Usage: #example
* id = "service-request-panel-example"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[placerOrderIdentifier].value = "123"

// ---- grouperID, must be repeated in all dependent SR ----
// * requisition.type = $v2-0203#PLAC "Placer Identifier"
// * requisition.system = "urn:oid:2.16.756.5.45"
// * requisition.value = "ReqID-1234567"

* status = #active
* intent = #original-order
// * category = $sct#721963009 "Order (record artifact)"

* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannGruppenpraxis)
* reasonCode = $sct#404223003
* reasonCode.text = "Deep venous thrombosis of lower extremity"
// * insurance = Reference(HealthInsuranceCardHansGuggindieluft)
* specimen[+] = Reference(Specimen/Serum) "Serum specimen"
// * specimen[+] = Reference(Specimen/Blood)