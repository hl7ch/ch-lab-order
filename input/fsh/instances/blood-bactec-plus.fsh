Instance: blood-bactec-plus
InstanceOf: Specimen
Title: "Blood Sample Bacteriology"
Description: "Example for Specimen for bacteriological Examination"
Usage: #definition
* identifier.value = "88888-15394-75465"
* accessionIdentifier.value = "77777-bc987-dd888"
* status = #available
* type = $sct#119297000 "Blood sample"
* subject = Reference(FranzMuster)
* receivedTime = "2020-08-16T16:40:17Z"
* request = Reference(lab)
* collection.collector = Reference(MarcMustermann)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* processing.procedure = #FREEZE "Tiefkühlen bei -18° Celsius" // TODO should have another Value not in the WS: colling, freezing ...
* container.identifier.value = "4e88a-bc987-dd888-00000-bact"
* container.description = "Sarstedt Blutkultur-Adapter Universal"
* container.type = $sct#702120003 "Blood collection Luer adaptor"
* container.additiveCodeableConcept = $v2-0371#BACTM "Bacterial Transport medium"