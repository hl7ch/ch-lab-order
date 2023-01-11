Instance: SR-CreaClearance
InstanceOf: ChOrfServiceRequest
Title: "laborder Creatinin Clearance"
Description: "Service Request example for Creatinine-Clearance"
Usage: #example
* id = "CreaClearance"
* identifier[placerOrderIdentifier].type = V2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"

* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/Catalog/PlanDefinition/Creatinin-Clearance"

* status = #active
* intent = #original-order
* category = CH-LAB-ORDER-servicerequest-categories#RequestForLabExam "Anforderung Laboruntersuchung"
// code: what is being requested (procedure codes SNOMED CT, Test Codes LOINC), CodeableConcept
// code has an array of codings

// Hematology
// * code.coding[0] = LOINC#24360-0 "Hemoglobin and Hematocrit panel - Blood"
// * code.coding[+] = LOINC#43113-0 "Hemoglobin electrophoresis panel in Blood"
// * code.coding[+] = LOINC#57021-8 "CBC W Auto Differential panel - Blood"
// * code.coding[+] = LOINC#58410-2 "CBC panel - Blood by Automated count"
// * code.coding[+] = LOINC#57023-4 "Auto Differential panel - Blood"

// Coagulation
// * code.coding[+] = LOINC#55398-2 "Short Fibrin D-dimer FEU and DDU panel - Platelet poor plasma"
// * code.coding[+] = LOINC#38875-1 "INR in Platelet poor plasma or Blood by Coagulation assay"

// Chemistry
//* code.coding[+] = LOINC#1988-5 "C reactive protein [Mass/Volume] in Serum or Plasma"
//* code.coding[+] = LOINC#76485-2 "C reactive protein [Moles/volume] in Serum or Plasma"

// orderDetails: Additional order information, codeableConcept

* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannArztpraxis)
* reasonCode = SCT#404223003
* reasonCode.text = "Renal Insuffiency"
* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(Specimen/Serum) "Serum specimen"
* specimen[+] = Reference(Specimen/Blood)