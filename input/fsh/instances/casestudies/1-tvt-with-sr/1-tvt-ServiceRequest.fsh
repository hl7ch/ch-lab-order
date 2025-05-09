Instance: 1-tvt-ServiceRequest-0
InstanceOf: ChLabOrderSR
Title: "CH LAB-ServiceRequest 1-tvt"
Description: "Example for Service Request due to suspected deep vein thrombosis"
Usage: #example

* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"

// * basedOn = Reference(1-tvt-ServiceRequest-1)   // CBC
// * basedOn = Reference(1-tvt-ServiceRequest-2)   // CBC diff
// * basedOn = Reference(1-tvt-ServiceRequest-3)   // D-Dimer
// * basedOn = Reference(1-tvt-ServiceRequest-4)   // CRP
// * basedOn = Reference(1-tvt-ServiceRequest-5)   // Vit. D

* status = #active
* intent = #original-order
// * category = $sct#721963009 "Order (record artifact)"

// code: what is being requested (procedure codes SNOMED CT, Test Codes LOINC)
// * code.coding.code = $loinc#24360-0 "Hemoglobin and Hematocrit panel - Blood"

// orderDetails: Additional order information
// * orderDetail = $v2-0119#NW "New order/service"

* priority = #urgent
* subject = Reference(Patient/TobiasTimmermann)
* requester = Reference(MarcMustermannGruppenpraxis)
* reasonCode = $sct#404223003
* reasonCode.text = "Deep venous thrombosis of lower extremity (disorder)"
// * insurance = Reference(Coverage/HealthInsuranceCardTobiasTimmermann)

Instance: 1-tvt-ServiceRequest-1
InstanceOf: ChLabOrderSR
Title: "CH LAB-ServiceRequest 1-tvt-1"
Description: "Example for Service Request due to suspected deep vein thrombosis"
Usage: #example

* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* basedOn = Reference(1-tvt-ServiceRequest-0) 
* status = #active
* intent = #original-order
* code.coding[+].code = #58410-2 
* code.coding[=].system = $loinc
* code.coding[=].display = "CBC panel - Blood by Automated count"


* priority = #urgent
* subject = Reference(Patient/TobiasTimmermann)
* requester = Reference(MarcMustermannGruppenpraxis)
* reasonCode = $sct#404223003
* reasonCode.text = "Deep venous thrombosis of lower extremity (disorder)"
// * insurance = Reference(Coverage/HealthInsuranceCardTobiasTimmermann)
* specimen[+] = Reference(Specimen/Blood-1-tvt)

Instance: 1-tvt-ServiceRequest-2
InstanceOf: ChLabOrderSR
Title: "CH LAB-ServiceRequest 1-tvt-2"
Description: "Example for Service Request due to suspected deep vein thrombosis"
Usage: #example
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* basedOn = Reference(1-tvt-ServiceRequest-0) 
* status = #active
* intent = #original-order
* code.coding[+].code = #57021-8
* code.coding[=].system = $loinc
* code.coding[=].display = "CBC W Auto Differential panel - Blood"

* priority = #urgent
* subject = Reference(Patient/TobiasTimmermann)
* requester = Reference(MarcMustermannGruppenpraxis)
* reasonCode = $sct#404223003
* reasonCode.text = "Deep venous thrombosis of lower extremity (disorder)"
// * insurance = Reference(Coverage/HealthInsuranceCardTobiasTimmermann)
* specimen[+] = Reference(Specimen/Blood-1-tvt)

Instance: 1-tvt-ServiceRequest-3
InstanceOf: ChLabOrderSR
Title: "CH LAB-ServiceRequest 1-tvt-3"
Description: "Example for Service Request due to suspected deep vein thrombosis"
Usage: #example
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* basedOn = Reference(1-tvt-ServiceRequest-0) 
* status = #active
* intent = #original-order
* code.coding[+].code = #55398-2
* code.coding[=].system = $loinc
* code.coding[=].display = "Short Fibrin D-dimer FEU and DDU panel - Platelet poor plasma"

* priority = #urgent
* subject = Reference(Patient/TobiasTimmermann)
* requester = Reference(MarcMustermannGruppenpraxis)
* reasonCode = $sct#404223003
* reasonCode.text = "Deep venous thrombosis of lower extremity (disorder)"
// * insurance = Reference(Coverage/HealthInsuranceCardTobiasTimmermann)
* specimen[+] = Reference(Specimen/Blood-coag-1-tvt)

