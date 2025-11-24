Instance: Lsac
InstanceOf: Specimen
Usage: #inline
* identifier.value = "48736-22222-75465"
* accessionIdentifier.value = "4e88a-11111-dd888"
* status = #available
* type = $sct#258450006 "Cerebrospinal fluid sample"
* subject = Reference(Patient/FranzMuster)
* receivedTime = "2023-12-01T16:40:17Z"
* request = Reference(ServiceRequestGeneric)
* collection.collector = Reference(Practitioner/MarcMustermann)
* collection.collectedDateTime = "2023-12-01T06:40:17Z"
* collection.method = $sct#277762005 "Lumbar puncture (procedure)"
* container[0].identifier.value = "4e88a-bc987-dd888-12345-cc"
* container[=].description = "Container for Chemistry"
* container[=].type = $sct#706053007 "General specimen container (physical object)"
* container[+].identifier.value = "4e88a-bc987-dd888-12345-mic"
* container[=].description = "Container for Microbiology"
* container[=].type = $sct#706053007 "General specimen container (physical object)"
* container[+].identifier.value = "4e88a-bc987-dd888-12345-cyt"
* container[=].description = "Container for Cytology"
* container[=].type = $sct#706053007 "General specimen container (physical object)"
* container[+].identifier.value = "4e88a-bc987-dd888-12345-other"
* container[=].description = "Container for other Examens, VDRL, electrophoresis/immunofixation"
* container[=].type = $sct#706053007 "General specimen container (physical object)"
* note.text = "e.g. Priority of exams"