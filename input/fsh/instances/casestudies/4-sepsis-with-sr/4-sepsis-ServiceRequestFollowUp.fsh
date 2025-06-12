Instance: 4-sepsis-ServiceRequestFollowUp   // Service request for Follow-Up
InstanceOf: ChLabOrderSR
Title: "CH LAB-ServiceRequest 4-sepsis Follow-Up"
Description: "Example for Service Request for Sepsis Investigation, with reflexed observation"
Usage: #example
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[placerOrderIdentifier].value = "Y274589"
* basedOn = Reference(4-sepsis-ServiceRequestGrowth)

// * requisition.type = $v2-0203#PLAC "Placer Identifier"
// * requisition.system = "urn:oid:2.16.756.5.45"
// * requisition.value = "ReqID-123456789123"
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
* reasonCode = $sct#447931005 "Clinical sepsis (disorder)"
* reasonCode.text = "Clinical sepis"
// * insurance = Reference(HealthInsuranceCardSaraSpeckmann)
* specimen[+] = Reference(Specimen/4-sepsis-Blood-bactec-plus-aerobic) "Blood Collection in Blood Culture Bottles, 4-sepsis, aerobic"
* specimen[=] = Reference(Specimen/4-sepsis-Blood-bactec-plus-anaerobic) "Blood Collection in Blood Culture Bottles, 4-sepsis, anaerobic"
/*
* specimen[+] = Reference(Specimen/4-sepsis-Blood)
* specimen[+] = Reference(Specimen/4-sepsis-Urine)
*/

Instance: 4-sepsis-ServiceRequestMALDi-TOF   // Service request for C reactive protein
InstanceOf: ChLabOrderSR
Title: "CH LAB-ServiceRequest 4-sepsis MALDI-TOF, follow-up ServiceRequest"
Description: "Example for Service Request for Sepsis Investigation"
Usage: #example
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[placerOrderIdentifier].value = "Y274589"
* basedOn = Reference(4-sepsis-ServiceRequest)
* status = #active
* intent = #original-order
* priority = #urgent
* subject = Reference(Patient/SaraSpeckmann)
* requester = Reference(HansHauserKantonsspital)
* reasonCode = $sct#447931005 "Clinical sepsis (disorder)"
* reasonCode.text = "Clinical sepis"
// * insurance = Reference(HealthInsuranceCardSaraSpeckmann)

* code.coding[+].code = #76346-6
* code.coding[=].system = $loinc
* code.coding[=].display = "Microorganism identified in Isolate by MS.MALDI-TOF"