Instance: 1-tvt-ServiceRequest-4
InstanceOf: ChLabOrderSR
Title: "CH LAB-ServiceRequest 1-tvt-4"
Description: "Example for Service Request due to suspected deep vein thrombosis"
Usage: #example
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* basedOn = Reference(1-tvt-ServiceRequest-0) 
* status = #active
* intent = #original-order
* code.coding[+].code = #1988-5
* code.coding[=].system = $loinc
* code.coding[=].display = "C reactive protein [Mass/Volume] in Serum or Plasma"

* priority = #urgent
* subject = Reference(Patient/TobiasTimmermann)
* requester = Reference(MarcMustermannGruppenpraxis)
* reasonCode = $sct#404223003
* reasonCode.text = "Deep venous thrombosis of lower extremity (disorder)"
// * insurance = Reference(Coverage/HealthInsuranceCardTobiasTimmermann)
* specimen[+] = Reference(Specimen/Serum-1-tvt) "Serum specimen"


Instance: 1-tvt-ServiceRequest-5
InstanceOf: ChLabOrderSR
Title: "CH LAB-ServiceRequest 1-tvt-5"
Description: "Example for Service Request due to suspected deep vein thrombosis"
Usage: #example
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* basedOn = Reference(1-tvt-ServiceRequest-0)
* status = #active
* intent = #original-order
* code.coding[+].code = #62292-8
* code.coding[=].system = $loinc
* code.coding[=].display = "25-Hydroxyvitamin D3+25-Hydroxyvitamin D2 [Mass/volume] in Serum or Plasma"

* priority = #urgent
* subject = Reference(Patient/TobiasTimmermann)
* requester = Reference(MarcMustermannGruppenpraxis)
* reasonCode = $sct#404223003
* reasonCode.text = "Deep venous thrombosis of lower extremity (disorder)"

* reasonCode.coding.code = #723190009
* reasonCode.coding.system = $sct
* reasonCode.coding.display = "Chronic renal insufficiency (disorder)"
* reasonCode.text = "Limitation of Vit. D Lab Analyse"
* reasonReference = Reference(ConditionRenalInsufficiency)

// * insurance = Reference(Coverage/HealthInsuranceCardTobiasTimmermann)
* supportingInfo[+] = Reference(ConditionRenalInsufficiency)
* specimen[0] = Reference(Specimen/Serum-1-tvt) "Serum specimen"

// ---- Patient --------
Instance: TobiasTimmermann
InstanceOf: CHCorePatient
Title: "Patient Tobias Timmermann"
Description: "CH-Core-Patient, refers to 1-tvt"
Usage: #example
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>id</b>: TobiasTimmermann\n      </p><p><b>meta</b>: \n      </p><p><b>identifier</b>: 80756011110123400003\n      </p><p><b>name</b>: Tobias Timmermann \n      </p><p><b>gender</b>: MALE\n      </p><p><b>birthDate</b>: Jan 01, 1981\n      </p><p><b>maritalStatus</b>: unverheiratet \n        <span style=\"background: LightGoldenRodYellow\">(Details : {$ech-11-maritalstatus code '5' = '5', given as 'unverheiratet'})</span></p><h3>Communications</h3><table class=\"grid\"><tr><td>-</td><td><b>Language</b></td><td><b>Preferred</b></td></tr><tr><td>*</td><td>Deutsch (Schweiz) \n            <span style=\"background: LightGoldenRodYellow\">(Details : {urn:ietf:bcp:47 code 'de-CH' = 'German (Region=Schweiz))</span></td><td>true</td></tr></table></div>"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.city = "Zürich"
* extension[=].valueAddress.country = "Schweiz"
* extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient-ech-11-placeoforigin"
* extension[=].valueAddress.city = "Breitenbach"
* extension[=].valueAddress.state = "BL"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-religion"
* extension[=].valueCodeableConcept = $religiousAffiliation#1007 "Atheism"
// * identifier.type = $v2-0203#MR
* identifier[insuranceCardNumber].system = "urn:oid:2.16.756.5.30.1.123.100.1.1.1"
* identifier[insuranceCardNumber].value = "80756011110123400003"
* name.family = "Timmermann"
* name.given = "Tobias"
* telecom[0].system = #phone
* telecom[=].value = "079 979 79 79"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "tobias.timmermann@example.ch"
* gender = #male
* birthDate = "1984-01-01"
* maritalStatus = $ech-11-maritalstatus#5 "unverheiratet"
* communication.language = urn:ietf:bcp:47#de-CH
* communication.language.text = "Deutsch (Schweiz)"
* communication.preferred = true

