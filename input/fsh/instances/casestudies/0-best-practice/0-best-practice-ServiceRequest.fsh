Instance: 0-best-practice-ServiceRequest-0
InstanceOf: ChLabOrderSR
Title: "CH LAB-ServiceRequest 0-best-practice"
Description: "Example for ServiceRequest due to suspected deep vein thrombosis"
Usage: #example
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[placerOrderIdentifier].value = "Y274589"
* status = #active
* intent = #original-order
* priority = #urgent
// code: what is being requested (procedure codes SNOMED CT, Test Codes LOINC)
* code.coding.code = #401186003
* code.coding.system = $sct
* code.coding.display = "Deep vein thrombosis screening (procedure)"
* subject = Reference(Patient/BirgitBlum)
* encounter = Reference(FirstEncounter)
* requester = Reference(HansHauserKantonsspital)
// * insurance = Reference(HealthInsuranceCardBirgitBlum)
// * supportingInfo[+] = Reference(ConditionHeartDisorder)
* supportingInfo[+] = Reference(ConditionTibiaFracture)

Instance: 0-best-practice-ServiceRequest-1
InstanceOf: ChLabOrderSR
Title: "CH LAB-ServiceRequest 0-best-practice Anti-Xa-Aktivität"
Description: "Example for ServiceRequest to control anticoagulation effect"
Usage: #example
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[placerOrderIdentifier].value = "Y274589"
* basedOn[+] = Reference(0-best-practice-ServiceRequest-0)
* status = #active
* intent = #original-order
* priority = #urgent
// code: what is being requested (procedure codes SNOMED CT, Test Codes LOINC)
* code.coding.code = #80627-3
* code.coding.system = $loinc
* code.coding.display = "Coagulation factor X activated inhibitor [Mass/volume] in Platelet poor plasma"

* subject = Reference(Patient/BirgitBlum)
* requester = Reference(HansHauserKantonsspital)
// * reasonCode = $sct#250361003 "Heparin control test (procedure)"
* reasonCode.coding.code = #250361003
* reasonCode.coding.system = $sct
* reasonCode.coding.display = "Heparin control test (procedure)"
* reasonCode.text = "Patient gets Heparin injections"
// * insurance = Reference(HealthInsuranceCardBirgitBlum)
* reasonReference = Reference(ConditionAnticoagulation)
* supportingInfo[+] = Reference(Liquemin)
* specimen = Reference(Specimen/Blood-coag-0-best-practice)

Instance: 0-best-practice-ServiceRequest-2
InstanceOf: ChLabOrderSR
Title: "CH LAB-ServiceRequest 0-best-practice Glucose"
Description: "Example for ServiceRequest to exclude diabetes mellitus"
Usage: #example
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[placerOrderIdentifier].value = "Y274589"
* basedOn[+] = Reference(0-best-practice-ServiceRequest-0)
// * instantiatesCanonical = canonical(http://fhir.ch/ig/ch-lab-order/ActivityDefinition/procedure-crp-SI)
* status = #active
* intent = #original-order
// * category = $sct#721963009 "Order (record artifact)"
// code: what is being requested (procedure codes SNOMED CT, Test Codes LOINC)
* code.coding.code = #47622-6
* code.coding.system = $loinc
* code.coding.display = "Glucose [Moles/volume] in Serum or Plasma --pre dose glucose"
// orderDetails: Additional order information
// * orderDetail = $v2-0119#NW "New order/service"

* priority = #urgent
* subject = Reference(Patient/BirgitBlum)
* requester = Reference(HansHauserKantonsspital)
* reasonCode.coding.code = #171183004
* reasonCode.coding.system = $sct
* reasonCode.coding.display = "Diabetes mellitus screening (procedure)"
* reasonCode.text = "Diabetes mellitus screening"

// * insurance = Reference(HealthInsuranceCardBirgitBlum)
* specimen = Reference(Specimen/Serum-0-best-practice) "Serum specimen"

Instance: 0-best-practice-ServiceRequest-3
InstanceOf: ChLabOrderSR
Title: "CH LAB-ServiceRequest 0-best-practice Hemoglobin Hematocrit panel"
Description: "Example for Service Request to exclude excessiv blood lost by fracture"
Usage: #example
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[placerOrderIdentifier].value = "Y274589"
// * instantiatesCanonical = canonical(http://fhir.ch/ig/ch-lab-order/ActivityDefinition/procedure-crp-SI)
* status = #active
* intent = #original-order
* basedOn[+] = Reference(0-best-practice-ServiceRequest-0)
* code.coding.code = #24360-0
* code.coding.system = $loinc
* code.coding.display = "Hemoglobin and Hematocrit panel - Blood"

