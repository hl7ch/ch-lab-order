// example in 1-tvt-Servicerequest
Instance: MarcMustermannArztpraxis
InstanceOf: CHCorePractitionerRole
Title: "Marc Mustermann at Arztpraxis"
Description: "PractitionerRole"
Usage: #example
* practitioner = Reference(Practitioner/MarcMustermann)
* organization = Reference(Organization/Arztpraxis)