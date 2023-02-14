Instance: 0-generic-ServiceRequest
InstanceOf: ChOrfServiceRequest
Title: "laborder 0-generic"
Description: "Example for Service Request due to suspected deep vein thrombosis"
Usage: #example
* id = "0-generic"
* identifier[placerOrderIdentifier].type = V2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* status = #active
* intent = #original-order
* category = CH-LAB-ORDER-servicerequest-categories#RequestForLabExam "Anforderung Laboruntersuchung"
// code: what is being requested (procedure codes SNOMED CT, Test Codes LOINC), CodeableConcept
// code has an array of codings

// Hematology
* code.coding[0] = $loinc#24360-0 "Hemoglobin and Hematocrit panel - Blood"
* code.coding[+] = $loinc#43113-0 "Hemoglobin electrophoresis panel in Blood"
// * code.coding[+] = $loinc#57021-8 "CBC W Auto Differential panel - Blood"
// * code.coding[+] = $loinc#58410-2 "CBC panel - Blood by Automated count"
// * code.coding[+] = $loinc#57023-4 "Auto Differential panel - Blood"

// Coagulation
* code.coding[+] = $loinc#55398-2 "Short Fibrin D-dimer FEU and DDU panel - Platelet poor plasma"
* code.coding[+] = $loinc#38875-1 "INR in Platelet poor plasma or Blood by Coagulation assay"

// Chemistry
* code.coding[+] = $loinc#1988-5 "C reactive protein [Mass/Volume] in Serum or Plasma"
* code.coding[+] = $loinc#76485-2 "C reactive protein [Moles/volume] in Serum or Plasma"

// orderDetails: Additional order information, codeableConcept

* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannArztpraxis)
* reasonCode = $sct#404223003
* reasonCode.text = "Deep venous thrombosis of lower extremity"
* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(Specimen/Serum) "Serum specimen"
* specimen[+] = Reference(Specimen/Blood)