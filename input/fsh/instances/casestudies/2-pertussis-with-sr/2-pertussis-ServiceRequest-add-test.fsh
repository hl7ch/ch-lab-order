Instance: 2-pertussis-ServiceRequest-add-test
InstanceOf: ChLabOrderSR
Title: "CH LAB-ServiceRequest 2-pertussis additional test"
Description: "Service Requst for referral/order of Pertussis investigation, additional test"
Usage: #example
* id = "2-pertussis-service-request-add-test"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"

// this ServiceRequest replaces a previous Laboratory Service Request
* replaces = Reference(2-pertussis-ServiceRequest)

* status = #active
* intent = #original-order

// code: what has been requeste requested (procedure codes SNOMED CT, Test Codes LOINC)
* code.coding[0].system = $loinc
* code.coding[=].code = #58410-2
* code.coding[=].display = "CBC panel - Blood by Automated count"
* code.text = "Laboratory Order"
* code.coding[+].system = $loinc
* code.coding[=].code = #1988-5 
* code.coding[=].display = "C reactive protein [Mass/Volume] in Serum or Plasma"

// adding an additional Test, 2-pertussis-ServiceRequest is replaced
* code.coding[+].system = $loinc
* code.coding[=].code = #90441-7
* code.coding[=].display = "Bordetella pertussis and Bordetella parapertussis DNA panel - Nasopharynx"

* orderDetail.coding.code = #RP
* orderDetail.coding.system = $v2-0119
* orderDetail.coding.display = "Order/service replace request"
* orderDetail.text = "Order Control code"

* priority = #urgent
* subject = Reference(Patient/EmilKummer)
* requester = Reference(PeterPrestoGruppenpraxis)
* reasonCode = $sct#772146005
* reasonCode.text = "Pertussis suspected (situation)"
* insurance = Reference(HealthInsuranceCardEmilKummer)
* specimen[0] = Reference(Specimen/Throat-swab-2-pertussis)
* specimen[+] = Reference(Specimen/Blood-2-pertussis)
* specimen[+] = Reference(Specimen/Serum-2-pertussis)
