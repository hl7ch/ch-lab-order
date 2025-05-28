Instance: 4-sepsis-ServiceRequest
InstanceOf: ChLabOrderSR
Title: "CH LAB-ServiceRequest 4-sepsis"
Description: "Example for Service Request for Sepsis Investigation"
Usage: #example
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[placerOrderIdentifier].value = "Y274589"
// * category = $sct#721963009 "Order (record artifact)"

* status = #active
* intent = #original-order
* priority = #urgent

// code: what is being requested (procedure codes SNOMED CT, Test Codes LOINC)
// * code = $loinc#26436-6 "Laboratory studies (set)"
* code = $loinc#26436-6 "Laboratory studies (set)"
* subject = Reference(Patient/SaraSpeckmann)
* requester = Reference(HansHauserKantonsspital)
* reasonCode = $sct#447931005 "Clinical sepsis (disorder)"
* reasonCode.text = "Clinical sepsis"
// * insurance = Reference(HealthInsuranceCardSaraSpeckmann)
/*
Specimen are not defined here, but in the respective sub-serviceRequast instances
* specimen[+] = Reference(Specimen/4-sepsis-Blood-bactec-plus)
* specimen[+] = Reference(Specimen/4-sepsis-Blood)
* specimen[+] = Reference(Specimen/Urine-4-sepsis)
*/

/*
Instance: 4-sepsis-ServiceRequestHbHt   // Service request for Hemoglobin and Hematocrit
InstanceOf: ChLabOrderSR
Title: "CH LAB-ServiceRequest 4-sepsis Hemoglobine and Hematocrit"
Description: "Example for Service Request for Sepsis Investigation, Hemoglobin and Hematocrit"
Usage: #example
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[placerOrderIdentifier].value = "Y274589"
* basedOn = Reference(4-sepsis-ServiceRequest)

// code: what is being requested (procedure codes SNOMED CT, Test Codes LOINC)
* code.coding[+].code = #24360-0 
* code.coding[=].system = $loinc
* code.coding[=].display = "Hemoglobin and Hematocrit panel - Blood"

* status = #active
* intent = #original-order
* priority = #urgent
* subject = Reference(Patient/SaraSpeckmann)
* requester = Reference(HansHauserKantonsspital)
* reasonCode = $sct#447931005 "Clinical sepsis (disorder)"
* reasonCode.text = "Clinical sepis"
// * insurance = Reference(HealthInsuranceCardSaraSpeckmann)
* specimen[+] = Reference(Specimen/4-sepsis-Blood)
*/

Instance: 4-sepsis-ServiceRequestCBCDiff
InstanceOf: ChLabOrderSR
Title: "CH LAB-ServiceRequest 4-sepsis CBC with Differential"
Description: "Example for Service Request for Sepsis Investigation, CBC with Differential"
Usage: #example
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[placerOrderIdentifier].value = "Y274589"
* basedOn = Reference(4-sepsis-ServiceRequest)

// code: what is being requested (procedure codes SNOMED CT, Test Codes LOINC)
* code.coding[+].code = #57021-8 
* code.coding[=].system = $loinc
* code.coding[=].display = "CBC W Auto Differential panel - Blood"

* status = #active
* intent = #original-order
* priority = #urgent
* subject = Reference(Patient/SaraSpeckmann)
* requester = Reference(HansHauserKantonsspital)
* reasonCode = $sct#447931005 "Clinical sepsis (disorder)"
* reasonCode.text = "Clinical sepis"
// * insurance = Reference(HealthInsuranceCardSaraSpeckmann)
* specimen[+] = Reference(Specimen/4-sepsis-Blood)

Instance: 4-sepsis-ServiceRequestGrowth
InstanceOf: ChLabOrderSR
Title: "CH LAB-ServiceRequest 4-sepsis microbiological growth in  blood culture"
Description: "Example for Service Request for Sepsis Investigation"
Usage: #example
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[placerOrderIdentifier].value = "Y274589"
* basedOn = Reference(4-sepsis-ServiceRequest)

// * requisition.type = $v2-0203#PLAC "Placer Identifier"
// * requisition.system = "urn:oid:2.16.756.5.45"
// * requisition.value = "ReqID-123456789123"

// code: what is being requested (procedure codes SNOMED CT, Test Codes LOINC)
* code.coding[+].code = #90423-5
* code.coding[=].system = $loinc
* code.coding[=].display = "Microorganism preliminary growth detection panel - Blood by Culture"

