Instance: 5-biol-monit-ServiceRequest
InstanceOf: ChOrfServiceRequest
Title: "Service Request 5-biol-monit"
Description: "Example for Service Request for toxicological Monitoring"
Usage: #example
* id = "5-biol-monit-service-request"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123123"
* status = #active
* intent = #original-order
* category = $sct#721963009 "Order (record artifact)"

// code: what is being requested (procedure codes SNOMED CT, Test Codes LOINC)
* code.coding[0] = $loinc#24360-0 "Hemoglobin and Hematocrit panel - Blood"
* code.coding[+] = $loinc#43113-0 "Hemoglobin electrophoresis panel in Blood"
* code.coding[+] = $loinc#57021-8 "CBC W Auto Differential panel - Blood"
* code.coding[+] = $loinc#58410-2 "CBC panel - Blood by Automated count"
* code.coding[+] = $loinc#57023-4 "Auto Differential panel - Blood"
* code.coding[+] = $loinc#29587-3 "Toxicology panel - Blood"
* code.coding[+] = $loinc#54454-4 "Arsenic fractions panel - Urine"
* code.coding[+] = $loinc#29589-9 "Heavy metals panel - Urine"

// orderDetails: Additional order information
* priority = #urgent
* subject = Reference(Patient/BeatBorer)
* requester = Reference(PauloPorcelliniSuva)
* reasonCode = $sct#314076009
* reasonCode.text = "Toxicology screening test (procedure)"
* insurance = Reference(HealthInsuranceCardBeatBorer)
* specimen[0] = Reference(Specimen/Blood-biol-monit)
* specimen[+] = Reference(Specimen/Urine-biol-monit)

// ---- Patient --------
Instance: BeatBorer
InstanceOf: CHCorePatient
Title: "Beat Borer"
Description: "Example for CH-Core-Patient"
Usage: #example
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>id</b>: BeatBorer\n      </p><p><b>meta</b>: \n      </p><p><b>identifier</b>: 012/08.111115\n      </p><p><b>name</b>: Beat Borer \n      </p><p><b>gender</b>: MALE\n      </p><p><b>birthDate</b>: Jun 06, 1986\n      </p><p><b>maritalStatus</b>: verheiratet \n        <span style=\"background: LightGoldenRodYellow\">(Details : {$ech-11-maritalstatus code '6' = '6', given as 'in eingetragener Partnerschaft'})</span></p><h3>Communications</h3><table class=\"grid\"><tr><td>-</td><td><b>Language</b></td><td><b>Preferred</b></td></tr><tr><td>*</td><td>Deutsch (Schweiz) \n            <span style=\"background: LightGoldenRodYellow\">(Details : {urn:ietf:bcp:47 code 'de-CH' = 'German (Region=Schweiz))</span></td><td>true</td></tr></table></div>"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.city = "Lausanne"
* extension[=].valueAddress.country = "Schweiz"
* extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient-ech-11-placeoforigin"
* extension[=].valueAddress.city = "Köniz"
* extension[=].valueAddress.state = "BE"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-religion"
* extension[=].valueCodeableConcept = $religiousAffiliation#1077 "Protestant"
* identifier.type = $v2-0203#MR
* identifier.system = "urn:oid:2.16.756.5.30.999999.1"
* identifier.value = "012/08.111115"
* name.family = "Borer"
* name.given = "Beat"
* telecom[0].system = #phone
* telecom[=].value = "+41 36 123 45 67"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "beat.borer@example.ch"
* gender = #male
* birthDate = "1986-06-06"
* maritalStatus = $ech-11-maritalstatus#2 "verheiratet"
* communication.language = urn:ietf:bcp:47#de-CH
* communication.language.text = "Deutsch (Schweiz)"
* communication.preferred = true

// ---- PractitionerRole --------
Instance: PauloPorcelliniSuva
InstanceOf: CHCorePractitionerRole
Title: "Paulo Porcellini Suva"
Description: "PractitionerRole, refers to 5-biol-monit"
Usage: #example
* practitioner = Reference(Practitioner/PauloPorcellini)
* organization = Reference(Organization/Suva)

Instance: PauloPorcellini
InstanceOf: CHCorePractitionerEPR
Title: "Paulo Porcellini"
Description: "Specialist for Occupational Medicine, works at SUVA, refers to 1-tvt"
Usage: #example
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000050700"
* identifier[ZSR].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1" // ZSR
* identifier[ZSR].value = "A123307"
* name.use = #official
* name.family = "Porcellini"
* name.given = "Paulo"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC
* telecom[0].system = #phone
* telecom[=].value = "036 336 22 33"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "paulo.porcellini@suva.ch"
* telecom[=].use = #work

