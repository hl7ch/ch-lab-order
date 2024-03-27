Instance: 3-gyn-ServiceRequest
InstanceOf: ChLabOrderSR
Title: "CH LAB-ServiceRequest 3-gyn"
Description: "Example for Service Request for preventive gynaecological check-up"
Usage: #example
* id = "3-gyn-service-request"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* status = #active
* intent = #original-order
// * category = $sct#721963009 "Order (record artifact)"
// code: what is being requested (procedure codes SNOMED CT, Test Codes LOINC)
* code.coding[0] = $loinc#86662-4 "Pap smear tests - FPAR 2.0 set"
* code.coding[+] = $loinc#14503-7 "Human papilloma virus 16+18 Ag [Presence] in Cervix"
* code.coding[+] = $loinc#50556-0 "Urinalysis dipstick panel - Urine by Automated test strip"
* code.coding[+] = $loinc#24364-2 "Obstetric 1996 Pnl Ser+Bld"

* priority = #routine
* subject = Reference(Patient/MarinaRubella)
* requester = Reference(PractitionerRole/PeterPapGruppenpraxis)
* reasonCode = $sct#702601001
* reasonCode.text = "Routine gynecologic examination (procedure)"
* insurance = Reference(HealthInsuranceCardMarinaRubella)
* specimen[0] = Reference(Specimen/Cervix-swab)
* specimen[+] = Reference(Specimen/Blood-gyn)
* specimen[+] = Reference(Specimen/Serum-gyn)
* specimen[+] = Reference(Specimen/Urine-gyn)

Instance: MarinaRubella
InstanceOf: CHCorePatient
Title: "Patient Marina Rubella"
Description: "CH-Core-Patient, refers to 3-gyn"
Usage: #example
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>id</b>: MarinaRubella\n      </p><p><b>meta</b>: \n      </p><p><b>identifier</b>: 012/08.111113\n      </p><p><b>name</b>: MarinaRubella \n      </p><p><b>gender</b>: FEMALE\n      </p><p><b>birthDate</b>: Aug 08, 1992\n      </p><p><b>maritalStatus</b>: verheiratet \n        <span style=\"background: LightGoldenRodYellow\">(Details : {$ech-11-maritalstatus code '2' = '2', given as 'verheiratet'})</span></p><h3>Communications</h3><table class=\"grid\"><tr><td>-</td><td><b>Language</b></td><td><b>Preferred</b></td></tr><tr><td>*</td><td>Italienisch (Schweiz) \n            <span style=\"background: LightGoldenRodYellow\">(Details : {urn:ietf:bcp:47 code 'it-CH' = 'Italian (Region=Schweiz))</span></td><td>true</td></tr></table></div>"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.city = "Mendrisio"
* extension[=].valueAddress.country = "Schweiz"
* extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient-ech-11-placeoforigin"
* extension[=].valueAddress.city = "Airolo"
* extension[=].valueAddress.state = "TI"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-religion"
* extension[=].valueCodeableConcept = $religiousAffiliation#1077 "Protestant"
* identifier.type = $v2-0203#MR
* identifier.system = "urn:oid:2.16.756.5.30.999999.1"
* identifier.value = "012/08.111113"
* name[0].use = #official
* name[=].family.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-name"
* name[=].family.extension.valueCode = #officialName
* name[=].family = "Rubella"
* name[=].given = "Marina"
* name[=].given.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-firstname"
* name[=].given.extension.valueCode = #officialFirstName
* name[+].use = #maiden
* name[=].family.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-name"
* name[=].family.extension.valueCode = #originalName
* name[=].family = "Meier"
* telecom[0].system = #phone
* telecom[=].value = "+41 64 123 45 67"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "marina.rubella@example.ch"
* gender = #female
* birthDate = "1992-08-08"
* address.use = #home
* address.type = #both
* address.line = "Via del bosco 88"
* address.city = "Airolo"
* address.postalCode = "6780"
* maritalStatus = $ech-11-maritalstatus#2 "verheiratet"
* communication.language = urn:ietf:bcp:47#it-CH
* communication.language.text = "Italienisch (Schweiz)"
* communication.preferred = true

