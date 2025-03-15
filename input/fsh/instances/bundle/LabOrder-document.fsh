Instance: LabOrder-document
InstanceOf: ChLabOrderDocumentWithSR
Title: "Renal Insufficiency Panel: Laboratory Order Document"
Description: "Document containing a Service Request for a Laboratory Panel (Battery) to assess the renal insufficiency by eGFR and Albumin/Creatinin Ratio in Urine"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"  // Must be a valid URI
* identifier.value = "urn:uuid:bc4715e6-c46d-4794-a379-b809f24ef05d"  // Must be a valid UUID
* type = #document
* timestamp = "2025-03-05T12:00:00Z"
* entry[0].fullUrl = "urn:uuid:1b7b58b1-b952-4190-a0e0-59b4936573a5"    // Composition
* entry[=].resource = 1b7b58b1-b952-4190-a0e0-59b4936573a5

* entry[+].fullUrl = "urn:uuid:b82ca08b-9476-44a7-9893-74adbe93ab54"    // Patient Urs Schmid
* entry[=].resource = UrsSchmid
* entry[+].fullUrl = "urn:uuid:d6917aad-86bd-4bb6-af13-795372344206"    // Practitioner Esther Meier
* entry[=].resource = EstherMeier
* entry[+].fullUrl = "urn:uuid:1301bc1f-9d23-4529-b30d-f1a0e792823c"    // Practitionerrole Esther Meier at Gruppenpraxis Olten
* entry[=].resource = EstherMeierGruppenpraxisOlten
* entry[+].fullUrl = "urn:uuid:9c8584fb-6a33-4ec9-bacd-489c5e1e6bb0"    // Organization Praxis GruppenpraxisOlten
* entry[=].resource = GruppenpraxisOlten

* entry[+].fullUrl = "urn:uuid:248f80c7-3d8c-4aa1-8eb6-53bcbb6c9bec"    // Service Request LabOrderRenalInsufficiencyPanel, entry 5
* entry[=].resource = LabOrderRenalInsufficiencyPanel

* entry[+].fullUrl = "urn:uuid:9ed971bb-247d-446a-80fb-f6aa7eaf374b"    // Service Request eGFR, entry 6
* entry[=].resource = LabOrder-eGFR
* entry[+].fullUrl = "urn:uuid:87c6a2f7-981d-469e-a5f5-e5ecf6286207"    // Service Request LabOrderSerumCreatinine, entry 7
* entry[=].resource = LabOrderSerumCreatinine-eGFR
* entry[+].fullUrl = "urn:uuid:62dd8013-6145-4bbb-8588-b172caaa13af"    // Service Request uACR, entry 8
* entry[=].resource = LabOrder-uACR
* entry[+].fullUrl = "urn:uuid:d1be525d-a58c-410e-9dfb-aef46ce6f0fa"    // Service Request LabOrderUrineAlbumin-ServiceRequest, entry 9
* entry[=].resource = LabOrderUrineAlbumin
* entry[+].fullUrl = "urn:uuid:5d616c75-34c9-47f0-8e15-2df623755c41"    // Service Request LabOrderUrineCreatinine-ServiceRequest, entry 10
* entry[=].resource = LabOrderUrineCreatinine

Instance: 1b7b58b1-b952-4190-a0e0-59b4936573a5
InstanceOf: ChLabOrderCompositionWithSR
Title: "Renal Insufficiency Panel: Laboratory Order Composition"
Usage: #inline
* meta.versionId = "1"
* meta.lastUpdated = "2022-10-20T17:04:38.520+00:00"
* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div>Case study Chronic Renal Insufficiency</div><div>      <h3>Order for Renal Insufficiency Panel</h3>      <p>Urs Schmid suffers from a chronic renal insufficiency. His doctor wants to determine the stage for further action.</p>  </div></div>"

