Instance: 2-pertussis-ServiceRequestAddTest
InstanceOf: ChLabOrderSR
Title: "CH LAB-ServiceRequest 2-pertussis additional test"
Description: "Service Requst for referral/order of Pertussis investigation, additional test"
Usage: #example
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* basedOn = Reference(2-pertussis-ServiceRequest)
// * extension.url = "http://terminology.hl7.org/CodeSystem/v2-0119"
// * extension.valueCode = #XO
// this ServiceRequest replaces a previous Laboratory Service Request
// * replaces = Reference(2-pertussis-ServiceRequest)

* status = #active
* intent = #order

// adding an additional Test, 2-pertussis-ServiceRequest is replaced
* code.coding[+].system = $loinc
* code.coding[=].code = #90441-7
* code.coding[=].display = "Bordetella pertussis and Bordetella parapertussis DNA panel - Nasopharynx"

* orderDetail.coding.code = #XO
* orderDetail.coding.system = $v2-0119
* orderDetail.coding.display = "Change order/service request"
* orderDetail.text = "Order Control code, change order/service request"

* priority = #urgent
* subject = Reference(Patient/EmilKummer)
* requester = Reference(PeterPrestoGruppenpraxis)
* reasonCode = $sct#772146005
* reasonCode.text = "Pertussis suspected (situation)"
* insurance = Reference(HealthInsuranceCardEmilKummer)
* specimen[+] = Reference(Specimen/ThroatSwab-2-pertussis)
// * specimen[+] = Reference(Specimen/Blood-2-pertussis)
// * specimen[+] = Reference(Specimen/Serum-2-pertussis)