// orderDetails: Additional order information
// * orderDetail = $v2-0119#NW "New order/service"
* priority = #urgent
* subject = Reference(Patient/BirgitBlum)
* requester = Reference(HansHauserKantonsspital)
* reasonCode.coding.code = #171201007
* reasonCode.coding.system = $sct
* reasonCode.coding.display = "Anemia screening (procedure)"
* reasonCode.text = "Anemia screening"

Instance: 0-best-practice-ServiceRequest-3-Hb
InstanceOf: ChLabOrderSR
Title: "CH LAB-ServiceRequest 0-best-practice Hemoglobin"
Description: "Example for Service Request to exclude excessiv blood lost by fracture"
Usage: #example
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[placerOrderIdentifier].value = "Y274589"
* basedOn[+] = Reference(0-best-practice-ServiceRequest-3)

// * instantiatesCanonical = canonical(http://fhir.ch/ig/ch-lab-order/ActivityDefinition/procedure-crp-SI)
* status = #active
* intent = #original-order
* code.coding.code = #718-7
* code.coding.system = $loinc
* code.coding.display = "Hemoglobin [Mass/volume] in Blood"

* priority = #urgent
* subject = Reference(Patient/BirgitBlum)
* requester = Reference(HansHauserKantonsspital)
* specimen = Reference(Specimen/Blood-0-best-practice)

Instance: 0-best-practice-ServiceRequest-3-Ht
InstanceOf: ChLabOrderSR
Title: "CH LAB-ServiceRequest 0-best-practice Hematocrit"
Description: "Example for Service Request to exclude excessiv blood lost by fracture"
Usage: #example
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[placerOrderIdentifier].value = "Y274589"
* basedOn[+] = Reference(0-best-practice-ServiceRequest-3)

// * instantiatesCanonical = canonical(http://fhir.ch/ig/ch-lab-order/ActivityDefinition/procedure-crp-SI)
* status = #active
* intent = #original-order

* code.coding.code = #20570-8
* code.coding.system = $loinc
* code.coding.display = "Hematocrit [Volume Fraction] of Blood by calculation"

* priority = #urgent
* subject = Reference(Patient/BirgitBlum)
* requester = Reference(HansHauserKantonsspital)
* specimen = Reference(Specimen/Blood-0-best-practice)

* priority = #urgent
* subject = Reference(Patient/BirgitBlum)
* requester = Reference(HansHauserKantonsspital)
* specimen = Reference(Specimen/Blood-0-best-practice)

// ---- Patient --------
Instance: BirgitBlum
InstanceOf: CHCorePatient
Title: "Patient Birgit Blum"
Description: "CH-Core-Patient, refers to 0-best-practice"
Usage: #example
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>id</b>: BirgitBlum\n      </p><p><b>meta</b>: \n      </p><p><b>identifier</b>: 80756011110123400002\n      </p><p><b>name</b>: Birgit Blum \n      </p><p><b>gender</b>: FEMALE\n      </p><p><b>birthDate</b>: Jan 01, 1981\n      </p><p><b>maritalStatus</b>: unverheiratet \n        <span style=\"background: LightGoldenRodYellow\">(Details : {$ech-11-maritalstatus code '5' = '5', given as 'unverheiratet'})</span></p><h3>Communications</h3><table class=\"grid\"><tr><td>-</td><td><b>Language</b></td><td><b>Preferred</b></td></tr><tr><td>*</td><td>Deutsch (Schweiz) \n            <span style=\"background: LightGoldenRodYellow\">(Details : {urn:ietf:bcp:47 code 'de-CH' = 'German (Region=Schweiz))</span></td><td>true</td></tr></table></div>"
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
* identifier[insuranceCardNumber].value = "80756011110123400002"
* name.family = "Blum"
* name.given = "Birgit"
* telecom[0].system = #phone
* telecom[=].value = "079 979 79 79"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "Birgit.Blum@example.ch"
* gender = #female
* birthDate = "1984-01-01"
* maritalStatus = $ech-11-maritalstatus#5 "unverheiratet"
* communication.language = urn:ietf:bcp:47#de-CH
* communication.language.text = "Deutsch (Schweiz)"
* communication.preferred = true

