Instance: LabOrder-ServiceRequest-coag
InstanceOf: ChOrfServiceRequest
Title: "LabOrder Service Request for Coagulation Tests"
Description: "Example for Service Request due to suspected deep vein thrombosis"
Usage: #example
* id = "LabOrder-coag"
* identifier[placerOrderIdentifier].type = V2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* status = #active
* intent = #original-order
* category = CH-LAB-ORDER-servicerequest-categories#RequestForLabExam "Anforderung Laboruntersuchung"

// ---- Coagulation Tests ----
* code.coding[0] = $loinc#55398-2 "Short Fibrin D-dimer FEU and DDU panel - Platelet poor plasma"
* code.coding[+] = $loinc#38875-1 "INR in Platelet poor plasma or Blood by Coagulation assay"

// orderDetails: Additional order information, codeableConcept

* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannArztpraxis)
* reasonCode = SCT#404223003
* reasonCode.text = "Deep venous thrombosis of lower extremity"
* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(Specimen/Serum) "Serum specimen"
* specimen[+] = Reference(Specimen/Blood-coag)