Instance: HealthInsuranceCardMarinaRubella
InstanceOf: Coverage
Title: "Coverage Marina Rubella"
Description: "Example for Insurance"
Usage: #example
* identifier.system = "http://ehic.com/insurer/123456789/member"
* identifier.value = "A123456780"
* status = #active
* type = $coverage-type#KVG "According to KVG"
* subscriber = Reference(Patient/MarinaRubella)
* beneficiary = Reference(Patient/MarinaRubella)
* period.end = "2024-12-31"
* payor.identifier.system = "http://ehic.com/insurer"
* payor.identifier.value = "123456789"

Instance: PeterPapGruppenpraxis
InstanceOf: CHCorePractitionerRole
Title: "PractitionerRole Peter Pap Gruppenpraxis"
Description: "PractitionerRole, refers to 3-gyn"
Usage: #example
* practitioner = Reference(Practitioner/PeterPap)
* organization = Reference(Organization/Gruppenpraxis)

Instance: PeterPap
InstanceOf: CHCorePractitioner
Title: "Practitioner Peter Pap"
Description: "Practitioner, works at Gruppenpraxis, refers to 3-gyn"
Usage: #example
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601003050707"
* identifier[ZSR].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[ZSR].value = "A123305"
* name.use = #official
* name.family = "Pap"
* name.given = "Peter"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC
* telecom[0].system = #phone
* telecom[=].value = "032 333 22 40"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "peter.pap@gruppenpraxis.ch"
* telecom[=].use = #work

Instance: Cervix-swab
InstanceOf: Specimen
Title: "Cervix-swab Sample"
Description: "Example for Specimen of Cervix Swab"
Usage: #example
* identifier.value = "48736-12345-12345"
* accessionIdentifier.value = "4e88a-12345-aa222"
* status = #available
* type = $sct#430387006 "Combined specimen of cytologic material from endocervix, ectocervix, and vaginal fornix (specimen)"
* subject = Reference(Patient/MarinaRubella)
* request = Reference(ServiceRequest/3-gyn-service-request)
* collection.collector = Reference(Practitioner/PeterPap)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* container.type = $sct#706053007 "General specimen container (physical object)"

Instance: Blood-gyn
InstanceOf: Specimen
Title: "Blood Sample, 3-gyn"
Description: "Example for Specimen for Haematological Examination"
Usage: #example
* status = #available
* type = $sct#119297000 "Blood sample"
* subject = Reference(Patient/MarinaRubella)
* request = Reference(ServiceRequest/3-gyn-service-request)
* collection.collector = Reference(Practitioner/PeterPap)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* collection.bodySite = $sct#721029009 "Structure of superficial vein of left upper limb (body structure)"
* container.type = $sct#706053007 "General specimen container (physical object)"
* note.text = "Specimen is grossly lipemic"

Instance: Serum-gyn
InstanceOf: Specimen
Title: "Serum Sample 3-gyn"
Description: "Example for Specimen of Serum from venous blood"
Usage: #example
* identifier.value = "48736-12345-75465"
* accessionIdentifier.value = "4e88a-12345-dd888"
* status = #available
* type = $sct#119364003 "Serum specimen (specimen)"
* subject = Reference(Patient/MarinaRubella)
* request = Reference(ServiceRequest/3-gyn-service-request)
* collection.collector = Reference(Practitioner/PeterPap)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* collection.bodySite = $sct#49852007 "Structure of median cubital vein (body structure)"
* collection.fastingStatusCodeableConcept = $v2-0916#F "Patient was fasting prior to the procedure."
* container.type = $sct#706053007 "General specimen container (physical object)"

Instance: Urine-gyn
InstanceOf: Specimen
Title: "Urine Sample, 3-gyn"
Description: "Example for Specimen of Urin"
Usage: #example
* identifier.value = "11111-15394-75465"
* accessionIdentifier.value = "22222-bc987-dd888"
* status = #available
* type = $sct#122575003 "Urine sample"
* subject = Reference(Patient/MarinaRubella)
* receivedTime = "2023-12-01T16:40:17Z"
* request = Reference(ServiceRequest/3-gyn-service-request)
* collection.collector = Reference(Practitioner/PeterPap)
* collection.collectedDateTime = "2023-12-01T06:40:17Z"
* container.identifier.value = "4e88a-bc987-dd888-12345-urin"
* container.description = "Uriswab™ : Urine Collection System"
* container.type = $sct#706054001 "Urine specimen container (physical object)"