// ---- PractitionerRole --------> Folder

// issue: orf wants a VS, in FSH a CS is required ???
/*
Instance: HealthInsuranceCardBirgitBlum
InstanceOf: CHCoreCoverage
Title: "Health Insurance Card Birgit Blum"
Description: "Example for Insurance"
Usage: #example
// * id = "health-insurance-card-Birgit-Blum"
* identifier[insuranceCardNumber].system = "urn:oid:2.16.756.5.30.1.123.100.1.1.1"
* identifier[insuranceCardNumber].value = "80756011110123400002"

* status = #active
* type = $coverage-type#4 "According to UVG"
* beneficiary = Reference(Patient/BirgitBlum)
* period.end = "2024-12-31"
* payor.identifier.system = "http://example.org/insurer"
* payor.identifier.value = "123456789"
*/

// ---- encounter -----
Instance: FirstEncounter
InstanceOf: Encounter
Title: "Encounter: First Encounter"
Description: "Example for best-practice of laboratory order"
Usage: #example
* status = #in-progress
* class = $v3-ActCode#IMP "inpatient encounter"
* subject = Reference(Patient/BirgitBlum)

Instance: Liquemin
InstanceOf: ChLabOrderMedication
Title: "Medication Liquemin"
Description: "Example for best-practice of laboratory order"
Usage: #example

/*A code (or set of codes) that specify this medication, or a textual description if no code is available. Usage note: This could be a standard medication code such as a code from RxNorm, SNOMED CT, IDMP etc. It could also be a national or local formulary code, optionally with translations to other code systems.*/

* code.coding[GTIN] = urn:oid:2.51.1.1#7680151590587 "LIQUEMIN Inj Lös 25000 IE/5ml"
// * code.coding[PHARMACODE] = urn:oid:2.16.756.5.30.2.6#4937146 "LIQUEMIN Inj Lös 25000 IE/5ml"
* code.coding[ATC] = $atc#B01AB01 "Heparin"
* code.text = "LIQUEMIN Inj Lös 25000 IE/5ml"

* status = #active
* form = $sct#385219001 "Conventional release solution for injection (dose form)"
* ingredient.itemCodeableConcept = $sct#372877000 "Heparin (substance)"
* ingredient.strength.numerator = 5000 '[iU]' "international unit"
* ingredient.strength.denominator = 0.5 'mL' "milliliter"

* batch.lotNumber = "9494788"
* batch.expirationDate = "2024-05-22"


// ---- Specimen ---------------
Instance: Serum-0-best-practice
InstanceOf: Specimen
Title: "Serum Sample 0-best-practice"
Description: "Example for Specimen of Serum from venous blood"
Usage: #example
* identifier.value = "48736-12345-75465"
* accessionIdentifier.value = "4e88a-12345-dd888"
* status = #available
* type = $sct#119364003 "Serum specimen (specimen)"
* subject = Reference(Patient/BirgitBlum)
* collection.collector = Reference(Practitioner/MarcMustermann)
* collection.collectedDateTime = "2023-12-01T16:40:17Z"
* collection.bodySite = $sct#49852007 "Structure of median cubital vein (body structure)"
* collection.fastingStatusCodeableConcept = $v2-0916#F "Patient was fasting prior to the procedure."
* container.type = $sct#706053007 "General specimen container (physical object)"
* container.description = "General specimen container (physical object)"

Instance: Blood-coag-0-best-practice
InstanceOf: Specimen
Title: "Blood Sample Coagulation, 0-best-practice"
Description: "Example for Specimen for haemostatic Examination"
Usage: #example
* identifier.value = "48736-55555-75465"
* accessionIdentifier.value = "4e88a-66666-dd888"
* status = #available
* type = $sct#119297000 "Blood sample"
* subject = Reference(Patient/BirgitBlum)
* receivedTime = "2023-12-01T16:40:17Z"
// * request = Reference(Lab) Why the specimen was collected
* collection.collector = Reference(Practitioner/MarcMustermann)
* collection.collectedDateTime = "2023-12-01T17:00:17Z"
* processing.description = "Needs to be centrifugated and cooled within 1 hour"
* processing.timePeriod.start = "2023-12-01T17:00:17Z" // usually same time as collectedDateTime
* processing.timePeriod.end = "2023-12-01T17:30:17Z" // when processing should be terminated
* container.identifier.value = "4e88a-bc987-dd888-00001-bcoag"
* container.description = "S-Monovette grün"
* container.type = $sct#702120003 "Blood collection Luer adaptor"
* container.additiveCodeableConcept = $v2-0371#C38 ""
* container.description = "Blood collection Luer adaptor, 3.8% Citrate"

