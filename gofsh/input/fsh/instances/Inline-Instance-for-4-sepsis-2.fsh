Instance: Inline-Instance-for-4-sepsis-2
InstanceOf: CHCorePatient
Usage: #inline
* id = "KlebsiellaKeller"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.city = "Aarau"
* extension[=].valueAddress.country = "Schweiz"
* extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient-ech-11-placeoforigin"
* extension[=].valueAddress.city = "Lenzburg"
* extension[=].valueAddress.state = "AG"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-religion"
* extension[=].valueCodeableConcept = $v3-ReligiousAffiliation#1025 "Jehovah's Witnesses"
* identifier.type = $v2-0203#MR
* identifier.system = "urn:oid:2.16.756.5.30.999999.1"
* identifier.value = "012/08.111105"
* name.family = "Klebsiella"
* name.given = "Keller"
* gender = #female
* birthDate = "1975-12-12"
* maritalStatus = $ech-11-maritalstatus#2 "verheiratet"
* communication.language = urn:ietf:bcp:47#de-CH
* communication.language.text = "Deutsch (Schweiz)"
* communication.preferred = true