Instance: 4-sepsis-ServiceRequest
InstanceOf: ChLabOrderSR
Title: "CH LAB-ServiceRequest 4-sepsis"
Description: "Example for Service Request for Sepsis Investigation"
Usage: #example
* id = "4-sepsis-service-request"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
// * category = $sct#721963009 "Order (record artifact)"

// code: what is being requested (procedure codes SNOMED CT, Test Codes LOINC)
* code.coding[+].code = #24360-0 
* code.coding[=].system = $loinc
* code.coding[=].display = "Hemoglobin and Hematocrit panel - Blood"

* code.coding[+].code = #43113-0 
* code.coding[=].system = $loinc
* code.coding[=].display = "Hemoglobin electrophoresis panel in Blood"

* code.coding[+].code = #57021-8 
* code.coding[=].system = $loinc
* code.coding[=].display = "CBC W Auto Differential panel - Blood"

* code.coding[+].code = #58410-2 
* code.coding[=].system = $loinc
* code.coding[=].display = "CBC panel - Blood by Automated count"


* code.coding[+].code = #90423-5
* code.coding[=].system = $loinc
* code.coding[=].display = "Microorganism preliminary growth detection panel - Blood by Culture"

* code.coding[+].code = #85421-6 
* code.coding[=].system = $loinc
* code.coding[=].display = "Bacterial identification and susceptibility panel - Isolate"

* code.coding[+].code = #1988-5 
* code.coding[=].system = $loinc
* code.coding[=].display = "C reactive protein [Mass/Volume] in Serum or Plasma"

// orderDetails: Additional order information
// * orderDetail = $v2-0119#NW "New order/service"

* status = #active
* intent = #original-order
* priority = #urgent
* subject = Reference(Patient/SaraSpeckmann)
* requester = Reference(HansHauserKantonsspital)
* reasonCode = $sct#870441004
* reasonCode.text = "Screening for sepsis (procedure)"
* insurance = Reference(HealthInsuranceCardSaraSpeckmann)
* specimen[+] = Reference(Specimen/Blood-bactec-plus)
* specimen[+] = Reference(Specimen/Blood-sepsis)
* specimen[+] = Reference(Specimen/Urine-sepsis)

Instance: SaraSpeckmann
InstanceOf: CHCorePatient
Title: "Patient Sara Speckmann"
Description: "CH-Core-Patient, refers to 4-sepsis"
Usage: #example
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>id</b>: SaraSpeckmann\n      </p><p><b>meta</b>: \n      </p><p><b>identifier</b>: 012/08.111114\n      </p><p><b>name</b>: Sara Speckmann\n      </p><p><b>gender</b>: FEMALE\n      </p><p><b>birthDate</b>: Dec 12, 1975\n      </p><p><b>maritalStatus</b>: verheiratet \n        <span style=\"background: LightGoldenRodYellow\">(Details : {$ech-11-maritalstatus code '2' = '2', given as 'verheiratet'})</span></p><h3>Communications</h3><table class=\"grid\"><tr><td>-</td><td><b>Language</b></td><td><b>Preferred</b></td></tr><tr><td>*</td><td>Deutsch (Schweiz) \n            <span style=\"background: LightGoldenRodYellow\">(Details : {urn:ietf:bcp:47 code 'de-CH' = 'German (Region=Schweiz))</span></td><td>true</td></tr></table></div>"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.city = "Aarau"
* extension[=].valueAddress.country = "Schweiz"
* extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient-ech-11-placeoforigin"
* extension[=].valueAddress.city = "Lenzburg"
* extension[=].valueAddress.state = "AG"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-religion"
* extension[=].valueCodeableConcept = $religiousAffiliation#1025 "Jehovah's Witnesses"
* identifier.type = $v2-0203#MR
* identifier.system = "urn:oid:2.16.756.5.30.999999.4"
* identifier.value = "012/08.111114"
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

Instance: HealthInsuranceCardSaraSpeckmann
InstanceOf: ChOrfCoverage
Title: "Covarage HealthInsuranceCard Sarah Speckmann"
Description: "Example for Insurance"
Usage: #example
* identifier.type = $coverage-identifiertype#VeKa
* identifier.system = "http://ehic.com/insurer/123456789/member"
* identifier.value = "A123456780"
* status = #active
* type = $coverage-type#KVG "According to KVG"
* subscriber = Reference(Patient/SaraSpeckmann)
* beneficiary = Reference(Patient/SaraSpeckmann)
* period.end = "2024-12-31"
* payor.identifier.system = "http://ehic.com/insurer"
* payor.identifier.value = "123456789"

Instance: Blood-bactec-plus
InstanceOf: Specimen
Title: "Blood Sample, 4-sepsis bactec-plus"
Description: "Example for Specimen for Haematological Examination"
Usage: #example
* status = #available
* type = $sct#119297000 "Blood sample"
* subject = Reference(Patient/SaraSpeckmann)
* request = Reference(ServiceRequest/4-sepsis-service-request)
* collection.collector = Reference(Practitioner/HansHauser)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* collection.bodySite = $sct#721029009 "Structure of superficial vein of left upper limb (body structure)"
* container.type = $sct#706053007 "General specimen container (physical object)"
* note.text = "Specimen is grossly lipemic"

Instance: Blood-sepsis
InstanceOf: Specimen
Title: "Blood Sample, 4-sepsis"
Description: "Example for Specimen for Haematological Examination"
Usage: #example
* status = #available
* type = $sct#119297000 "Blood sample"
* subject = Reference(Patient/SaraSpeckmann)
* request = Reference(ServiceRequest/4-sepsis-service-request)
* collection.collector = Reference(Practitioner/HansHauser)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* collection.bodySite = $sct#721029009 "Structure of superficial vein of left upper limb (body structure)"
* container.type = $sct#706053007 "General specimen container (physical object)"
* note.text = "Specimen is grossly lipemic"

Instance: Urine-sepsis
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
* request = Reference(ServiceRequest/4-sepsis-service-request)
* collection.collector = Reference(Practitioner/HansHauser)
* collection.collectedDateTime = "2023-12-01T06:40:17Z"
* container.identifier.value = "4e88a-bc987-dd888-12345-urin"
* container.description = "Uriswab™ : Urine Collection System"
* container.type = $sct#706054001 "Urine specimen container (physical object)"