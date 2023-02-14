Instance: Throat-swab
InstanceOf: Specimen
Title: "Throat Swab"
Description: "Example for Specimen of Throat Swab"
Usage: #example
* identifier.value = "48736-15394-75465"
* accessionIdentifier.value = "4e88a-bc987-dd888"
* status = #available
* type = $sct#258529004 "Throat swab (specimen)"
* subject = Reference(Patient/FranzMuster)
* receivedTime = "2020-08-16T16:40:17Z"
* request = Reference(Lab)
* collection.collector = Reference(Practitioner/MarcMustermann)
* collection.collectedDateTime = "2020-08-16T06:40:17Z"
* collection.method = $sct#418932006 "Oral swab (specimen)"
* collection.bodySite = $sct#264231000 "Entire throat (surface region of neck) (body structure)"
* container.identifier.value = "4e88a-bc987-dd888-12345"
* container.description = "ESwab 486C tubes Copan"
* container.type = $sct#706053007 "General specimen container (physical object)"
* note.text = "Some notes to Sample"