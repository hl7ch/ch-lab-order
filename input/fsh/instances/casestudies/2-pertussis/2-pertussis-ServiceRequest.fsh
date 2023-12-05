Instance: 2-pertussis-ServiceRequest
InstanceOf: ChOrfServiceRequest
Title: "laborder 2-pertussis"
Description: "Example for Service Request for Pertussis Investigation"
Usage: #example
* id = "2-pertussis-service-request"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* status = #active
* intent = #original-order
* category = $sct#721963009 "Order (record artifact)"
// code: what is being requested (procedure codes SNOMED CT, Test Codes LOINC)
* code.coding[0] = $loinc#24360-0 "Hemoglobin and Hematocrit panel - Blood"
* code.coding[+] = $loinc#43113-0 "Hemoglobin electrophoresis panel in Blood"
* code.coding[+] = $loinc#57021-8 "CBC W Auto Differential panel - Blood"
// orderDetails: Additional order information

* priority = #urgent
* subject = Reference(Patient/EmilKummer)
* requester = Reference(PeterPrestoGruppenpraxis)
* reasonCode = $sct#772146005
* reasonCode.text = "Pertussis suspected (situation)"
* insurance = Reference(HealthInsuranceCardEmilKummer)
* specimen[0] = Reference(Specimen/Throat-swab-2-pertussis)
* specimen[+] = Reference(Specimen/Blood-2-pertussis)
* specimen[+] = Reference(Specimen/Serum-2-pertussis)

Instance: EmilKummer
InstanceOf: CHCorePatient
Title: "Emil Kummer"
Description: "CH-Core-Patient, refers to 2-pertussis"
Usage: #example
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>id</b>: EmilKummer\n      </p><p><b>meta</b>: \n      </p><p><b>identifier</b>: 012/08.111112\n      </p><p><b>name</b>: Emil Kummer\n      </p><p><b>gender</b>: MALE\n      </p><p><b>birthDate</b>: May 05, 2014\n      </p><p><b>maritalStatus</b>: ledig \n        <span style=\"background: LightGoldenRodYellow\">(Details : {$ech-11-maritalstatus code '1' = '1', given as 'ledig'})</span></p><h3>Communications</h3><table class=\"grid\"><tr><td>-</td><td><b>Language</b></td><td><b>Preferred</b></td></tr><tr><td>*</td><td>Deutsch (Schweiz) \n            <span style=\"background: LightGoldenRodYellow\">(Details : {urn:ietf:bcp:47 code 'de-CH' = 'German (Region=Schweiz))</span></td><td>true</td></tr></table></div>"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.city = "Paris"
* extension[=].valueAddress.country = "Frankreich"
* extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient-ech-11-placeoforigin"
* extension[=].valueAddress.city = "Köniz"
* extension[=].valueAddress.state = "BE"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-religion"
* extension[=].valueCodeableConcept = $religiousAffiliation#1041 "Roman Catholic Church"
* identifier[0].type = $v2-0203#MR
* identifier[=].system = "urn:oid:2.16.756.5.30.999999.1"
* identifier[=].value = "012/08.111112"
* identifier[+].type = $v2-0203#MR
* identifier[=].system = "urn:oid:2.16.756.5.30.999999.1"
* identifier[=].value = "012/08.111112"
* name.family = "Kummer"
* name.given = "Emil"
* gender = #male
* birthDate = "2017-05-05"
* maritalStatus = $ech-11-maritalstatus#1 "ledig"
* communication.language = urn:ietf:bcp:47#de-CH
* communication.language.text = "Deutsch (Schweiz)"
* communication.preferred = true

Instance: PeterPrestoGruppenpraxis
InstanceOf: CHCorePractitionerRole
Title: "Peter Presto at Gruppenpraxis"
Description: "PractitionerRole, refers to 2-pertussis"
Usage: #example
* practitioner = Reference(Practitioner/PeterPresto)
* organization = Reference(Organization/Gruppenpraxis)

Instance: PeterPresto
InstanceOf: CHCorePractitionerEPR
Title: "Peter Presto"
Description: "Practitioner, works at Gruppenpraxis, refers to 2-pertussis"
Usage: #example
* identifier[GLN].system = "urn:oid:2.51.1.3" //GLN
* identifier[GLN].value = "7601022050702"
* identifier[ZSR].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1" // ZSR
* identifier[ZSR].value = "A123303"
* name.use = #official
* name.family = "Presto"
* name.given = "Peter"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC
* telecom[0].system = #phone
* telecom[=].value = "032 333 22 33"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "peter.presto@arztpraxis.ch"
* telecom[=].use = #work

Instance: HealthInsuranceCardEmilKummer
InstanceOf: Coverage
Title: "Health Insurance Card Emil Kummer"
Description: "Example for Insurance"
Usage: #example
* id = "health-insurance-card-emil-kummer"
* identifier.system = "http://ehic.com/insurer/123456789/member"
* identifier.value = "A123456780-1"
* status = #active
* type = $coverage-type#KVG "According to KVG"
* subscriber = Reference(Patient/EmilKummer)
* beneficiary = Reference(Patient/EmilKummer)
* period.end = "2024-12-31"
* payor.identifier.system = "http://ehic.com/insurer"
* payor.identifier.value = "123456789"

Instance: Throat-swab-2-pertussis
InstanceOf: Specimen
Title: "Throat Swab"
Description: "Example for Specimen of Throat Swab"
Usage: #example
* identifier.value = "48736-222333-75465"
* accessionIdentifier.value = "4e88a-bc987-dd888"
* status = #available
* type = $sct#258529004 "Throat swab (specimen)"
* subject = Reference(Patient/EmilKummer)
* receivedTime = "2020-08-16T16:40:17Z"
* request = Reference(2-pertussis-ServiceRequest)  // reference to SR 
* collection.collector = Reference(Practitioner/PeterPresto)
* collection.collectedDateTime = "2020-08-16T06:40:17Z"
* collection.method = $sct#418932006 "Oral swab (specimen)"
* collection.bodySite = $sct#264231000 "Entire throat (surface region of neck) (body structure)"
* container.identifier.value = "4e88a-bc987-dd888-12345"
* container.description = "ESwab 486C tubes Copan"
* container.type = $sct#706053007 "General specimen container (physical object)"
* note.text = "Some notes to Sample"

Instance: Blood-2-pertussis
InstanceOf: Specimen
Title: "Blood Sample"
Description: "Example for Specimen for Haematological Examination"
Usage: #example
* status = #available
* type = $sct#119297000 "Blood sample"
* subject = Reference(Patient/EmilKummer)
* collection.collector = Reference(Practitioner/PeterPresto)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* collection.bodySite = $sct#49094006 "Structure of capillary of skin (body structure)"
* container.type = $sct#702306004 "Microcapillary blood transfer tube, ethylene diamine tetraacetic acid (physical object)"

Instance: Serum-2-pertussis
InstanceOf: Specimen
Title: "Serum Sample"
Description: "Example for Specimen of Serum from venous blood"
Usage: #example
* identifier.value = "48736-12345-75465"
* accessionIdentifier.value = "4e88a-12345-dd888"
* status = #available
* type = $sct#119364003 "Serum specimen (specimen)"
* subject = Reference(Patient/EmilKummer)
* collection.collector = Reference(Practitioner/PeterPresto)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* container.type = $sct#702304001 "Microcapillary blood transfer tube, clot activator (physical object)"
