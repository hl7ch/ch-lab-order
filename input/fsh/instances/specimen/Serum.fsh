Instance: Serum
InstanceOf: Specimen
Title: "Serum Sample generic"
Description: "Example for Specimen of Serum from venous blood"
Usage: #inline
* identifier.value = "48736-12345-75465"
* accessionIdentifier.value = "4e88a-12345-dd888"
* status = #available
* type = $sct#119364003 "Serum specimen (specimen)"
* subject = Reference(Patient/HansGuggindieluft)
* collection.collector = Reference(Practitioner/MarcMustermann)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* collection.bodySite = $sct#49852007 "Structure of median cubital vein (body structure)"
* collection.fastingStatusCodeableConcept = $v2-0916#F "Patient was fasting prior to the procedure."
* container.type = $sct#706053007 "General specimen container (physical object)"