// ---- Sender and Receiver ----
* extension[0].extension.url = "enterer"
* extension[=].extension.valueReference = Reference(urn:uuid:1301bc1f-9d23-4529-b30d-f1a0e792823c)
* extension[=].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-dataenterer"
// * extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-urgentnoficationcontactforthisdocument"
// * extension[=].valueReference = Reference(EvaErlenmeyerLaborPipette)
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-urgentnoficationcontactfortheresponsetothisdocument"
* extension[=].valueReference = Reference(urn:uuid:1301bc1f-9d23-4529-b30d-f1a0e792823c)
// * extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-receiver"
// * extension[=].valueReference = Reference(EvaErlenmeyerLaborPipette)
// * extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
// * extension[=].valueReference = Reference(EstherMeierGruppenpraxisOlten) 
* extension[+].url = "http://fhir.ch/ig/ch-orf/StructureDefinition/ch-orf-copyreceiver"
* extension[=].valueReference = Reference(urn:uuid:b82ca08b-9476-44a7-9893-74adbe93ab54)
* status = #final
* category = $sct#721963009 "Order (record artifact)"
* type = $sct#721965002 "Laboratory order (record artifact)"
* subject = Reference(urn:uuid:b82ca08b-9476-44a7-9893-74adbe93ab54)
* date = "2025-03-05T12:00:00Z"
* author = Reference(urn:uuid:1301bc1f-9d23-4529-b30d-f1a0e792823c)  // Practitionerrole
* title = "CH LAB-Order Renal Insufficiency Panel Document"

* section[orderReferral].title = "Laboratory Order by Service Request for Renal Insufficiency Panel"
* section[orderReferral].text.status = #generated
* section[orderReferral].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n Laboratory Order: Composition containing the needed Service Requests, estimated GFR and Albumin/Creatinine Ratio</div>"
* section[orderReferral].entry[ServiceRequest][0] = Reference(urn:uuid:248f80c7-3d8c-4aa1-8eb6-53bcbb6c9bec)    // LabOrderRenalInsufficiencyPanel-ServiceRequest 
* section[orderReferral].entry[ServiceRequest][+] = Reference(urn:uuid:9ed971bb-247d-446a-80fb-f6aa7eaf374b)    // eGFR-ServiceRequest
* section[orderReferral].entry[ServiceRequest][+] = Reference(urn:uuid:87c6a2f7-981d-469e-a5f5-e5ecf6286207)    // LabOrderSerumCreatinine-ServiceRequest

* section[orderReferral].entry[ServiceRequest][+] = Reference(urn:uuid:62dd8013-6145-4bbb-8588-b172caaa13af)    // uACR-Service Request 
* section[orderReferral].entry[ServiceRequest][+] = Reference(urn:uuid:d1be525d-a58c-410e-9dfb-aef46ce6f0fa)    // LabOrderUrineAlbumin-ServiceRequest
* section[orderReferral].entry[ServiceRequest][+] = Reference(urn:uuid:5d616c75-34c9-47f0-8e15-2df623755c41)    // LabOrderUrineCreatinine-ServiceRequest

Instance: UrsSchmid
InstanceOf: CHCorePatient
Title: "Patient Urs Schmid"
Description: "CH Core Patient Urs Schmid"
Usage: #example
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>id</b>: Urs Schmid\n      </p><p><b>meta</b>: \n      </p><p><b>identifier</b>: 012/08.111111\n      </p><p><b>name</b>: Urs Schmid \n      </p><p><b>gender</b>: MALE\n      </p><p><b>birthDate</b>: Jan 01, 1981\n      </p><p><b>maritalStatus</b>: unverheiratet \n        <span style=\"background: LightGoldenRodYellow\">(Details : {$ech-11-maritalstatus code '5' = '5', given as 'unverheiratet'})</span></p><h3>Communications</h3><table class=\"grid\"><tr><td>-</td><td><b>Language</b></td><td><b>Preferred</b></td></tr><tr><td>*</td><td>Deutsch (Schweiz) \n            <span style=\"background: LightGoldenRodYellow\">(Details : {urn:ietf:bcp:47 code 'de-CH' = 'German (Region=Schweiz))</span></td><td>true</td></tr></table></div>"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.city = "Zürich"
* extension[=].valueAddress.country = "Schweiz"
* extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient-ech-11-placeoforigin"
* extension[=].valueAddress.city = "Breitenbach"
* extension[=].valueAddress.state = "BL"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-religion"
* extension[=].valueCodeableConcept = $religiousAffiliation#1007 "Atheism"
* identifier.type = $v2-0203#MR
* identifier.system = "urn:oid:2.16.756.5.30.999999.1"
* identifier.value = "012/08.111111"
* name.family = "Guggindieluft"
* name.given = "Hans"
* telecom[0].system = #phone
* telecom[=].value = "079 979 79 79"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "urs.schmid@example.ch"
* gender = #male
* birthDate = "1981-01-01"
* maritalStatus = $ech-11-maritalstatus#5 "unverheiratet"
* communication.language = urn:ietf:bcp:47#de-CH
* communication.language.text = "Deutsch (Schweiz)"
* communication.preferred = true

