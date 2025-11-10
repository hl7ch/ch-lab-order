// example in 1-tvt-Servicerequest
Instance: MarcMustermannGruppenpraxis
InstanceOf: CHCorePractitionerRole
Title: "PractitionerRole Marc Mustermann at Gruppenpraxis"
Description: "PractitionerRole"
Usage: #inline
* practitioner = Reference(Practitioner/MarcMustermann)
* organization = Reference(Organization/Gruppenpraxis)