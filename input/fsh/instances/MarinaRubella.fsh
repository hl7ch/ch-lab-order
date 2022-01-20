Instance: MarinaRubella
InstanceOf: CHCorePatient
Title: "Marina Rubella"
Description: "CH-Core-Patient, refers to 3-gyn"
Usage: #definition
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>id</b>: MarinaRubella\n      </p><p><b>meta</b>: \n      </p><p><b>identifier</b>: 012/08.111113\n      </p><p><b>name</b>: MarinaRubella \n      </p><p><b>gender</b>: FEMALE\n      </p><p><b>birthDate</b>: Aug 08, 1992\n      </p><p><b>maritalStatus</b>: verheiratet \n        <span style=\"background: LightGoldenRodYellow\">(Details : {http://fhir.ch/ig/ch-core/CodeSystem/ech-11-maritalstatus code '2' = '2', given as 'verheiratet'})</span></p><h3>Communications</h3><table class=\"grid\"><tr><td>-</td><td><b>Language</b></td><td><b>Preferred</b></td></tr><tr><td>*</td><td>Italienisch (Schweiz) \n            <span style=\"background: LightGoldenRodYellow\">(Details : {urn:oid:2.16.840.1.113883.6.316 code 'it-CH' = 'Italian (Region=Schweiz))</span></td><td>true</td></tr></table></div>"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.city = "Mendrisio"
* extension[=].valueAddress.country = "Schweiz"
* extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient-ech-11-placeoforigin"
* extension[=].valueAddress.city = "Airolo"
* extension[=].valueAddress.state = "TI"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-religion"
* extension[=].valueCodeableConcept = $v3-ReligiousAffiliation#1077 "Protestant"
* identifier.type = V2-0203#MR
* identifier.system = "urn:oid:2.16.756.5.30.999999.1"
* identifier.value = "012/08.111113"
* name[0].use = #official
* name[=].family.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-name"
* name[=].family.extension.valueCode = #officialName
* name[=].family = "Rubella"
* name[=].given = "Marina"
* name[=].given.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-firstname"
* name[=].given.extension.valueCode = #officialFirstName
* name[+].use = #maiden
* name[=].family.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-name"
* name[=].family.extension.valueCode = #originalName
* name[=].family = "Meier"
* telecom[0].system = #phone
* telecom[=].value = "+41 64 123 45 67"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "marina.rubella@example.ch"
* gender = #female
* birthDate = "1992-08-08"
* address.use = #home
* address.type = #both
* address.line = "Via del bosco 88"
* address.city = "Airolo"
* address.postalCode = "6780"
* maritalStatus = $ech-11-maritalstatus#2 "verheiratet"
* communication.language = urn:oid:2.16.840.1.113883.6.316#it-CH
* communication.language.text = "Italienisch (Schweiz)"
* communication.preferred = true