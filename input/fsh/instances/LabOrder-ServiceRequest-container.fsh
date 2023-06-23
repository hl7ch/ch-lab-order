Instance: LabOrder-ServiceRequest-container
InstanceOf: ChOrfServiceRequest
Title: "LabOrder Service Request for multiple Lab Tests"
Description: "Example for Service Request as container for multiple Service Requests"
Usage: #example
* id = "LabOrder-container"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"

// der SR referenziert auf 3 weitere SR
* basedOn[0] = Reference(LabOrder-ServiceRequest-hem)
* basedOn[+] = Reference(LabOrder-ServiceRequest-coag)
* basedOn[+] = Reference(LabOrder-ServiceRequest-cc)
* basedOn[+] = Reference(LabOrder-ServiceRequest-container)

* status = #active
* intent = #original-order
* category = $servicerequest-categories#RequestForLabExam "Anforderung Laboruntersuchung"


* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannArztpraxis)
* reasonCode = $sct#404223003
* reasonCode.text = "Deep venous thrombosis of lower extremity"
* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(Specimen/Serum) "Serum specimen"
// * specimen[+] = Reference(Specimen/Blood)