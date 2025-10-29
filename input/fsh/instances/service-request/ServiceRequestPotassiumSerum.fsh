Instance: ServiceRequestPotassiumSerum
InstanceOf: ChLabOrderSR
Title: "CH LAB-Order SR Potassium"
Description: "Service Request for Potassium [Moles/volume] in Serum or Plasma"
Usage: #example
* id = "service-request-potassium-serum"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[placerOrderIdentifier].value = "Y274589"

// is part of panel Serum-Electrolytes
* basedOn = Reference(ServiceRequestElectrolytesSerum)

// ---- grouperID, must be repeated in all dependent SR ----
// * requisition.type = $v2-0203#PLAC "Placer Identifier"
// * requisition.system = "urn:oid:2.16.756.5.45"
// * requisition.value = "ReqID-1234567"

* status = #active
* intent = #original-order
// * category = $sct#721963009 "Order (record artifact)"

// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Clinical Chemistry Tests ----
* code.coding.code = #2823-3 
* code.coding.system = $loinc
* code.coding.display = "Potassium [Moles/volume] in Serum or Plasma"

// orderDetails: Additional order information
// * orderDetail.coding = $v2-0119#NW "New order/service"


* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannGruppenpraxis)
* reasonCode = $sct#90688005
* reasonCode.text = "Chronic renal failure syndrome (disorder)"
// * insurance = Reference(HealthInsuranceCardHansGuggindieluft)
* specimen[+] = Reference(Specimen/Serum) "Serum specimen"
// * specimen[+] = Reference(Specimen/Blood)