Instance: Suva
InstanceOf: CHCoreOrganization
Title: "SUVA"
Description: "Insurance for occupational medicine, refers to 5-biol-monit"
Usage: #example
* identifier.system = "urn:oid:2.16.756.5.45"
* identifier.value = "CHE-108.955.179"
* name = "Suva"
* telecom[0].system = #phone
* telecom[=].value = "+41322345566"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "info@suva.ch"
* telecom[=].use = #work
* telecom[+].system = #url
* telecom[=].value = "http://www.suva.ch"
* telecom[=].use = #work
* address.line = "Löwenplatz 1"
* address.city = "Luzern"
* address.postalCode = "6004"
* address.country = "CH"

// ---- PractitionerRole --------
Instance: WoodyWorkdocSpeiserRails
InstanceOf: CHCorePractitionerRole
Title: "Woody Workdoc Speiser Rails"
Description: "PractitionerRole, refers to 5-biol-monit"
Usage: #example
* practitioner = Reference(Practitioner/WoodyWorkdoc)
* organization = Reference(Organization/SpeiserRails)

Instance: WoodyWorkdoc
InstanceOf: CHCorePractitionerEPR
Title: "Woody Worksdoc"
Description: "Works doctor, works at SpeiserRails, refers to 5-biol-monit"
Usage: #example
* identifier[GLN].system = "urn:oid:2.51.1.3" //GLN
* identifier[GLN].value = "7601000050717"
* identifier[ZSR].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1" // ZSR
* identifier[ZSR].value = "A123301"
* name.use = #official
* name.family = "Worksdoc"
* name.given = "Woody"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC
* telecom[0].system = #phone
* telecom[=].value = "077 888 88 11"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "woody.worksdoc@speiser-rails.ch"
* telecom[=].use = #work

Instance: SpeiserRails
InstanceOf: CHCoreOrganization
Title: "Speiser Rails"
Description: "Example for Manufacturer, refers to 5-biol-monit"
Usage: #example
* identifier.system = "urn:oid:2.16.756.5.45"  // BER (Business and Enterprise Register)
* identifier.value = "CHE-108.444.179"
* telecom[0].system = #phone
* telecom[=].value = "+41412345566"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "info@speiser-rails.ch"
* telecom[=].use = #work
* telecom[+].system = #url
* telecom[=].value = "http://www.speiser-rails.ch"
* telecom[=].use = #work
* address.line = "Gleisallee 123"
* address.city = "Arbon"
* address.postalCode = "9320"
* address.country = "CH"

Instance: HealthInsuranceCardBeatBorer
InstanceOf: Coverage
Title: "HealthInsuranceCard"
Description: "Example for Insurance"
Usage: #example
* identifier.system = "http://ehic.com/insurer/123456789/member"
* identifier.value = "A123456780"
* status = #active
* type = $coverage-type#UVG "According to UVG"
* subscriber = Reference(Patient/BeatBorer)
* beneficiary = Reference(Patient/BeatBorer)
* period.end = "2024-12-31"
* payor.identifier.system = "http://ehic.com/insurer"
* payor.identifier.value = "123456789"

// ---- Specimen ---------------
Instance: Blood-biol-monit
InstanceOf: Specimen
Title: "Blood Sample"
Description: "Example for Specimen for Haematological Examination"
Usage: #example
* status = #available
* type = $sct#119297000 "Blood sample"
* subject = Reference(Patient/BeatBorer)
* request = Reference(ServiceRequest/5-biol-monit-service-request)
* collection.collector = Reference(Practitioner/PauloPorcellini)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* collection.bodySite = $sct#721029009 "Structure of superficial vein of left upper limb (body structure)"
* container.type = $sct#706053007 "General specimen container (physical object)"
* note.text = "Specimen is grossly lipemic"

Instance: Urine-biol-monit
InstanceOf: Specimen
Title: "Urine Sample"
Description: "Example for Specimen of Urin"
Usage: #example
* identifier.value = "11111-15394-75465"
* accessionIdentifier.value = "22222-bc987-dd888"
* status = #available
* type = $sct#122575003 "Urine sample"
* subject = Reference(Patient/BeatBorer)
* receivedTime = "2023-12-01T16:40:17Z"
* request = Reference(ServiceRequest/5-biol-monit-service-request)
* collection.collector = Reference(Practitioner/PauloPorcellini)
* collection.collectedDateTime = "2023-12-01T06:40:17Z"
* container.identifier.value = "4e88a-bc987-dd888-12345-urin"
* container.description = "Uriswab™ : Urine Collection System"
* container.type = $sct#706054001 "Urine specimen container (physical object)"

