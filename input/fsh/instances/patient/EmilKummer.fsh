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
* birthDate = "2014-05-05"
* maritalStatus = $ech-11-maritalstatus#1 "ledig"
* communication.language = urn:ietf:bcp:47#de-CH
* communication.language.text = "Deutsch (Schweiz)"
* communication.preferred = true