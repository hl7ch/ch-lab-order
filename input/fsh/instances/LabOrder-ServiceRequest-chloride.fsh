Instance: LabOrder-ServiceRequest-chloride
InstanceOf: ChLabOrderSRSingletest
Title: "CH LAB-ServiceRequest for Chloride"
Description: "Service Request for Chloride [Moles/volume] in Serum or Plasma"
Usage: #example
* id = "LabOrder-chloride"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-chloride-serum"

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
* code.coding[0] = $loinc#2075-0 "Chloride [Moles/volume] in Serum or Plasma"

// orderDetails: Additional order information
* orderDetail[0] = $v2-0119#NW "New order/service"
* orderDetail[=].text = "Order Control code"

* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannGruppenpraxis)
* reasonCode = $sct#90688005
* reasonCode.text = "Chronic renal failure syndrome (disorder)"
* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(Specimen/Serum) "Serum specimen"
// * specimen[+] = Reference(Specimen/Blood)