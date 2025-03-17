Instance: ServiceRequestSodiumSerum
InstanceOf: ChLabOrderSR
Title: "CH LAB-ServiceRequest for Sodium"
Description: "Service Request for Sodium [Moles/volume] in Serum or Plasma"
Usage: #example
* id = "service-request-sodium-serum"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-sodium-serum"

// is part of panel 
* basedOn = Reference(ServiceRequestElectrolytesSerum)
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
* code.coding.code = #2951-2 
* code.coding.system = $loinc
* code.coding.display = "Sodium [Moles/volume] in Serum or Plasma"

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