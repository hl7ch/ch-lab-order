Instance: BeatBorer
InstanceOf: CHCorePatient
Title: "Beat Borer"
Description: "Example for CH-Core-Patient"
Usage: #definition
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>id</b>: BeatBorer\n      </p><p><b>meta</b>: \n      </p><p><b>identifier</b>: 012/08.111115\n      </p><p><b>name</b>: Beat Borer \n      </p><p><b>gender</b>: MALE\n      </p><p><b>birthDate</b>: Jun 06, 1986\n      </p><p><b>maritalStatus</b>: verheiratet \n        <span style=\"background: LightGoldenRodYellow\">(Details : {http://fhir.ch/ig/ch-core/CodeSystem/ech-11-maritalstatus code '6' = '6', given as 'in eingetragener Partnerschaft'})</span></p><h3>Communications</h3><table class=\"grid\"><tr><td>-</td><td><b>Language</b></td><td><b>Preferred</b></td></tr><tr><td>*</td><td>Deutsch (Schweiz) \n            <span style=\"background: LightGoldenRodYellow\">(Details : {urn:oid:2.16.840.1.113883.6.316 code 'de-CH' = 'German (Region=Schweiz))</span></td><td>true</td></tr></table></div>"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.city = "Lausanne"
* extension[=].valueAddress.country = "Schweiz"
* extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient-ech-11-placeoforigin"
* extension[=].valueAddress.city = "Köniz"
* extension[=].valueAddress.state = "BE"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-religion"
* extension[=].valueCodeableConcept = RELIGIOUSAFFILIATION#1077 "Protestant"
* identifier.type = V2-0203#MR
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
* maritalStatus = ECH-11-maritalstatus#2 "verheiratet"
* communication.language = urn:oid:2.16.840.1.113883.6.316#de-CH
* communication.language.text = "Deutsch (Schweiz)"
* communication.preferred = true