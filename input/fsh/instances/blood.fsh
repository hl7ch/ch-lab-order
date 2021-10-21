Instance: blood
InstanceOf: Specimen
Title: "Blood Sample"
Description: "Example for Specimen for Haematological Examination"
Usage: #definition
* status = #available
* type = $sct#119297000 "Blood sample"
* subject = Reference(BeatBorer)
* collection.collector = Reference(MarcMustermann)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* container.type = $sct#706053007 "General specimen container (physical object)"