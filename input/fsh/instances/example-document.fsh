Instance: example-document
InstanceOf: Bundle
Description: "Clinical Summary Document"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd3359505"
* type = #document
* timestamp = "2025-03-05T12:00:00Z"
* entry[0].fullUrl = "urn:uuid:acc39a67-5f62-4170-ad05-d7cb70f43ea6"
* entry[=].resource = acc39a67-5f62-4170-ad05-d7cb70f43ea6
* entry[+].fullUrl = "urn:uuid:146d8255-8963-4bdd-b69c-faf9dc7455ca"
* entry[=].resource = 146d8255-8963-4bdd-b69c-faf9dc7455ca
* entry[+].fullUrl = "urn:uuid:a8d35919-6883-4312-8b26-11b964c0e0aa"
* entry[=].resource = a8d35919-6883-4312-8b26-11b964c0e0aa
* entry[+].fullUrl = "urn:uuid:e9690e11-fd84-40f3-acc0-e833ad149259"
* entry[=].resource = e9690e11-fd84-40f3-acc0-e833ad149259

Instance: acc39a67-5f62-4170-ad05-d7cb70f43ea6
InstanceOf: Composition
Usage: #inline
* status = #final
* type = $loinc#34133-9 "Summary of episode note"
* subject = Reference(urn:uuid:146d8255-8963-4bdd-b69c-faf9dc7455ca)
* date = "2025-03-05T12:00:00Z"
* author = Reference(urn:uuid:a8d35919-6883-4312-8b26-11b964c0e0aa)
* title = "Clinical Summary Document"
* section.title = "Vital Signs"
* section.code = $loinc#8716-3 "Vital signs note"
* section.entry = Reference(urn:uuid:e9690e11-fd84-40f3-acc0-e833ad149259)

Instance: 146d8255-8963-4bdd-b69c-faf9dc7455ca
InstanceOf: Patient
Usage: #inline
* name.family = "Doe"
* name.given = "John"
* gender = #male
* birthDate = "1980-01-01"

Instance: a8d35919-6883-4312-8b26-11b964c0e0aa
InstanceOf: Practitioner
Usage: #inline
* name.family = "Smith"
* name.given = "Alice"

Instance: e9690e11-fd84-40f3-acc0-e833ad149259
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(urn:uuid:146d8255-8963-4bdd-b69c-faf9dc7455ca)
* effectiveDateTime = "2025-03-05T10:00:00Z"
* performer = Reference(urn:uuid:a8d35919-6883-4312-8b26-11b964c0e0aa)
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 120 'mm[Hg]' "mmHg"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 80 'mm[Hg]' "mmHg"