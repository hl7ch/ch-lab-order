Instance: LabOrder-ServiceRequest-cc
InstanceOf: ChOrfServiceRequest
Title: "LabOrder Service Request for Clinical Chemistry Tests"
Description: "Example for Service Request due to suspected deep vein thrombosis"
Usage: #example
* id = "LabOrder-cc"
* identifier[placerOrderIdentifier].type = V2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"

* status = #active
* intent = #original-order
* category = CH-LAB-ORDER-servicerequest-categories#RequestForLabExam "Anforderung Laboruntersuchung"

// What is being ordered
// * basedOn = Reference(ActivityDefinition/procedure-blood-electrolyte)
// ---- Clinical Chemistry Tests ----
* code.coding[0] = LOINC#1988-5 "C reactive protein [Mass/Volume] in Serum or Plasma"
* code.coding[+] = LOINC#76485-2 "C reactive protein [Moles/volume] in Serum or Plasma"

// orderDetails: Additional order information, codeableConcept

* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannArztpraxis)
* reasonCode = SCT#404223003
* reasonCode.text = "Deep venous thrombosis of lower extremity"
* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(Specimen/Serum) "Serum specimen"
// * specimen[+] = Reference(Specimen/Blood)