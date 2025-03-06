Instance: example-document
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd3359505"
* type = #document
* timestamp = "2025-03-05T12:00:00Z"
* entry[0].fullUrl = "urn:uuid:composition-1"
* entry[=].resource = composition-1
* entry[+].fullUrl = "urn:uuid:patient-1"
* entry[=].resource = patient-1
* entry[+].fullUrl = "urn:uuid:practitioner-1"
* entry[=].resource = practitioner-1
* entry[+].fullUrl = "urn:uuid:observation-1"
* entry[=].resource = observation-1

Instance: composition-1
InstanceOf: Composition
Usage: #inline
* status = #final
* type = $loinc#34133-9 "Summary of episode note"
* subject = Reference(urn:uuid:patient-1)
* date = "2025-03-05T12:00:00Z"
* author = Reference(urn:uuid:practitioner-1)
* title = "Clinical Summary Document"
* section.title = "Vital Signs"
* section.code = $loinc#8716-3 "Vital signs"
* section.entry = Reference(urn:uuid:observation-1)

Instance: patient-1
InstanceOf: Patient
Usage: #inline
* name.family = "Doe"
* name.given = "John"
* gender = #male
* birthDate = "1980-01-01"

Instance: practitioner-1
InstanceOf: Practitioner
Usage: #inline
* name.family = "Smith"
* name.given = "Alice"

Instance: observation-1
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(urn:uuid:patient-1)
* effectiveDateTime = "2025-03-05T10:00:00Z"
* performer = Reference(urn:uuid:practitioner-1)
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 120 'mm[Hg]' "mmHg"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 80 'mm[Hg]' "mmHg"