// orderDetailc: Additional order information
* orderDetail = $v2-0119#NW "New order/service"

* status = #active
* intent = #original-order
* priority = #urgent
* subject = Reference(Patient/SaraSpeckmann)
* requester = Reference(HansHauserKantonsspital)
* reasonCode = $sct#447931005 "Clinical sepsis (disorder)"
* reasonCode.text = "Clinical sepis"
// * insurance = Reference(HealthInsuranceCardSaraSpeckmann)
* specimen[+] = Reference(Specimen/4-sepsis-Blood-bactec-plus)

Instance: 4-sepsis-ServiceRequestCRP   // Service request for C reactive protein
InstanceOf: ChLabOrderSR
Title: "CH LAB-ServiceRequest 4-sepsis C reactive protein"
Description: "Example for Service Request for Sepsis Investigation, C reactive protein"
Usage: #example
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[placerOrderIdentifier].value = "Y274589"
* basedOn = Reference(4-sepsis-ServiceRequest)
* code.coding[+].code = #1988-5 
* code.coding[=].system = $loinc
* code.coding[=].display = "C reactive protein [Mass/Volume] in Serum or Plasma"

* status = #active
* intent = #original-order
* priority = #urgent
* subject = Reference(Patient/SaraSpeckmann)
* requester = Reference(HansHauserKantonsspital)
* reasonCode = $sct#447931005 "Clinical sepsis (disorder)"
* reasonCode.text = "Clinical sepis"
// * insurance = Reference(HealthInsuranceCardSaraSpeckmann)
* specimen[+] = Reference(Specimen/4-sepsis-Serum)

Instance: SaraSpeckmann
InstanceOf: CHCorePatient
Title: "Patient Sara Speckmann"
Description: "CH-Core-Patient, refers to 4-sepsis"
Usage: #example
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>id</b>: SaraSpeckmann\n      </p><p><b>meta</b>: \n      </p><p><b>identifier</b>: 80756011110123400006\n      </p><p><b>name</b>: Sara Speckmann\n      </p><p><b>gender</b>: FEMALE\n      </p><p><b>birthDate</b>: Dec 12, 1975\n      </p><p><b>maritalStatus</b>: verheiratet \n        <span style=\"background: LightGoldenRodYellow\">(Details : {$ech-11-maritalstatus code '2' = '2', given as 'verheiratet'})</span></p><h3>Communications</h3><table class=\"grid\"><tr><td>-</td><td><b>Language</b></td><td><b>Preferred</b></td></tr><tr><td>*</td><td>Deutsch (Schweiz) \n            <span style=\"background: LightGoldenRodYellow\">(Details : {urn:ietf:bcp:47 code 'de-CH' = 'German (Region=Schweiz))</span></td><td>true</td></tr></table></div>"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.city = "Aarau"
* extension[=].valueAddress.country = "Schweiz"
* extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient-ech-11-placeoforigin"
* extension[=].valueAddress.city = "Lenzburg"
* extension[=].valueAddress.state = "AG"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-religion"
* extension[=].valueCodeableConcept = $religiousAffiliation#1025 "Jehovah's Witnesses"
// * identifier.type = $v2-0203#MR
* identifier[insuranceCardNumber].system = "urn:oid:2.16.756.5.30.1.123.100.1.1.1"
* identifier[insuranceCardNumber].value = "80756011110123400006"
* name.family = "Speckmann"
* name.given = "Sara"
* telecom[0].system = #phone
* telecom[=].value = "+41 64 888 45 67"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "sara.speckmann@example.ch"
* gender = #female
* birthDate = "1975-12-12"
* maritalStatus = $ech-11-maritalstatus#2 "verheiratet"
* communication.language = urn:ietf:bcp:47#de-CH
* communication.language.text = "Deutsch (Schweiz)"
* communication.preferred = true

/*
Instance: HealthInsuranceCardSaraSpeckmann
InstanceOf: CHCoreCoverage
Title: "Covarage HealthInsuranceCard Sarah Speckmann"
Description: "Example for Insurance"
Usage: #example
* identifier[insuranceCardNumber].system = "urn:oid:2.16.756.5.30.1.123.100.1.1.1"
* identifier[insuranceCardNumber].value = "80756011110123400006"
* status = #active
* type = $coverage-type#1 "Krankenversicherung (obligat.)"
* subscriber = Reference(Patient/SaraSpeckmann)
* beneficiary = Reference(Patient/SaraSpeckmann)
* period.end = "2024-12-31"
* payor.identifier.system = "http://example.org/insurer"
* payor.identifier.value = "123456789"
*/