Instance: EstherMeier
InstanceOf: CHCorePractitioner
Title: "CH Core Practitioner Esther Meier Gruppenpraxis Olten"
Description: "Practitioner, works in GruppenpraxisOlten"
Usage: #example
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000050700"
* identifier[ZSR].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[ZSR].value = "A123309"
* name.use = #official
* name.family = "Meier"
* name.given = "Esther"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC
* telecom[0].system = #phone
* telecom[=].value = "033 444 22 11"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "esther.meier@gruppenpraxisolten.ch"
* telecom[=].use = #work

Instance: EstherMeierGruppenpraxisOlten
InstanceOf: CHCorePractitionerRole
Title: "CH Core PractitionerRole Esther Meier at Gruppenpraxis Olten"
Description: "PractitionerRole"
Usage: #example
* practitioner = Reference(urn:uuid:d6917aad-86bd-4bb6-af13-795372344206)
* organization = Reference(urn:uuid:9c8584fb-6a33-4ec9-bacd-489c5e1e6bb0)

Instance: GruppenpraxisOlten
InstanceOf: CHCoreOrganizationEPR
Title: "CH Core Organization Praxis GruppenpraxisOlten"
Description: "Example for group practice"
Usage: #example
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000241115"
* name = "Gruppenpraxis Olten"
* telecom[0].system = #phone
* telecom[=].value = "+41555556677"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "info@gruppenpraxisolten.ch"
* telecom[=].use = #work
* telecom[+].system = #url
* telecom[=].value = "http://www.gruppenpraxisolten.ch"
* telecom[=].use = #work
* address.line = "Gerbergasse 12"
* address.city = "Olten"
* address.postalCode = "4600"
* address.country = "CH"

Instance: LabOrderRenalInsufficiencyPanel   // 248f80c7-3d8c-4aa1-8eb6-53bcbb6c9bec  // Service Request LabOrderRenalInsufficiencyPanel
InstanceOf: ChLabOrderSR
Title: "Renal Insufficiency Panel: Laboratory Order"
Description: "Service Request for a Laboratory Panel (Battery) to assess the renal insufficiency by eGFR and Albumin/Creatinin Ratio in Urine"
Usage: #example
// // * id ="248f80c7-3d8c-4aa1-8eb6-53bcbb6c9bec"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/PlanDefinition/RenalInsuffiencyLabService"

// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.40"
* requisition.value = "ReqID-123456789"
* status = #active
* intent = #original-order

// What is being ordered
// ---- Clinical Chemistry Tests ----
// * code.coding.code = #108252007
// * code.coding.system = $sct
// * code.coding.display = "Laboratory procedure (procedure)"

* code.coding.code = #LP31398-8
* code.coding.system = $loinc
* code.coding.display = "Renal function"

// ---- orderDetails ----
* orderDetail.coding.code = #NW
* orderDetail.coding.system = $v2-0119
* orderDetail.coding.display = "New order/service"
* orderDetail.text = "Order Control code"

* priority = #urgent
* subject = Reference(urn:uuid:b82ca08b-9476-44a7-9893-74adbe93ab54)
* requester = Reference(urn:uuid:1301bc1f-9d23-4529-b30d-f1a0e792823c)
* reasonCode = $sct#90688005
* reasonCode.text = "Chronic renal failure syndrome (disorder)"

Instance: LabOrder-eGFR  // Service Request eGFR
InstanceOf: ChLabOrderSR
Title: "Renal Insufficiency Panel: Laboratory Order for eGFR CKD-EPI 2021"
Description: "Service Request for calculation of eGFR, using serum creatinine and the CKD-EPI 2021 formula"
Usage: #example
// // * id ="lab-order-egfr"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"

// Reference to superior order
* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/PlanDefinition/eGFR-Service"
* basedOn[+] = Reference(urn:uuid:248f80c7-3d8c-4aa1-8eb6-53bcbb6c9bec)

// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.40"
* requisition.value = "ReqID-123456789"
* status = #active
* intent = #original-order

// What is being ordered
// ---- Clinical Chemistry Tests ----
* code.coding.code = #98979-8
* code.coding.system = $loinc
* code.coding.display = "Glomerular filtration rate [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (CKD-EPI 2021)/1.73 sq M"

// ---- orderDetails ----
* orderDetail.coding.code = #NW
* orderDetail.coding.system = $v2-0119
* orderDetail.coding.display = "New order/service"
* orderDetail.text = "Order Control code"

* priority = #urgent
* subject = Reference(urn:uuid:b82ca08b-9476-44a7-9893-74adbe93ab54)
* requester = Reference(urn:uuid:1301bc1f-9d23-4529-b30d-f1a0e792823c)
* reasonCode = $sct#90688005
* reasonCode.text = "Chronic renal failure syndrome (disorder)"
* insurance = Reference(HealthInsuranceCard)

* specimen[+] = Reference(Specimen/Serum) "Serum specimen"

Instance: LabOrderSerumCreatinine-eGFR  // LabOrderSerumCreatinine-ServiceRequest
InstanceOf: ChLabOrderSR
Title: "Renal Insufficiency Panel: Laboratory Order for Creatinine in Serum or Plasma"
Description: "Service Request for Creatinine [Moles/volume] in Serum or Plasma, used for calculation of eGFR"
Usage: #example
// * id ="lab-order-serum-creatinine-egfr"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123987"
* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/PlanDefinition/CreatinineSerumLabService"

* basedOn = Reference(urn:uuid:9ed971bb-247d-446a-80fb-f6aa7eaf374b)

// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.40"
* requisition.value = "ReqID-123456789"
* status = #active
* intent = #original-order
// * category = $sct#721963009 "Order (record artifact)"

// What is being ordered

// ---- Clinical Chemistry Tests ----
* code.coding.code = #14682-9
* code.coding.system = $loinc
* code.coding.display = "Creatinine [Moles/volume] in Serum or Plasma"

// * orderDetails[+]: // codeableConcept

* priority = #urgent
* subject = Reference(urn:uuid:b82ca08b-9476-44a7-9893-74adbe93ab54)
* requester = Reference(urn:uuid:1301bc1f-9d23-4529-b30d-f1a0e792823c)

* occurrenceDateTime = "2025-01-15"
* reasonCode = $sct#90688005
* reasonCode.text = "Chronic renal failure syndrome (disorder)"
* insurance = Reference(HealthInsuranceCard)
* supportingInfo[+] = Reference(MedicationStatement/Diclofenac)
* supportingInfo[+] = Reference(Condition/Renal-insufficiency)
// * note.text = "Please collect blood sample for serum creatinine and 24-hour urine sample for urine creatinine."
* specimen[0] = Reference(Specimen/Serum) "Serum Sample"

Instance: LabOrder-uACR  // Service Request uACR
InstanceOf: ChLabOrderSR
Title: "Renal Insufficiency Panel: Laboratory Order for Albumin/Creatinine Ratio in Urine"
Description: "Service Request for Calculation of Albumin/Creatinine Ratio in Urine"
Usage: #example
// * id ="lab-order-urine-albumin-creatinine-ratio"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/PlanDefinition/uACR-Service"   // PlanDefinition
// Reference to superior order
* basedOn[+] = Reference(urn:uuid:248f80c7-3d8c-4aa1-8eb6-53bcbb6c9bec)
// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.40"
* requisition.value = "ReqID-123456789"
* status = #active
* intent = #original-order

* code.coding.code = #14585-4
* code.coding.system = $loinc
* code.coding.display = "Albumin/Creatinine [Molar Ratio] in Urine"
// Units of Measure for the ratio mmol/mol{creat}

// ---- orderDetails ----
* orderDetail.coding.code = #NW
* orderDetail.coding.system = $v2-0119
* orderDetail.coding.display = "New order/service"
* orderDetail.text = "Order Control code"

