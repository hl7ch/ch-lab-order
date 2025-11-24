Instance: 2-pertussis-ServiceRequest
InstanceOf: ChLabOrderSR
Usage: #inline
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[placerOrderIdentifier].value = "Y274589"
* status = #active
* intent = #original-order

// code: what is being requested (procedure codes SNOMED CT, Test Codes LOINC)
* code.coding[0].system = $sct
* code.coding[=].code = #171228002
* code.coding[=].display = "Respiratory disease screening (procedure)"
* code.text = "Laboratory Order"

// orderDetails: Additional order information
* orderDetail.coding.code = #NW
* orderDetail.coding.system = $v2-0119
* orderDetail.coding.display = "New order/service"
* orderDetail.text = "Order Control code, New order/service"

* priority = #urgent
* subject = Reference(Patient/EmilKummer)
* requester = Reference(PeterPrestoGruppenpraxis)
* reasonCode = $sct#772146005
* reasonCode.text = "Pertussis suspected (situation)"
// * insurance = Reference(HealthInsuranceCardEmilKummer)

Instance: 2-pertussis-ServiceRequestCBC
InstanceOf: ChLabOrderSR
Usage: #inline
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[placerOrderIdentifier].value = "Y274589"
* basedOn = Reference(2-pertussis-ServiceRequest)
* status = #active
* intent = #original-order

// code: what is being requested (procedure codes SNOMED CT, Test Codes LOINC)
* code.coding[0].system = $loinc
* code.coding[=].code = #58410-2
* code.coding[=].display = "CBC panel - Blood by Automated count"
* code.text = "Laboratory Order"
* code.coding[+].system = $loinc
* code.coding[=].code = #1988-5 
* code.coding[=].display = "C reactive protein [Mass/Volume] in Serum or Plasma"

// orderDetails: Additional order information
// * orderDetail = $v2-0119#NW "New order/service"
* orderDetail.coding.code = #NW
* orderDetail.coding.system = $v2-0119
* orderDetail.coding.display = "New order/service"
* orderDetail.text = "Order Control code, New order/service"

* priority = #urgent
* subject = Reference(Patient/EmilKummer)
* requester = Reference(PeterPrestoGruppenpraxis)
* reasonCode = $sct#772146005
* reasonCode.text = "Pertussis suspected (situation)"
// * insurance = Reference(HealthInsuranceCardEmilKummer)
// * specimen[+] = Reference(Specimen/ThroatSwab-2-pertussis)
* specimen[+] = Reference(Specimen/Blood-2-pertussis)
// * specimen[+] = Reference(Specimen/Serum-2-pertussis)

Instance: 2-pertussis-ServiceRequestCRP
InstanceOf: ChLabOrderSR
Usage: #inline
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[placerOrderIdentifier].value = "Y274589"
* basedOn = Reference(2-pertussis-ServiceRequest)
* status = #active
* intent = #original-order

// code: what is being requested (procedure codes SNOMED CT, Test Codes LOINC)
* code.coding[0].system = $loinc
* code.coding[=].code = #58410-2
* code.coding[=].display = "CBC panel - Blood by Automated count"
* code.text = "Laboratory Order"
* code.coding[+].system = $loinc
* code.coding[=].code = #1988-5 
* code.coding[=].display = "C reactive protein [Mass/Volume] in Serum or Plasma"

// orderDetails: Additional order information
// * orderDetail = $v2-0119#NW "New order/service"
* orderDetail.coding.code = #NW
* orderDetail.coding.system = $v2-0119
* orderDetail.coding.display = "New order/service"
* orderDetail.text = "Order Control code, New order/service"

* priority = #urgent
* subject = Reference(Patient/EmilKummer)
* requester = Reference(PeterPrestoGruppenpraxis)
* reasonCode = $sct#772146005
* reasonCode.text = "Pertussis suspected (situation)"
// * insurance = Reference(HealthInsuranceCardEmilKummer)
// * specimen[+] = Reference(Specimen/ThroatSwab-2-pertussis)
// * specimen[+] = Reference(Specimen/Blood-2-pertussis)
* specimen[+] = Reference(Specimen/Serum-2-pertussis)


Instance: EmilKummer
InstanceOf: CHCorePatient
Usage: #inline
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.city = "Paris"
* extension[=].valueAddress.country = "Frankreich"
* extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient-ech-11-placeoforigin"
* extension[=].valueAddress.city = "Köniz"
* extension[=].valueAddress.state = "BE"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-religion"
* extension[=].valueCodeableConcept = $religiousAffiliation#1041 "Roman Catholic Church"
// * identifier[0].type = $v2-0203#MR
* identifier[insuranceCardNumber].system = "urn:oid:2.16.756.5.30.1.123.100.1.1.1"
* identifier[insuranceCardNumber].value = "80756011110123400004"
// * identifier[+].type = $v2-0203#MR
// * identifier[=].system = "urn:oid:2.16.756.5.30.999999.1"
// * identifier[=].value = "012/08.111112"
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
Usage: #inline
* practitioner = Reference(Practitioner/PeterPresto)
* organization = Reference(Organization/Gruppenpraxis)

Instance: PeterPresto
InstanceOf: CHCorePractitionerEPR
Usage: #inline
* identifier[GLN].system = "urn:oid:2.51.1.3" //GLN
* identifier[GLN].value = "7601022050702"
* identifier[ZSR].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1" // ZSR
* identifier[ZSR].value = "L248519"
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


Instance: ThroatSwab-2-pertussis
InstanceOf: Specimen
Usage: #inline
* identifier.value = "48736-222333-75465"
* accessionIdentifier.value = "4e88a-bc987-dd888"
* status = #available
* type = $sct#258529004 "Throat swab (specimen)"
* subject = Reference(Patient/EmilKummer)
* receivedTime = "2023-12-01T16:40:17Z"
* request = Reference(2-pertussis-ServiceRequest)  // reference to SR 
* collection.collector = Reference(Practitioner/PeterPresto)
* collection.collectedDateTime = "2023-12-01T06:40:17Z"
* collection.method = $sct#418932006 "Oral swab (specimen)"
* collection.bodySite = $sct#264231000 "Entire throat (surface region of neck) (body structure)"
* container.identifier.value = "4e88a-bc987-dd888-12345"
* container.description = "ESwab 486C tubes Copan"
* container.type = $sct#706053007 "General specimen container (physical object)"
* note.text = "Some notes to Sample"

Instance: Blood-2-pertussis
InstanceOf: Specimen
Usage: #inline
* status = #available
* type = $sct#119297000 "Blood sample"
* subject = Reference(Patient/EmilKummer)
* collection.collector = Reference(Practitioner/PeterPresto)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* collection.bodySite = $sct#49094006 "Structure of capillary of skin (body structure)"
* container.type = $sct#702306004 "Microcapillary blood transfer tube, ethylene diamine tetraacetic acid (physical object)"

Instance: Serum-2-pertussis
InstanceOf: Specimen
Usage: #inline
* identifier.value = "48736-12345-75465"
* accessionIdentifier.value = "4e88a-12345-dd888"
* status = #available
* type = $sct#119364003 "Serum specimen (specimen)"
* subject = Reference(Patient/EmilKummer)
* collection.collector = Reference(Practitioner/PeterPresto)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* container.type = $sct#702304001 "Microcapillary blood transfer tube, clot activator (physical object)"
