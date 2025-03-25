Instance: 4-sepsis-ServiceRequestFollowUp   // Service request for Follow-Up
InstanceOf: ChLabOrderSR
Title: "CH LAB-ServiceRequest 4-sepsis Follow-Up"
Description: "Example for Service Request for Sepsis Investigation, with reflexed observation"
Usage: #example
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* basedOn = Reference(4-sepsis-ServiceRequestGrowth)

* requisition.type = $v2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.40"
* requisition.value = "ReqID-123456789123"
// code: what is being requested (procedure codes SNOMED CT, Test Codes LOINC)
* code.coding[+].code = #76346-6
* code.coding[=].system = $loinc
* code.coding[=].display = "Microorganism identified in Isolate by MS.MALDI-TOF"

// orderDetail: Additional order information
* orderDetail = $v2-0119#XO	"Change order/service request"

* status = #active
* intent = #original-order
* priority = #urgent
* subject = Reference(Patient/SaraSpeckmann)
* requester = Reference(HansHauserKantonsspital)
* reasonCode = $sct#870441004
* reasonCode.text = "Screening for sepsis (procedure)"
* insurance = Reference(HealthInsuranceCardSaraSpeckmann)

* specimen[+] = Reference(Specimen/Blood-bactec-plus-4-sepsis)
/*
* specimen[+] = Reference(Specimen/Blood-4-sepsis)
* specimen[+] = Reference(Specimen/Urine-4-sepsis)
*/

Instance: 4-sepsis-ServiceRequestMALDO-TOF   // Service request for C reactive protein
InstanceOf: ChLabOrderSR
Title: "CH LAB-ServiceRequest 4-sepsis MALDI-TOF, follow-up ServiceRequest"
Description: "Example for Service Request for Sepsis Investigation"
Usage: #example
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* basedOn = Reference(4-sepsis-ServiceRequest)
* status = #active
* intent = #original-order
* priority = #urgent
* subject = Reference(Patient/SaraSpeckmann)
* requester = Reference(HansHauserKantonsspital)
* reasonCode = $sct#870441004
* reasonCode.text = "Screening for sepsis (procedure)"
* insurance = Reference(HealthInsuranceCardSaraSpeckmann)

* code.coding[+].code = #76346-6
* code.coding[=].system = $loinc
* code.coding[=].display = "Microorganism identified in Isolate by MS.MALDI-TOF"
