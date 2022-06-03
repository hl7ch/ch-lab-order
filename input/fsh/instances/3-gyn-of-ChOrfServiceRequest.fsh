Instance: 3-gyn-of-ChOrfServiceRequest
InstanceOf: ChOrfServiceRequest
Title: "laborder 3-gyn"
Description: "Example for Service Request for preventive gynaecological check-up"
Usage: #definition
* id = "3-gyn"
* identifier[placerOrderIdentifier].type = V2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* status = #active
* intent = #original-order
* category = CH-LAB-ORDER-servicerequest-categories#RequestForLabExam "Anforderung Laboruntersuchung"
// code: what is being requested (procedure codes SNOMED CT, Test Codes LOINC)
* code.coding[0] = LOINC#86662-4 "Pap smear tests - FPAR 2.0 set"
* code.coding[+] = LOINC#14503-7 "Human papilloma virus 16+18 Ag [Presence] in Cervix"
* code.coding[+] = LOINC#50556-0 "Urinalysis dipstick panel - Urine by Automated test strip"
* code.coding[+] = LOINC#24364-2 "Obstetric 1996 Pnl Ser+Bld"

* priority = #routine
* subject = Reference(MarinaRubella)
* requester = Reference(PeterPapGruppenpraxis)
* reasonCode = SCT#702601001
* reasonCode.text = "Routine gynecologic examination (procedure)"
* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(Cervix-swab)
* specimen[+] = Reference(Blood)
* specimen[+] = Reference(Serum)
* specimen[+] = Reference(Urin)