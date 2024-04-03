Instance: 2-pertussis-ServiceRequest-add-test
InstanceOf: ChLabOrderSR
Title: "CH LAB-ServiceRequest 2-pertussis additional test"
Description: "Service Requst for referral/order of Pertussis investigation, additional test"
Usage: #example
* id = "2-pertussis-service-request-add-test"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"

// this ServiceRequest adds an examination of the throat-swab looking for pertussis

* replaces = Reference(2-pertussis-ServiceRequest)

* status = #active
* intent = #original-order
// * category = $sct#721963009 "Order (record artifact)"
// code: what is being requested (procedure codes SNOMED CT, Test Codes LOINC)
* code.coding[0] = $loinc#58410-2 "CBC panel - Blood by Automated count"
* code.coding[+] = $loinc#1988-5 "C reactive protein [Mass/Volume] in Serum or Plasma"

// adding an additional Test, 2-pertussis-ServiceRequest is replaced
* code.coding[+] = $loinc#90441-7 "Bordetella pertussis and Bordetella parapertussis DNA panel - Nasopharynx"

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
