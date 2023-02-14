Instance: SR-Blood-Electrolytes
InstanceOf: ChLabOrderSRcontainer
Title: "LabOrder Service Request for Clinical Chemistry Tests"
Description: "Example for Service Request due to suspected deep vein thrombosis"
Usage: #example
* id = "SR-Electrolytes"
* identifier[placerOrderIdentifier].type = V2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"

* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/Catalog/PlanDefinition/panel-blood-electrolyte"

// What is being ordered 
// * basedOn = Reference(SR-example)
// ---- Electrolytes 1998 panel - Serum or Plasma ----
* basedOn = Reference(SR-Sodium)
* basedOn = Reference(SR-Potassium)
* basedOn = Reference(SR-Chloride)

// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = V2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-1234567"

* status = #active
* intent = #original-order
* category = CH-LAB-ORDER-servicerequest-categories#RequestForLabExam "Anforderung Laboruntersuchung"

// ---- Code, LOINC or SNOMED CT ----
// * code.coding[0] = SCT#20109005 "Electrolytes measurement, serum (procedure)"
// * code.coding[+] = $loinc#24326-1 "Electrolytes 1998 panel - Serum or Plasma"
* code = $loinc#24326-1 "Electrolytes 1998 panel - Serum or Plasma"

// orderDetails: Additional order information, codeableConcept
* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannArztpraxis)
* reasonCode = SCT#723188008
* reasonCode.text = "Renal insufficiency (disorder)"
* insurance = Reference(HealthInsuranceCard)

// ---- Specimen 
* specimen[0] = Reference(Specimen/Serum) "Serum specimen"
// * specimen[+] = Reference(Specimen/Blood)