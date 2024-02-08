Instance: LabOrder-ServiceRequest-electrolytes
InstanceOf: ChLabOrderSRContainer
Title: "CH LAB Service Request for Electrolytes in Serum"
Description: "Example for Service Request as container for multiple Service Requests"
Usage: #example
* id = "LabOrder-electrolytes"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-sodium-serum"
* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-potassium-serum"
* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-chloride-serum"

// der SR referenziert auf 3 weitere SR
* basedOn[0] = Reference(LabOrder-ServiceRequest-sodium)
* basedOn[+] = Reference(LabOrder-ServiceRequest-potassium)
* basedOn[+] = Reference(LabOrder-ServiceRequest-chloride)

// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-1234567"

* status = #active
* intent = #original-order
* category = $sct#721963009 "Order (record artifact)"

* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannGruppenpraxis)
* reasonCode = $sct#404223003
* reasonCode.text = "Deep venous thrombosis of lower extremity"
* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(Specimen/Serum) "Serum specimen"
// * specimen[+] = Reference(Specimen/Blood)