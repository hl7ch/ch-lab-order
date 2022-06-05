Instance: Skin
InstanceOf: Specimen
Title: "Serum Sample"
Description: "Example for Specimen of Serum"
Usage: #definition
* identifier.value = "48736-12345-75465"
* accessionIdentifier.value = "4e99a-12345-dd888"
* status = #available
* type = SCT#396353007 "Specimen from skin obtained by elliptical excision (specimen)"
* subject = Reference(MarinaRubella)
* collection.collector = Reference(MarcMustermannArztpraxis)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* collection.bodySite.coding.system = "http://snomed.info/sct"
* collection.bodySite.coding.code.value = "1149541002"
* collection.bodySite.coding.display = "Entire skin of lumbar region of back (body structure)"
// SNOMED CT has no specific container typ with formalin liquid
* container.type = SCT#701394007 "General specimen receptacle transport container (physical object)"
