Instance: LabOrder-ServiceRequest
InstanceOf: ChOrfServiceRequest
Title: "LabOrder Service Request for Clinical Chemistry Tests"
Description: "Example for Service Request due to suspected deep vein thrombosis"
Usage: #example
* id = "LabOrder"
* identifier[placerOrderIdentifier].type = V2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* basedOn[0] = Reference(LabOrder-ServiceRequest-hem)
* basedOn[+] = Reference(LabOrder-ServiceRequest-coag)
* basedOn[+] = Reference(LabOrder-ServiceRequest-cc)

* status = #active
* intent = #original-order
* category = CH-LAB-ORDER-servicerequest-categories#RequestForLabExam "Anforderung Laboruntersuchung"

// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Clinical Chemistry Tests ----
// * code.coding[0] = $loinc#1988-5 "C reactive protein [Mass/Volume] in Serum or Plasma"
// * code.coding[+] = $loinc#76485-2 "C reactive protein [Moles/volume] in Serum or Plasma"

// orderDetails: Additional order information, codeableConcept

* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannArztpraxis)
* reasonCode = SCT#404223003
* reasonCode.text = "Deep venous thrombosis of lower extremity"
* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(Specimen/Serum) "Serum specimen"
// * specimen[+] = Reference(Specimen/Blood)