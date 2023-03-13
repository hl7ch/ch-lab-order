Instance: Serum-capillary
InstanceOf: Specimen
Title: "Serum Sample"
Description: "Example for Specimen of Serum from capillary blood"
Usage: #example
* identifier.value = "48736-12345-75465"
* accessionIdentifier.value = "4e88a-12345-dd888"
* status = #available
* type = $sct#119364003 "Serum specimen (specimen)"
* subject = Reference(Patient/BeatBorer)
* collection.collector = Reference(Practitioner/MarcMustermann)
* collection.collectedDateTime = "2023-02-16T06:40:17Z"
* collection.bodySite = $sct#49094006 "Structure of capillary of skin (body structure)"
* collection.fastingStatusCodeableConcept = $v2-0916#F "Patient was fasting prior to the procedure."
* container.type = $sct#706053007 "General specimen container (physical object)"
