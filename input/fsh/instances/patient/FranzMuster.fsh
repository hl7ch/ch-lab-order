Instance: FranzMuster
InstanceOf: CHCorePatient
Title: "Patient FranzMuster"
Description: "Example for CH-Core-Patient, used in coverage"
Usage: #example
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>id</b>: FranzMuster\n      </p><p><b>meta</b>: \n      </p><p><b>identifier</b>: 80756011110123400008\n      </p><p><b>name</b>: Franz Muster \n      </p><p><b>gender</b>: MALE\n      </p><p><b>birthDate</b>: Jan 27, 1995\n      </p><p><b>maritalStatus</b>: in eingetragener Partnerschaft \n        <span style=\"background: LightGoldenRodYellow\">(Details : {$ech-11-maritalstatus code '6' = '6', given as 'in eingetragener Partnerschaft'})</span></p><h3>Communications</h3><table class=\"grid\"><tr><td>-</td><td><b>Language</b></td><td><b>Preferred</b></td></tr><tr><td>*</td><td>Deutsch (Schweiz) \n            <span style=\"background: LightGoldenRodYellow\">(Details : {urn:ietf:bcp:47 code 'de-CH' = 'German (Region=Schweiz))</span></td><td>true</td></tr></table></div>"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.city = "Paris"
* extension[=].valueAddress.country = "Frankreich"
* extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient-ech-11-placeoforigin"
* extension[=].valueAddress.city = "Köniz"
* extension[=].valueAddress.state = "BE"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-religion"
* extension[=].valueCodeableConcept = $religiousAffiliation#1077 "Protestant"
* identifier[insuranceCardNumber].system = "urn:oid:2.16.756.5.30.1.123.100.1.1.1"
* identifier[insuranceCardNumber].value = "80756011110123400000"
* name.family = "Muster"
* name.given = "Franz"
* telecom[0].system = #phone
* telecom[=].value = "+41 32 321 61 11"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "franz.muster@example.ch"
* gender = #male
* birthDate = "1995-01-27"
* maritalStatus = $ech-11-maritalstatus#6 "in eingetragener Partnerschaft"
* communication.language = urn:ietf:bcp:47#de-CH
* communication.language.text = "Deutsch (Schweiz)"
* communication.preferred = true