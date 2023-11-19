Instance: 4-sepsis-Document
InstanceOf: ChOrfDocument
Title: "CH-LAB-Order 4-sepsis"
Description: "Example Bundle for referral/order for Sepsis Investigation"
Usage: #example
* id = "4-sepsis"
* meta.versionId = "1"
* meta.lastUpdated = "2019-04-01T20:18:41.341+00:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd33595f8"
* type = #document
* timestamp = "2019-04-01T20:18:41.341+00:00"

* entry[0].fullUrl = "http://example.com/fhir/Composition/4-sepsis"
* entry[=].resource = 4-sepsis-Composition

* entry[+].fullUrl = "http://example.com/fhir/Patient/KlebsiellaKeller"
* entry[=].resource = KlebsiellaKeller

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/HansHauser"
* entry[=].resource = HansHauser
* entry[+].fullUrl = "http://example.com/fhir/Organization/Kantonsspital"
* entry[=].resource = Kantonsspital
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/HansHauserKantonsspital"
* entry[=].resource = HansHauserKantonsspital

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/MarcMustermann"  // entry[5]
* entry[=].resource = MarcMustermann
* entry[+].fullUrl = "http://example.com/fhir/Organization/Arztpraxis"
* entry[=].resource = Arztpraxis
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/MarcMustermannArztpraxis"
* entry[=].resource = MarcMustermannArztpraxis

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/EvaErlenmeyer"
* entry[=].resource = EvaErlenmeyer
* entry[+].fullUrl = "http://example.com/fhir/Organization/LaborPipette"
* entry[=].resource = LaborPipette
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/EvaErlenmeyerLaborPipette" // entry[10]
* entry[=].resource = EvaErlenmeyerLaborPipette

* entry[+].fullUrl = "http://example.com/fhir/Coverage/HealthInsuranceCardKlebsiellaKeller"
* entry[=].resource = HealthInsuranceCardKlebsiellaKeller

* entry[+].fullUrl = "http://example.com/fhir/Specimen/Blood-bactec-plus"
* entry[=].resource = Blood-bactec-plus
* entry[+].fullUrl = "http://example.com/fhir/Specimen/Blood-sepsis"
* entry[=].resource = Blood-sepsis
* entry[+].fullUrl = "http://example.com/fhir/Specimen/Urine-sepsis"
* entry[=].resource = Urine-sepsis

* entry[+].fullUrl = "http://example.com/fhir/Questionnaire/4-sepsis"
* entry[=].resource = 4-sepsis-Questionnaire
* entry[+].fullUrl = "http://example.com/fhir/QuestionnaireResponse/4-sepsis"
* entry[=].resource = 4-sepsis-QuestionnaireResponse
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/4-sepsis"
* entry[=].resource = 4-sepsis-ServiceRequest

Instance: KlebsiellaKeller
InstanceOf: CHCorePatient
Title: "Klebsiella Keller"
Description: "CH-Core-Patient, refers to 4-sepsis"
Usage: #example
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>id</b>: KlebsiellaKeller\n      </p><p><b>meta</b>: \n      </p><p><b>identifier</b>: 012/08.111114\n      </p><p><b>name</b>: Klebsiella Keller\n      </p><p><b>gender</b>: FEMALE\n      </p><p><b>birthDate</b>: Dec 12, 1975\n      </p><p><b>maritalStatus</b>: verheiratet \n        <span style=\"background: LightGoldenRodYellow\">(Details : {$ech-11-maritalstatus code '2' = '2', given as 'verheiratet'})</span></p><h3>Communications</h3><table class=\"grid\"><tr><td>-</td><td><b>Language</b></td><td><b>Preferred</b></td></tr><tr><td>*</td><td>Deutsch (Schweiz) \n            <span style=\"background: LightGoldenRodYellow\">(Details : {urn:ietf:bcp:47 code 'de-CH' = 'German (Region=Schweiz))</span></td><td>true</td></tr></table></div>"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.city = "Aarau"
* extension[=].valueAddress.country = "Schweiz"
* extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient-ech-11-placeoforigin"
* extension[=].valueAddress.city = "Lenzburg"
* extension[=].valueAddress.state = "AG"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-religion"
* extension[=].valueCodeableConcept = $religiousAffiliation#1025 "Jehovah's Witnesses"
* identifier.type = $v2-0203#MR
* identifier.system = "urn:oid:2.16.756.5.30.999999.1"
* identifier.value = "012/08.111114"
* name.family = "Klebsiella"
* name.given = "Keller"
* telecom[0].system = #phone
* telecom[=].value = "+41 64 123 45 67"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "klebsiella.keller@example.ch"
* gender = #female
* birthDate = "1975-12-12"
* maritalStatus = $ech-11-maritalstatus#2 "verheiratet"
* communication.language = urn:ietf:bcp:47#de-CH
* communication.language.text = "Deutsch (Schweiz)"
* communication.preferred = true

Instance: HansHauserKantonsspital
InstanceOf: CHCorePractitionerRole
Title: "Hans Hauser Kantonsspital"
Description: "PractitionerRole"
Usage: #example
* practitioner = Reference(Practitioner/HansHauser)
* organization = Reference(Organization/Kantonsspital)

Instance: HansHauser
InstanceOf: CHCorePractitioner
Title: "Hans Hauser"
Description: "Practitioner, Senior Physician at Kantonsspital, refers to 4-sepsis"
Usage: #example
* identifier[0].system = "urn:oid:2.51.1.3"
* identifier[=].value = "7601000050700"
* identifier[+].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1" // ZSR
* identifier[=].value = "A123313"
* name.use = #official
* name.family = "Hauser"
* name.given = "Hans"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC
* telecom[0].system = #phone
* telecom[=].value = "038 888 22 11"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "hans.hauser@gruppenpraxis.ch"
* telecom[=].use = #work

Instance: Kantonsspital
InstanceOf: CHCoreOrganization
Title: "Kantonsspital"
Description: "Example for Hospital"
Usage: #example
* identifier.system = "urn:oid:2.51.1.3"
* identifier.value = "7601000235503"
* name = "Kantonsspital Zug"
* telecom[0].system = #phone
* telecom[=].value = "+41 45 334 55 66"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "info@kantonsspital.zug.ch"
* telecom[=].use = #work
* telecom[+].system = #url
* telecom[=].value = "http://www.kanstonsspital.zug.ch"
* telecom[=].use = #work
* address.use = #work
* address.line[0] = "Seestrasse 14"
* address.line[+] = "Postfach 14"
* address.city = "Zug"
* address.postalCode = "8000"
* address.country = "Schweiz"

Instance: HealthInsuranceCardBeatBorer
InstanceOf: Coverage
Title: "HealthInsuranceCard"
Description: "Example for Insurance"
Usage: #example
* identifier.system = "http://ehic.com/insurer/123456789/member"
* identifier.value = "A123456780"
* status = #active
* type = $v3-ActCode#EHCPOL "extended healthcare"
* subscriber = Reference(Patient/BeatBorer)
* beneficiary = Reference(Patient/BeatBorer)
* period.end = "2012-03-17"
* payor.identifier.system = "http://ehic.com/insurer"
* payor.identifier.value = "123456789"