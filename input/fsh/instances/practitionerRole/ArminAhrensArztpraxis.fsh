// example in 6-histopath-Servicerequest
Instance: ArminAhrensArztpraxis
InstanceOf: CHCorePractitionerRole
Title: "Marc Mustermann at Arztpraxis"
Description: "PractitionerRole, refers to 1-tvt"
Usage: #example
* practitioner = Reference(Practitioner/ArminAhrens)
* organization = Reference(Organization/Arztpraxis)