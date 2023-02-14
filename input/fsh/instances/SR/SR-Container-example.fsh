Instance: SR-Container-example
InstanceOf: ChLabOrderSRcontainer
Title: "laborder SR Container Example"
Description: "Service Request example as container for 2 other containers, CreaClearance and Electrolytes"
Usage: #example
* id = "SR-Container-example"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"

* basedOn = Reference(SR-CreaClearance)
* basedOn = Reference(SR-Blood-Electrolytes)

// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-1234567"

* status = #active
* intent = #original-order
* category = CH-LAB-ORDER-servicerequest-categories#RequestForLabExam "Anforderung Laboruntersuchung"

* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannArztpraxis)
