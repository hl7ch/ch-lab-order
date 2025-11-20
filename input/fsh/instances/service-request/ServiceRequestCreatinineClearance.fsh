Instance: ServiceRequestCreatinineClearance
InstanceOf: ChLabOrderSR
Title: "CH LAB-Order SR Creatinine Clearance"
Description: "Service Request for Creatinine [Moles/volume] and 24h Urin Creatinin"
Usage: #inline
* id = "lab-order-creatinine-clearance"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[placerOrderIdentifier].value = "Y274589"

// the service request is part of panel ServiceRequestPanelExample
* basedOn[0] = Reference(ServiceRequestPanelExample)

// ---- grouperID, must be repeated in all dependent SR ----
// * requisition.type = $v2-0203#PLAC "Placer Identifier"
// * requisition.system = "urn:oid:2.16.756.5.45"
// * requisition.value = "ReqID-1234567"

* status = #active
* intent = #original-order
// * category = $sct#721963009 "Order (record artifact)"

// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Clinical Chemistry Tests ----
* code.coding.code = #2164-2
* code.coding.system = $loinc
* code.coding.display = "Creatinine renal clearance in 24 hour Urine and Serum or Plasma"

// orderDetails: Additional order information, codeableConcept

* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannGruppenpraxis)
* reasonCode = $sct#90688005
* reasonCode.text = "Chronic renal failure syndrome (disorder)"
// * insurance = Reference(HealthInsuranceCardHansGuggindieluft)
* supportingInfo[+] = Reference(MedicationStatement/Diclofenac)
* supportingInfo[+] = Reference(Condition/Renal-insufficiency)
* specimen[+] = Reference(Specimen/Serum) "Serum specimen"
// * specimen[+] = Reference(Specimen/Blood)

Instance: Diclofenac
InstanceOf: CHCoreMedicationStatement
Title: "CH CoreMedicationStatement: Diclofenac Verordnung"
Description: "Medication Record: Diclofenac"
Usage: #inline
* status = #active
* medicationReference = Reference(Medication/Voltaren)
* subject = Reference(Patient/HansGuggindieluft) "HansGuggindieluft"
* effectiveDateTime = "2023-11-11"
* dateAsserted = "2023-11-11"
* informationSource = Reference(Patient/HansGuggindieluft) "HansGuggindieluft"
// * reason.reference.reference = "Observation/backache"
* note.text = "Patient takes it every day in the morning back pain"
* dosage.sequence = 1
* dosage.text = "1 tablet per day"

Instance: Voltaren
InstanceOf: CHCoreMedication
Title: "Medication Voltaren(product)"
Description: "Example of a medication product"
Usage: #inline
* contained = sub01
* code = $sct#775563008 "Product containing only diclofenac (medicinal product)"
* code.text = "VOLTAREN Drag 50 mg"
* form = $sct#385055001 "Tablet (basic dose form)"
* ingredient.itemReference = Reference(sub01)
// * ingredient.strength.numerator = 50 'mg'
* ingredient.strength.numerator = 50 'mg' "milligram"
* ingredient.strength.denominator = 1 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"

Instance: sub01
InstanceOf: Substance
Description: "Example of a medication substance"
Usage: #inline
* code = $sct#62039007 "Diclofenac sodium (substance)"

Instance: Renal-insufficiency
InstanceOf: Condition
Title: "Condition Renal Insuffiency"
Description: "Problem or Diagnosis from problem list: Renal Insuffiency"
Usage: #inline
* identifier.value = "12345"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
* category = $condition-category#problem-list-item
* severity = $sct#255604002 "Mild (qualifier value)"
* code = $sct#723190009 "Chronic renal insufficiency (disorder)"
* bodySite = $sct#181414000 "Entire kidney (body structure)"
* subject = Reference(Patient/HansGuggindieluft) "HansGuggindieluft"
* onsetDateTime = "2013-04-02"
* recordedDate = "2013-04-04"
* recorder = Reference(Practitioner/MarcMustermann)
* asserter = Reference(Practitioner/MarcMustermann)
