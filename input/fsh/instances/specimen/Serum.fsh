Instance: Serum
InstanceOf: Specimen
Title: "Serum Sample"
Description: "Example for Specimen of Serum from venous blood"
Usage: #example
* identifier.value = "48736-12345-75465"
* accessionIdentifier.value = "4e88a-12345-dd888"
* status = #available
* type = $sct#119364003 "Serum specimen (specimen)"
* subject = Reference(Patient/BeatBorer)
* collection.collector = Reference(Practitioner/MarcMustermann)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* collection.bodySite.coding.system = $sct
* collection.bodySite.coding.code.value = "49852007"
* collection.bodySite.coding.display = "Mediale Cubital Vene"
* collection.fastingStatusCodeableConcept.coding.system = $v2-0916
* collection.fastingStatusCodeableConcept.coding.code.value = "F"
* collection.fastingStatusCodeableConcept.coding.display = "Patient nüchtern vor Prozedur"
* container.type = $sct#706053007 "General specimen container (physical object)"
