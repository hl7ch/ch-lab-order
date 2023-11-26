Instance: 3-gyn-ServiceRequestByForm
InstanceOf: ChOrfServiceRequest
Title: "Service Request 3-gyn by Form"
Description: "Example for Service Request for preventive gynaecological check-up"
Usage: #example
* id = "3-gyn-service-request-by-form"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* status = #active
* intent = #original-order
* category = $sct#721963009 "Order (record artifact)"
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

/*
Instance: HealthInsuranceCardMarinaRubella
InstanceOf: Coverage
Title: "HealthInsuranceCard"
Description: "Example for Insurance"
Usage: #example
* identifier.system = "http://ehic.com/insurer/123456789/member"
* identifier.value = "A123456780"
* status = #active
* type = $v3-ActCode#EHCPOL "extended healthcare"
* subscriber = Reference(Patient/MarinaRubella)
* beneficiary = Reference(Patient/MarinaRubella)
* period.end = "2024-12-31"
* payor.identifier.system = "http://ehic.com/insurer"
* payor.identifier.value = "123456789"

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
* request = Reference(ServiceRequest/3-gyn)
* collection.collector = Reference(Practitioner/PeterPap)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* container.type = $sct#706053007 "General specimen container (physical object)"

Instance: Blood-gyn
InstanceOf: Specimen
Title: "Blood Sample"
Description: "Example for Specimen for Haematological Examination"
Usage: #example
* status = #available
* type = $sct#119297000 "Blood sample"
* subject = Reference(Patient/MarinaRubella)
* request = Reference(ServiceRequest/3-gyn)
* collection.collector = Reference(Practitioner/PeterPap)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* collection.bodySite = $sct#721029009 "Structure of superficial vein of left upper limb (body structure)"
* container.type = $sct#706053007 "General specimen container (physical object)"
* note.text = "Specimen is grossly lipemic"

Instance: Serum-gyn
InstanceOf: Specimen
Title: "Serum Sample"
Description: "Example for Specimen of Serum from venous blood"
Usage: #example
* identifier.value = "48736-12345-75465"
* accessionIdentifier.value = "4e88a-12345-dd888"
* status = #available
* type = $sct#119364003 "Serum specimen (specimen)"
* subject = Reference(Patient/MarinaRubella)
* request = Reference(ServiceRequest/3-gyn)
* collection.collector = Reference(Practitioner/PeterPap)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* collection.bodySite = $sct#49852007 "Structure of median cubital vein (body structure)"
* collection.fastingStatusCodeableConcept = $v2-0916#F "Patient was fasting prior to the procedure."
* container.type = $sct#706053007 "General specimen container (physical object)"

Instance: Urine-gyn
InstanceOf: Specimen
Title: "Urine Sample"
Description: "Example for Specimen of Urin"
Usage: #example
* identifier.value = "11111-15394-75465"
* accessionIdentifier.value = "22222-bc987-dd888"
* status = #available
* type = $sct#122575003 "Urine sample"
* subject = Reference(Patient/MarinaRubella)
* receivedTime = "2020-08-16T16:40:17Z"
* request = Reference(ServiceRequest/3-gyn)
* collection.collector = Reference(Practitioner/PeterPap)
* collection.collectedDateTime = "2020-08-16T06:40:17Z"
* container.identifier.value = "4e88a-bc987-dd888-12345-urin"
* container.description = "Uriswab™ : Urine Collection System"
* container.type = $sct#706054001 "Urine specimen container (physical object)"
*/