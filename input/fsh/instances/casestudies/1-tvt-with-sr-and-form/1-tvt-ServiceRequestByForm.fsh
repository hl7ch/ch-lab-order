Instance: 1-tvt-ServiceRequestByForm
InstanceOf: ChOrfServiceRequest
Title: "Service Request by Form 1-tvt"
Description: "Example for Service Request due to suspected deep vein thrombosis"
Usage: #example
* id = "1-tvt-service-request-by-form"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* status = #active
* intent = #original-order
* category = $sct#721963009 "Order (record artifact)"
// code: what is being requested (procedure codes SNOMED CT, Test Codes LOINC)
* code.coding[0] = $loinc#24360-0 "Hemoglobin and Hematocrit panel - Blood"
* code.coding[+] = $loinc#43113-0 "Hemoglobin electrophoresis panel in Blood"
* code.coding[+] = $loinc#57021-8 "CBC W Auto Differential panel - Blood"
* code.coding[+] = $loinc#58410-2 "CBC panel - Blood by Automated count"
* code.coding[+] = $loinc#57023-4 "Auto Differential panel - Blood"
* code.coding[+] = $loinc#55398-2 "Short Fibrin D-dimer FEU and DDU panel - Platelet poor plasma"
* code.coding[+] = $loinc#1988-5 "C reactive protein [Mass/Volume] in Serum or Plasma"
// orderDetails: Additional order information

* priority = #urgent
* subject = Reference(Patient/TobiasTimmermann)
* requester = Reference(MarcMustermannGruppenpraxis)
* reasonCode = $sct#404223003
* reasonCode.text = "Deep venous thrombosis of lower extremity"
* insurance = Reference(HealthInsuranceCardTobiasTimmermann)
* supportingInfo = Reference(Condition/ConditionTobiasTimmermann)
* specimen[0] = Reference(Specimen/Serum-1-tvt) "Serum specimen"
* specimen[+] = Reference(Specimen/Blood-coag-1-tvt)
* specimen[+] = Reference(Specimen/Blood-1-tvt)







