Instance: Urine
InstanceOf: Specimen
Title: "Urine Sample, generic"
Description: "Example for Specimen of Urin"
Usage: #example
* identifier.value = "11111-15394-75465"
* accessionIdentifier.value = "22222-bc987-dd888"
* status = #available
* type = $sct#122575003 "Urine sample"
* subject = Reference(Patient/FranzMuster)
* receivedTime = "2023-12-01T16:40:17Z"
* request = Reference(LabOrder-ServiceRequest-generic)
* collection.collector = Reference(Practitioner/MarcMustermann)
* collection.collectedDateTime = "2023-12-01T06:40:17Z"
* container.identifier.value = "4e88a-bc987-dd888-12345-urin"
* container.description = "Uriswab™ : Urine Collection System"
* container.type = $sct#706054001 "Urine specimen container (physical object)"
