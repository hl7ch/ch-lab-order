Instance: HansGuggindieluft
InstanceOf: CHCorePatient
Title: "Hans Guggindieluft"
Description: "CH-Core-Patient, refers to 1-tvt"
Usage: #definition
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>id</b>: HansGuggindieluft\n      </p><p><b>meta</b>: \n      </p><p><b>identifier</b>: 012/08.111111\n      </p><p><b>name</b>: Hans Guggindieluft \n      </p><p><b>gender</b>: MALE\n      </p><p><b>birthDate</b>: Jan 01, 1981\n      </p><p><b>maritalStatus</b>: unverheiratet \n        <span style=\"background: LightGoldenRodYellow\">(Details : {http://fhir.ch/ig/ch-core/CodeSystem/ech-11-maritalstatus code '5' = '5', given as 'unverheiratet'})</span></p><h3>Communications</h3><table class=\"grid\"><tr><td>-</td><td><b>Language</b></td><td><b>Preferred</b></td></tr><tr><td>*</td><td>Deutsch (Schweiz) \n            <span style=\"background: LightGoldenRodYellow\">(Details : {urn:oid:2.16.840.1.113883.6.316 code 'de-CH' = 'German (Region=Schweiz))</span></td><td>true</td></tr></table></div>"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.city = "Zürich"
* extension[=].valueAddress.country = "Schweiz"
* extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient-ech-11-placeoforigin"
* extension[=].valueAddress.city = "Breitenbach"
* extension[=].valueAddress.state = "BL"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-religion"
* extension[=].valueCodeableConcept = $v3-ReligiousAffiliation#1007 "Atheism"
* identifier.type = V2-0203#MR
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
* communication.language = urn:oid:2.16.840.1.113883.6.316#de-CH
* communication.language.text = "Deutsch (Schweiz)"
* communication.preferred = true