// example in 1-tvt-ServicerequestByForm
Instance: MarcMustermannGruppenpraxis
InstanceOf: CHCorePractitionerRole
Title: "Marc Mustermann at Gruppenpraxis"
Description: "PractitionerRole, refers to 1-tvt"
Usage: #example
* practitioner = Reference(Practitioner/MarcMustermann)
* organization = Reference(Organization/Gruppenpraxis)