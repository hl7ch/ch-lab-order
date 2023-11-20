Instance: LabOrder-ServiceRequest-creatinine-clearance
InstanceOf: ChLabOrderSRContainer
Title: "CH LAB-Order example Service Request for Creatinine clearance"
Description: "Example for Service Request of Creatinine [Moles/volume] and 24h Urin Creatinen"
Usage: #example
* id = "LabOrder-creatinine-clearance"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
// * instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/PlanDefinition/procedure-creatinine-clearance"

* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/PlanDefinition/creatinine-clearance"

// der SR referenziert auf 3 weitere SR
* basedOn[0] = Reference(LabOrder-ServiceRequest-urine24h-creatinine)
* basedOn[+] = Reference(LabOrder-ServiceRequest-creatinine)

// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-1234567"

* status = #active
* intent = #original-order
* category = $sct#721963009 "Order (record artifact)"

// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Clinical Chemistry Tests ----
* code.coding[0] = $loinc#2164-2 "Creatinine renal clearance in 24 hour Urine and Serum or Plasma"

// orderDetails: Additional order information, codeableConcept

* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannArztpraxis)
* reasonCode = $sct#90688005
* reasonCode.text = "Chronic renal failure syndrome (disorder)"
* insurance = Reference(HealthInsuranceCard)
* supportingInfo = Reference(MedicationStatement/Medication-diclofenac)
* specimen[0] = Reference(Specimen/Serum) "Serum specimen"
// * specimen[+] = Reference(Specimen/Blood)

Instance: Medication-diclofenac
InstanceOf: MedicationStatement
Description: "Example of medication record"
Usage: #example
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
InstanceOf: Medication
Description: "Example of a medication product"
Usage: #example
* contained = sub01
* code = $sct#775563008 "Product containing only diclofenac (medicinal product)"
* form = $sct#385055001 "Tablet (basic dose form)"
* ingredient.itemReference = Reference(sub01)
* ingredient.strength.numerator = 50 'mg'
* ingredient.strength.denominator = 1 http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm#TAB

Instance: sub01
InstanceOf: Substance
Description: "Example of a medication substance"
Usage: #inline
* code = $sct#62039007 "Diclofenac sodium (substance)"