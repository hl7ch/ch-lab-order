Instance: Blood-bactec-plus
InstanceOf: Specimen
Title: "Blood Sample Bacteriology"
Description: "Example for Specimen for bacteriological Examination"
Usage: #example
* identifier.value = "88888-15394-75465"
* accessionIdentifier.value = "77777-bc987-dd888"
* status = #available
* type = $sct#119297000 "Blood sample"
* subject = Reference(Patient/FranzMuster)
* receivedTime = "2020-08-16T16:40:17Z"
// * request = Reference(Lab) Why the specimen was collected
* collection.collector = Reference(Practitioner/MarcMustermann)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* processing.procedure.coding.system = "https://www.hl7.org/fhir/v2/0373" 
* processing.procedure.coding.code.value = "ACID"
* processing.procedure.coding.system = "http://build.fhir.org/ig/hl7ch/ch-lab-order/CodeSystem/Specimen.processing.procedure"
* processing.procedure.coding.code.value = "COOLING"
* container.identifier.value = "4e88a-bc987-dd888-00000-bact"
* container.description = "Sarstedt Blutkultur-Adapter Universal"
* container.type = $sct#702120003 "Blood collection Luer adaptor"
* container.additiveCodeableConcept = V2-0371#BACTM "Bacterial Transport medium"