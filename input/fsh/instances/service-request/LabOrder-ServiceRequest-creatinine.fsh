Instance: LabOrder-ServiceRequest-creatinine
InstanceOf: ChLabOrderSRSingletest
Title: "CH LAB-ServiceRequest for Serum Creatinine"
Description: "Service Request for Creatinine [Moles/volume] in Serum or Plasma"
Usage: #example
* id = "LabOrder-creatinine"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-serum-creatinine"

// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-1234567"

* status = #active
* intent = #original-order
// * category = $sct#721963009 "Order (record artifact)"

// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Clinical Chemistry Tests ----
* code.coding.code = #14682-9 
* code.coding.system = $loinc
* code.coding.display = "Creatinine [Moles/volume] in Serum or Plasma"

// orderDetails: Additional order information
// * orderDetail.coding = $v2-0119#NW "New order/service"

* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannGruppenpraxis)
* reasonCode = $sct#90688005
* reasonCode.text = "Chronic renal failure syndrome (disorder)"
* insurance = Reference(HealthInsuranceCard)
* specimen[+] = Reference(Specimen/Serum) "Serum specimen"
// * specimen[+] = Reference(Specimen/Blood)