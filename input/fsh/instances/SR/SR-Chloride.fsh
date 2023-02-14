Instance: SR-Chloride
InstanceOf: ChLabOrderSR_labtest
Title: "LabOrder Service Request for Clinical Chemistry Tests"
Description: "Example for Service Request of Chloride in Serum"
Usage: #example
* id = "SR-Chloride"
* identifier[placerOrderIdentifier].type = V2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"

* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/Catalog/ActivityDefinition/procedure-chloride-serum"

// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = V2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-1234567"

* status = #active
* intent = #original-order
* category = CH-LAB-ORDER-servicerequest-categories#RequestForLabExam "Anforderung Laboruntersuchung"

// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Clinical Chemistry Tests ----
// * code.coding[0] = $loinc#2075-0 "Chloride [Moles/volume] in Serum or Plasma"
* code = $loinc#2075-0 "Chloride [Moles/volume] in Serum or Plasma"

// orderDetails: Additional order information, codeableConcept

* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannArztpraxis)
* reasonCode = $sct#723188008
* reasonCode.text = "Renal insufficiency (disorder)"
* insurance = Reference(HealthInsuranceCard)

// ---- Specimen ----
* specimen[0] = Reference(Specimen/Serum) "Serum specimen"
* specimen[+] = Reference(Specimen/Serum-capillary)
// * specimen[+] = Reference(Specimen/Blood)