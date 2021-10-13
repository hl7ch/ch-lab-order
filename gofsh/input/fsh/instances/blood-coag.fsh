Instance: blood-coag
InstanceOf: Specimen
Title: "Blood Sample Coagulation"
Description: "Example for Specimen for haemostatic Examination"
Usage: #definition
* identifier.value = "48736-55555-75465"
* accessionIdentifier.value = "4e88a-66666-dd888"
* status = #available
* type = $sct#119297000 "Blood sample"
* subject = Reference(FranzMuster)
* receivedTime = "2020-08-16T16:40:17Z"
* request = Reference(lab)
* collection.collector = Reference(MarcMustermann)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* container.identifier.value = "4e88a-bc987-dd888-00001-bcoag"
* container.description = "S-Monovette grün"
* container.type = $sct#702120003 "Blood collection Luer adaptor"
* container.additiveCodeableConcept = $v2-0371#C38 "3.8% Citrate"