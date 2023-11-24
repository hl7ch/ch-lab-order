Instance: 1-tvt-ServiceRequestByForm
InstanceOf: ChOrfServiceRequest
Title: "Service Request 1-tvt by Form"
Description: "Example for Service Request due to suspected deep vein thrombosis"
Usage: #example
* id = "1-tvt-service-request-by-form"
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
* code.coding[+] = $loinc#58410-2 "CBC panel - Blood by Automated count"
* code.coding[+] = $loinc#57023-4 "Auto Differential panel - Blood"
* code.coding[+] = $loinc#55398-2 "Short Fibrin D-dimer FEU and DDU panel - Platelet poor plasma"
* code.coding[+] = $loinc#1988-5 "C reactive protein [Mass/Volume] in Serum or Plasma"
// orderDetails: Additional order information

* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannArztpraxis)
* reasonCode = $sct#404223003
* reasonCode.text = "Deep venous thrombosis of lower extremity"
* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(Specimen/Serum) "Serum specimen"
* specimen[+] = Reference(Specimen/Blood-coag)

Instance: HansGuggindieluft
InstanceOf: CHCorePatient
Title: "Hans Guggindieluft"
Description: "CH-Core-Patient, refers to 1-tvt"
Usage: #example
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>id</b>: HansGuggindieluft\n      </p><p><b>meta</b>: \n      </p><p><b>identifier</b>: 012/08.111111\n      </p><p><b>name</b>: Hans Guggindieluft \n      </p><p><b>gender</b>: MALE\n      </p><p><b>birthDate</b>: Jan 01, 1981\n      </p><p><b>maritalStatus</b>: unverheiratet \n        <span style=\"background: LightGoldenRodYellow\">(Details : {$ech-11-maritalstatus code '5' = '5', given as 'unverheiratet'})</span></p><h3>Communications</h3><table class=\"grid\"><tr><td>-</td><td><b>Language</b></td><td><b>Preferred</b></td></tr><tr><td>*</td><td>Deutsch (Schweiz) \n            <span style=\"background: LightGoldenRodYellow\">(Details : {urn:ietf:bcp:47 code 'de-CH' = 'German (Region=Schweiz))</span></td><td>true</td></tr></table></div>"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.city = "Zürich"
* extension[=].valueAddress.country = "Schweiz"
* extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient-ech-11-placeoforigin"
* extension[=].valueAddress.city = "Breitenbach"
* extension[=].valueAddress.state = "BL"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-religion"
* extension[=].valueCodeableConcept = $religiousAffiliation#1007 "Atheism"
* identifier.type = $v2-0203#MR
* identifier.system = "urn:oid:2.16.756.5.30.999999.1"
* identifier.value = "012/08.111111"
* name.family = "Guggindieluft"
* name.given = "Hans"
* telecom[0].system = #phone
* telecom[=].value = "079 979 79 79"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "hans.guggindieluft@example.ch"
* gender = #male
* birthDate = "1981-01-01"
* maritalStatus = $ech-11-maritalstatus#5 "unverheiratet"
* communication.language = urn:ietf:bcp:47#de-CH
* communication.language.text = "Deutsch (Schweiz)"
* communication.preferred = true

Instance: MarcMustermannArztpraxis
InstanceOf: CHCorePractitionerRole
Title: "Marc Mustermann at Arztpraxis"
Description: "PractitionerRole, refers to 1-tvt"
Usage: #example
* practitioner = Reference(Practitioner/MarcMustermann)
* organization = Reference(Organization/Arztpraxis)

Instance: MarcMustermann
InstanceOf: CHCorePractitioner
Title: "Marc Mustermann"
Description: "Practitioner, works in Arztpraxis, refers to 1-tvt and 5-biol-monit"
Usage: #example
* identifier[0].system = "urn:oid:2.51.1.3"
* identifier[=].value = "7601000050700"
* identifier[+].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1" // ZSR
* identifier[=].value = "A123309"
* name.use = #official
* name.family = "Mustermann"
* name.given = "Marc"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC
* telecom[0].system = #phone
* telecom[=].value = "033 333 22 11"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "marc.mustermann@gruppenpraxis.ch"
* telecom[=].use = #work

Instance: Arztpraxis
InstanceOf: CHCoreOrganization
Title: "Arztpraxis"
Description: "Practice, refers to 2-pertussis and 3-gyn"
Usage: #example
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000235503"
* name = "Arztpraxis Messen"
* telecom[0].system = #phone
* telecom[=].value = "+41555545566"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "info@arztpraxis.ch"
* telecom[=].use = #work
* telecom[+].system = #url
* telecom[=].value = "http://www.arztpraxis.ch"
* telecom[=].use = #work
* address.line = "Doktorgasse 2"
* address.city = "Messen"
* address.postalCode = "3254"
* address.country = "CH"