// ---- PractitionerRole --------> Folder

/*
Instance: HealthInsuranceCardTobiasTimmermann
InstanceOf: CHCoreCoverage
Title: "Health Insurance Card Tobias Timmermann"
Description: "Example for Insurance"
Usage: #example
// * id = "health-insurance-card-tobias-timmermann"
* identifier.type = $coverage-identifiertype#VeKa
* identifier.system = "http://ehic.com/insurer/123456789/member"
* identifier.value = "80756011110123400003"
* status = #active
* type = $coverage-type#1 "According to KVG"
* subscriber = Reference(Patient/TobiasTimmermann)
* beneficiary = Reference(Patient/TobiasTimmermann)
* period.end = "2024-12-31"
* payor.identifier.system = "http://ehic.com/insurer"
* payor.identifier.value = "123456789"
*/

// ---- Specimen ---------------
Instance: Serum-1-tvt
InstanceOf: Specimen
Title: "Serum Sample 1-tvt"
Description: "Example for Specimen of Serum from venous blood"
Usage: #example
* identifier.value = "48736-12345-75465"
* accessionIdentifier.value = "4e88a-12345-dd888"
* status = #available
* type = $sct#119364003 "Serum specimen (specimen)"
* subject = Reference(Patient/TobiasTimmermann)
* collection.collector = Reference(Practitioner/MarcMustermann)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* collection.bodySite = $sct#49852007 "Structure of median cubital vein (body structure)"
* collection.fastingStatusCodeableConcept = $v2-0916#F "Patient was fasting prior to the procedure."
* container.type = $sct#706053007 "General specimen container (physical object)"

Instance: Blood-coag-1-tvt
InstanceOf: Specimen
Title: "Blood Sample Coagulation, 1-tvt"
Description: "Example for Specimen for haemostatic Examination"
Usage: #example
* identifier.value = "48736-55555-75465"
* accessionIdentifier.value = "4e88a-66666-dd888"
* status = #available
* type = $sct#119297000 "Blood sample"
* subject = Reference(Patient/TobiasTimmermann)
* receivedTime = "2023-12-01T16:40:17Z"
// * request = Reference(Lab) Why the specimen was collected
* collection.collector = Reference(Practitioner/MarcMustermann)
* collection.collectedDateTime = "2023-12-01T17:00:17Z"
* processing.timePeriod.start = "2023-12-01T17:00:17Z" // usually same time as collectedDateTime
* processing.timePeriod.end = "2023-12-01T17:30:17Z" // when processing should be terminated
* container.identifier.value = "4e88a-bc987-dd888-00001-bcoag"
* container.description = "S-Monovette grün"
* container.type = $sct#702120003 "Blood collection Luer adaptor"
* container.additiveCodeableConcept = $v2-0371#C38 "3.8% Citrate"

Instance: Blood-1-tvt
InstanceOf: Specimen
Title: "Blood Sample, 1-tvt"
Description: "Example for Specimen for Haematological Examination"
Usage: #example
* status = #available
* type = $sct#119297000 "Blood sample"
* subject = Reference(Patient/TobiasTimmermann)
* collection.collector = Reference(Practitioner/MarcMustermann)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* collection.bodySite = $sct#721029009 "Structure of superficial vein of left upper limb (body structure)"
* container.type = $sct#706053007 "General specimen container (physical object)"
* note.text = "Specimen is grossly lipemic"

Instance: ConditionRenalInsufficiency
InstanceOf: Condition
Title: "Problem List"
Description: "Problem list of Tobias Timmermann"
Usage: #example
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $sct#439401001 "diagnosis"
* severity = $sct#255604002 "Mild (qualifier value)"
* code = $sct#723190009 "Chronic renal insufficiency (disorder)"
* subject = Reference(Patient/TobiasTimmermann) "Tobias Timmermann"
// * encounter = Reference(Encounter/f001)
* onsetDateTime = "2023-08-05"
* recordedDate = "2023-10-05"
* asserter = Reference(Patient/TobiasTimmermann) "Tobias Timmermann"

