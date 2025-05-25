Instance: ServiceRequestElectrolytesSerum
InstanceOf: ChLabOrderSR
Title: "CH LAB-Order SR Electrolytes in Serum"
Description: "Service Request as container for multiple Service Requests"
Usage: #example
* id = "service-request-electrolytes-serum"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[placerOrderIdentifier].value = "Y274589"
* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/ActivityDefinition/procedure-sodium-serum"
* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/ActivityDefinition/procedure-potassium-serum"
* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/ActivityDefinition/procedure-chloride-serum"

// This SR is part of panel
* basedOn[0] = Reference(ServiceRequestPanelExample)

* status = #active
* intent = #original-order
// * category = $sct#721963009 "Order (record artifact)"

* priority = #urgent
// code: what is being requested (procedure codes SNOMED CT, Test Codes LOINC)
* code = $loinc#26436-6 "Laboratory studies (set)"
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannGruppenpraxis)
* reasonCode = $sct#404223003
* reasonCode.text = "Deep venous thrombosis of lower extremity"
// * insurance = Reference(HealthInsuranceCardHansGuggindieluft)
* specimen[+] = Reference(Specimen/Serum) "Serum specimen"
// * specimen[+] = Reference(Specimen/Blood)