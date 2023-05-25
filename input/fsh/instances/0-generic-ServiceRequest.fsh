Instance: 0-generic-ServiceRequest
InstanceOf: ChOrfServiceRequest
Title: "laborder 0-generic"
Description: "Service Request example as container for 2 other containers, CreaClearance and Electrolytes"
Usage: #example
* id = "0-generic"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"

* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/Catalog/PlanDefinition/Creatinine-Clearance"
* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/Catalog/PlanDefinition/panel-blood-electrolyte"

* basedOn = Reference(SR-CreaClearance)
* basedOn = Reference(SR-Blood-Electrolytes)

* status = #active
* intent = #original-order
* category = $servicerequest-categories#RequestForLabExam "Anforderung Laboruntersuchung"
// orderDetails: Additional order information

* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannArztpraxis)
// * reasonCode = $sct#90688005
// * reasonCode.text = "Chronic renal failure syndrome (disorder)"
* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(Specimen/Serum) "Serum specimen"
* specimen[+] = Reference(Specimen/Urine-24h)