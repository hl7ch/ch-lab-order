Instance: Serum
InstanceOf: Specimen
Title: "Serum Sample"
Description: "Example for Specimen of Serum"
Usage: #definition
* identifier.value = "48736-12345-75465"
* accessionIdentifier.value = "4e88a-12345-dd888"
* status = #available
* type = SCT#119364003 "Serum specimen (specimen)"
* subject = Reference(Patient/BeatBorer)
* collection.collector = Reference(MarcMustermann)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* collection.bodySite.coding.system = "http://snomed.info/sct"
* collection.bodySite.coding.code.value = "49852007"
* collection.bodySite.coding.display = "Mediale Cubital Vene"
* collection.fastingStatusCodeableConcept.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0916"
* collection.fastingStatusCodeableConcept.coding.code.value = "F"
* collection.fastingStatusCodeableConcept.coding.display = "Patient nüchtern vor Prozedur"
* container.type = SCT#706053007 "General specimen container (physical object)"
