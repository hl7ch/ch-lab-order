Instance: Blood
InstanceOf: Specimen
Title: "Blood Sample, generic"
Description: "Example for Specimen for Haematological Examination"
Usage: #example
* status = #available
* type = $sct#119297000 "Blood sample"
* subject = Reference(Patient/BeatBorer)
* collection.collector = Reference(Practitioner/MarcMustermann)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* collection.bodySite = $sct#721029009 "Structure of superficial vein of left upper limb (body structure)"
* container.type = $sct#706053007 "General specimen container (physical object)"
* note.text = "Specimen is grossly lipemic"