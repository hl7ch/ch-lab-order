Instance: 3-gyn-ServiceRequest
InstanceOf: ChOrfServiceRequest
Title: "laborder 3-gyn"
Description: "Example for Service Request for preventive gynaecological check-up"
Usage: #example
* id = "3-gyn"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* status = #active
* intent = #original-order
* category = $sct#721963009 "Order (record artifact)"
// code: what is being requested (procedure codes SNOMED CT, Test Codes LOINC)
* code.coding[0] = $loinc#86662-4 "Pap smear tests - FPAR 2.0 set"
* code.coding[+] = $loinc#14503-7 "Human papilloma virus 16+18 Ag [Presence] in Cervix"
* code.coding[+] = $loinc#50556-0 "Urinalysis dipstick panel - Urine by Automated test strip"
* code.coding[+] = $loinc#24364-2 "Obstetric 1996 Pnl Ser+Bld"

* priority = #routine
* subject = Reference(Patient/MarinaRubella)
* requester = Reference(PeterPapGruppenpraxis)
* reasonCode = $sct#702601001
* reasonCode.text = "Routine gynecologic examination (procedure)"
* insurance = Reference(HealthInsuranceCard)
* specimen[0] = Reference(Specimen/Cervix-swab)
* specimen[+] = Reference(Specimen/Blood)
* specimen[+] = Reference(Specimen/Serum)
* specimen[+] = Reference(Specimen/Urine)