Instance: SR-CreaClearance
InstanceOf: ChOrfServiceRequest
Title: "laborder Creatinin Clearance"
Description: "Service Request example for Creatinine-Clearance"
Usage: #example
* id = "CreaClearance"
* identifier[placerOrderIdentifier].type = V2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"

* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/Catalog/PlanDefinition/Creatinine-Clearance"

// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Creatinine Clearance Serum ----
// 
* basedOn = Reference(SR-Creatinine-Serum)
* basedOn = Reference(SR-Creatinine-24h-Urine)

// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = V2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-1234567"

* status = #active
* intent = #original-order
* category = CH-LAB-ORDER-servicerequest-categories#RequestForLabExam "Anforderung Laboruntersuchung"

// ---- Code, LOINC or SNOMED CT ----
* code.coding = SCT#167181009 "Measurement of renal clearance of creatinine (procedure)"
* code.coding[+] = LOINC#34555-3 "Creatinine 24H renal clearance panel"

// orderDetails: Additional order information, codeableConcept
* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannArztpraxis)
* reasonCode = SCT#723188008
* reasonCode.text = "Renal insufficiency (disorder)"
* insurance = Reference(HealthInsuranceCard)

// ---- Specimen: Serum, Urine
* specimen[0] = Reference(Specimen/Serum) "Serum specimen"
* specimen[+] = Reference(Specimen/Blood)
* specimen[+] = Reference(Specimen/Urine)