Instance: 5-biol-monit-Document
InstanceOf: ChOrfDocument
Title: "CH-LAB-Order 5-biol-monit"
Description: "Example Bundle for referral/order for toxicological Monitoring"
Usage: #example
* id = "5-biol-monit"
* meta.versionId = "1"
* meta.lastUpdated = "2019-04-01T20:18:41.341+00:00"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd3359505"
* type = #document
* timestamp = "2019-04-01T20:18:41.341+00:00"

* entry[0].fullUrl = "http://example.com/fhir/Composition/5-biol-monit"
* entry[=].resource = 5-biol-monit-Composition

* entry[+].fullUrl = "http://example.com/fhir/Patient/BeatBorer"
* entry[=].resource = BeatBorer

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/PauloPorcellini"
* entry[=].resource = PauloPorcellini
* entry[+].fullUrl = "http://example.com/fhir/Organization/Suva"
* entry[=].resource = Suva
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/PauloPorcelliniSuva"
* entry[=].resource = PauloPorcelliniSuva

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/MarcMustermann"
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

* entry[+].fullUrl = "http://example.com/fhir/Practitioner/WoodyWorkdoc"
* entry[=].resource = WoodyWorkdoc
* entry[+].fullUrl = "http://example.com/fhir/Organization/SpeiserRails"
* entry[=].resource = SpeiserRails
* entry[+].fullUrl = "http://example.com/fhir/PractitionerRole/WoodyWorkdocSpeiserRails" // entry[10]
* entry[=].resource = WoodyWorkdocSpeiserRails

* entry[+].fullUrl = "http://example.com/fhir/Coverage/HealthInsuranceCardBeatBorer"
* entry[=].resource = HealthInsuranceCardBeatBorer

* entry[+].fullUrl = "http://example.com/fhir/Specimen/Blood-biol-monit"
* entry[=].resource = Blood-biol-monit
* entry[+].fullUrl = "http://example.com/fhir/Specimen/Urine-biol-monit"
* entry[=].resource = Urine-biol-monit


* entry[+].fullUrl = "http://example.com/fhir/Questionnaire/5-biol-monit"
* entry[=].resource = 5-biol-monit-Questionnaire
* entry[+].fullUrl = "http://example.com/fhir/QuestionnaireResponse/5-biol-monit"
* entry[=].resource = 5-biol-monit-QuestionnaireResponse
* entry[+].fullUrl = "http://example.com/fhir/ServiceRequest/5-biol-monit"
* entry[=].resource = 5-biol-monit-ServiceRequest

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