* priority = #urgent
* subject = Reference(urn:uuid:b82ca08b-9476-44a7-9893-74adbe93ab54)    // Patient/UrsSchmid
* requester = Reference(urn:uuid:1301bc1f-9d23-4529-b30d-f1a0e792823c)  // EstherMeierGruppenpraxisOlten
* reasonCode = $sct#90688005
* reasonCode.text = "Chronic renal failure syndrome (disorder)"
* insurance = Reference(HealthInsuranceCard)
* supportingInfo[+] = Reference(MedicationStatement/Diclofenac)
* supportingInfo[+] = Reference(Condition/Renal-insufficiency)
* specimen[+] = Reference(Specimen/Urine) "Urine specimen"

Instance: LabOrderUrineAlbumin  // LabOrderUrineAlbumin-ServiceRequest
InstanceOf: ChLabOrderSR
Title: "Renal Insufficiency Panel: Laboratory Order for Albumin [Moles/volume] in Urine"
Description: "This term was created for, but not limited in use to, the cobas Tina-quant Albumin test kit. (Conversion factors: mg/L x 0.0152 = μmol/L, g/L x 15.2 = μmol/L)"
Usage: #example
// * id ="lab-order-urine-albumin"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
// * instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/PlanDefinition/example-lab-panel-renal-insufficiency"
* basedOn = Reference(urn:uuid:62dd8013-6145-4bbb-8588-b172caaa13af)
// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.40"
* requisition.value = "ReqID-123456789"
* status = #active
* intent = #original-order

// What is being ordered
// ---- Clinical Chemistry Tests ----
* code.coding.code = #77158-4
* code.coding.system = $loinc
* code.coding.display = "Microalbumin [Moles/volume] in Urine by Detection limit <= 3.0 mg/L"

// ---- orderDetails ----
* orderDetail.coding.code = #NW
* orderDetail.coding.system = $v2-0119
* orderDetail.coding.display = "New order/service"
* orderDetail.text = "Order Control code"

* priority = #urgent
* subject = Reference(urn:uuid:b82ca08b-9476-44a7-9893-74adbe93ab54)
* requester = Reference(urn:uuid:1301bc1f-9d23-4529-b30d-f1a0e792823c)
* reasonCode = $sct#90688005
* reasonCode.text = "Chronic renal failure syndrome (disorder)"
* insurance = Reference(HealthInsuranceCard)
* specimen[+] = Reference(Specimen/Urine) "Urine specimen"
* note.text = "Please use umol/L as Unit for the ratio calculation umol[albumin]/mmol[creatinine]."

Instance: LabOrderUrineCreatinine  // LabOrderUrineCreatinine-ServiceRequest
InstanceOf: ChLabOrderSR
Title: "Renal Insufficiency Panel: Laboratory Order for for Creatinine [Moles/volume] in Urine"
Description: "Service Request for Creatinine [Moles/volume] in Urine"
Usage: #example
// * id ="lab-order-urine-creatinine"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123987"
// * instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/PlanDefinition/procedure-creatinine-clearance"
* basedOn = Reference(urn:uuid:62dd8013-6145-4bbb-8588-b172caaa13af)
// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.40"
* requisition.value = "ReqID-123456789"
* status = #active
* intent = #original-order

// What is being ordered
// ---- Clinical Chemistry Tests ----
* code.coding.code = #14683-7
* code.coding.system = $loinc
* code.coding.display = "Creatinine [Moles/volume] in Urine"

// * orderDetails[+]: // codeableConcept
* orderDetail.coding.code = #NW
* orderDetail.coding.system = $v2-0119
* orderDetail.coding.display = "New order/service"
* orderDetail.text = "Order Control code"

* priority = #urgent
* subject = Reference(urn:uuid:b82ca08b-9476-44a7-9893-74adbe93ab54)
* requester = Reference(urn:uuid:1301bc1f-9d23-4529-b30d-f1a0e792823c)
* reasonCode = $sct#90688005
* reasonCode.text = "Chronic renal failure syndrome (disorder)"
* insurance = Reference(HealthInsuranceCard)
* specimen[+] = Reference(Specimen/Urine) "Urine specimen"
* note.text = "Please use mmol/L for the ratio calculation mol[albumin]/mmol[creatinine]. Most labs in Switzerland use mg[albumin]/mmol[creatinine] as unit for the ratio calculation."

// Viollier, Bioanalytica, Medisyn, Unilabs, Synlab, Medics, laborteam: mg[albumin]/mmol[creatinine]
// Risch: mg[albumin]/mmol[creatinine]