Instance: Blood-0-best-practice
InstanceOf: Specimen
Title: "Blood Sample, 0-best-practice"
Description: "Example for Specimen for Haematological Examination"
Usage: #example
* identifier.value = "48736-55555-75465"
* accessionIdentifier.value = "4e88a-66666-dd888"
* status = #available
* type = $sct#119297000 "Blood sample"
* subject = Reference(Patient/BirgitBlum)
* collection.collector = Reference(Practitioner/MarcMustermann)
* collection.collectedDateTime = "2023-12-01T06:40:17Z"
* collection.bodySite = $sct#721029009 "Structure of superficial vein of left upper limb (body structure)"
* container.type = $sct#706053007 "General specimen container (physical object)"
* note.text = "Specimen is grossly lipemic"

Instance: ConditionHeartDisorder
InstanceOf: ChLabOrderDiagnosisCondition
Description: "Problem list of Birgit Blum Heart Disorder"
Usage: #example
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item	
* severity = $sct#6736007 "Moderate (severity modifier)"
* code = $sct#368009 "Heart valve disorder"
* bodySite = $sct#40768004 "Left thorax"
* bodySite.text = "heart structure"
* subject = Reference(Patient/BirgitBlum) "Birgit Blum"
* encounter = Reference(Encounter/FirstEncounter)
* onsetDateTime = "2023-08-05"
* recordedDate = "2023-10-05"
* asserter = Reference(PractitionerRole/MarcMustermannGruppenpraxis) "Birgit Blum"
* evidence.code = $sct#426396005 "Cardiac chest pain"

Instance: ConditionTibiaFracture
InstanceOf: ChLabOrderDiagnosisCondition
Description: "Problem list of Birgit Blum Tibia Fracture"
Usage: #example
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* severity = $sct#24484000 "Severe (severity modifier) (qualifier value)"
* code = $sct#446980008 "Open fracture of tibial plateau (disorder)"
* bodySite = $sct#719496004
* bodySite.text = "Bone structure of proximal left tibia (body structure)"
* subject = Reference(Patient/BirgitBlum) "Birgit Blum"
* encounter = Reference(Encounter/FirstEncounter)
* onsetDateTime = "2024-02-05"
* recordedDate = "2024-02-05"
* asserter = Reference(PractitionerRole/HansHauserKantonsspital) "Birgit Blum"
* evidence.code = $sct#111645003 "Open fracture of upper end of tibia (disorder)"

Instance: ConditionAnticoagulation
InstanceOf: ChLabOrderDiagnosisCondition
Description: "Problem list of Birgit Blum Tibia Fracture"
Usage: #example
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item	
// * category = $sct#71388002 "Procedure (procedure)"
* code = $sct#122621000119109 "Prophylactic anticoagulation given (situation)"
* subject = Reference(Patient/BirgitBlum) "Birgit Blum"
* encounter = Reference(Encounter/FirstEncounter)
* onsetDateTime = "2024-02-05"
* recordedDate = "2024-02-05"
* asserter = Reference(PractitionerRole/HansHauserKantonsspital) "Birgit Blum"
* evidence.code = $sct#111645003 "Open fracture of upper end of tibia (disorder)"

/*
Instance: Insurance-Company
InstanceOf: CHCoreCoverage
Usage: #example
* identifier.system = "http://example.org/insurer/123456789/member"
* identifier.value = "A123456781"
* status = #active
* type = $coverage-type#1 "Krankenversicherung (obligat.)"
* subscriber = Reference(Patient/BirgitBlum)
* beneficiary = Reference(Patient/BirgitBlum)
* relationship.coding.code = #self
* period.end = "2025-03-17"
* payor.identifier.system = "http://example.org/insurer"
* payor.identifier.value = "1234567891"
*/