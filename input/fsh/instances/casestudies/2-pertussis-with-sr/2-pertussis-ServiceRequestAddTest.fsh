Instance: 2-pertussis-ServiceRequestAddTest
InstanceOf: ChLabOrderSR
Usage: #inline
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[placerOrderIdentifier].value = "Y274589"
// * basedOn = Reference(2-pertussis-ServiceRequest)
* basedOn = Reference(2-pertussis-ServiceRequest)
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
// * insurance = Reference(HealthInsuranceCardEmilKummer)
* specimen[+] = Reference(Specimen/ThroatSwab-2-pertussis)
