Instance: Inline-Instance-for-3-gyn-2
InstanceOf: CHCorePatient
Usage: #inline
* id = "MarinaRubella"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.city = "Mendrisio"
* extension[=].valueAddress.country = "Schweiz"
* extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient-ech-11-placeoforigin"
* extension[=].valueAddress.city = "Airolo"
* extension[=].valueAddress.state = "TI"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-religion"
* extension[=].valueCodeableConcept = $v3-ReligiousAffiliation#1077 "Protestant"
* identifier.type = $v2-0203#MR
* identifier.system = "urn:oid:2.16.756.5.30.999999.1"
* identifier.value = "012/08.111106"
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
* gender = #female
* birthDate = "1992-08-08"
* maritalStatus = $ech-11-maritalstatus#2 "verheiratet"
* communication.language = urn:ietf:bcp:47#it-CH
* communication.language.text = "Italienisch (Schweiz)"
* communication.preferred = true