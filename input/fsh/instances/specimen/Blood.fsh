Instance: Blood
InstanceOf: Specimen
Title: "Blood Sample"
Description: "Example for Specimen for Haematological Examination"
Usage: #definition
* status = #available
* type = SCT#119297000 "Blood sample"
* subject = Reference(Patient/BeatBorer)
* collection.collector = Reference(MarcMustermann)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* collection.bodySite = SCT#721029009 "Structure of superficial vein of left upper limb (body structure)"
* container.type = SCT#706053007 "General specimen container (physical object)"
* note.text = "Specimen is grossly lipemic"