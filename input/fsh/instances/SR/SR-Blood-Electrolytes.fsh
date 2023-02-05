Instance: SR-Blood-Electrolytes
InstanceOf: ChOrfServiceRequest
Title: "LabOrder Service Request for Clinical Chemistry Tests"
Description: "Example for Service Request due to suspected deep vein thrombosis"
Usage: #example
* id = "SR-Electrolytes"
* identifier[placerOrderIdentifier].type = V2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"

* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/Catalog/PlanDefinition/panel-blood-electrolyte"

// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = V2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-1234567"

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

// What is being ordered
// * basedOn = Reference(ActivityDefinition/procedure-blood-electrolyte)
// ---- Electrolytes 1998 panel - Serum or Plasma ----
* code.coding[0] = LOINC#2951-2 "Sodium [Moles/volume] in Serum or Plasma"
* code.coding[+] = LOINC#2823-3 "Potassium [Moles/volume] in Serum or Plasma"
* code.coding[+] = LOINC#2075-0 "Chloride [Moles/volume] in Serum or Plasma"

// orderDetails: Additional order information, codeableConcept

* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannArztpraxis)
* reasonCode = SCT#723188008
* reasonCode.text = "Renal insufficiency (disorder)"
* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(Specimen/Serum) "Serum specimen"
// * specimen[+] = Reference(Specimen/Blood)