Instance: 4-sepsis-Blood-bactec-plus
InstanceOf: Specimen
Title: "Blood Collection in Blood Culture Bottles, 4-sepsis"
Description: "Example for specimen for aerobic and anaerobic blood culture"
Usage: #example
* status = #available
* type = $sct#119297000 "Blood sample"
* subject = Reference(Patient/SaraSpeckmann)
* request = Reference(ServiceRequest/4-sepsis-ServiceRequest)
* collection.collector = Reference(Practitioner/HansHauser)
* collection.collectedPeriod.start = "2025-03-16T06:20:17Z"
* collection.collectedPeriod.end = "2025-03-16T06:50:17Z"
* collection.bodySite = $sct#721029009 "Structure of superficial vein of left upper limb (body structure)"

// 2 types of containers, aerobic and anaerobic, each with a different cap color and identifier

// 2 aerobic blood culture bottles
* container[+].identifier.value = "95ab0fb1-6d1c-40f0-9aaa-a68f29238a4e-bactec-plus"
* container[=].type = $sct#767385003 "Aerobic blood culture bottle (physical object)"
* container[=].description = "Two BACTEC™ PLUS Aerobic/F Culture Vial, cap color: grey-blue"

// 2 anaerobic blood culture bottles
* container[+].identifier.value = "92af0fee-1aeb-472e-8b57-a885ba33b745-bactec-plus"
* container[=].type = $sct#767383005 "Anaerobic blood culture bottle (physical object)"
* container[=].description = "Two BACTEC™ PLUS Anaerobic/F Culture Vial, cap color: purple"

* note.text = "Each container type contains two blood samples taken 30 minutes apart, so we get 4 vials in total"

Instance: 4-sepsis-Blood
InstanceOf: Specimen
Title: "Blood Sample, 4-sepsis"
Description: "Example for Specimen for Haematological Examination"
Usage: #example
* status = #available
* type = $sct#119297000 "Blood sample"
* subject = Reference(Patient/SaraSpeckmann)
* request = Reference(ServiceRequest/4-sepsis-ServiceRequest)
* collection.collector = Reference(Practitioner/HansHauser)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* collection.bodySite = $sct#721029009 "Structure of superficial vein of left upper limb (body structure)"
* container.type = $sct#706053007 "General specimen container (physical object)"
* note.text = "Specimen is grossly lipemic"

Instance: 4-sepsis-Serum
InstanceOf: Specimen
Title: "Serum Sample, 4-sepsis"
Description: "Example for Specimen of Serum"
Usage: #example
* identifier.value = "11111-15394-75465"
* accessionIdentifier.value = "22222-bc987-dd888"
* status = #available
* type = $sct#119364003 "Serum specimen (specimen)"
* subject = Reference(Patient/SaraSpeckmann)
* receivedTime = "2023-12-01T16:40:17Z"
* request = Reference(ServiceRequest/4-sepsis-ServiceRequest)
* collection.collector = Reference(Practitioner/HansHauser)
* collection.collectedDateTime = "2023-12-01T06:40:17Z"
* container.type = $sct#706053007 "General specimen container (physical object)"

Instance: Urine-4-sepsis
InstanceOf: Specimen
Title: "Urine Sample, 4-sepsis"
Description: "Example for Specimen of Urin"
Usage: #example
* identifier.value = "11111-15394-75465"
* accessionIdentifier.value = "22222-bc987-dd888"
* status = #available
* type = $sct#122575003 "Urine sample"
* subject = Reference(Patient/SaraSpeckmann)
* receivedTime = "2023-12-01T16:40:17Z"
* request = Reference(ServiceRequest/4-sepsis-ServiceRequest)
* collection.collector = Reference(Practitioner/HansHauser)
* collection.collectedDateTime = "2023-12-01T06:40:17Z"
* container.identifier.value = "659e1c5b-5c5a-4829-b7fa-fb7da2276e0d-urin"
* container.description = "Uriswab™ : Urine Collection System"
* container.type = $sct#706054001 "Urine specimen container (physical object)"
