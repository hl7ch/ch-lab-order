Instance: LabOrder-ServiceRequest-generic
InstanceOf: ChLabOrderSRSingletest
Title: "CH LAB Service Request for some single test"
Description: "Example for Service Request single test"
Usage: #example
* id = "LabOrder-generic"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-hemoglobine-panel"

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
* code.coding[0] = $loinc#59260-0 "Hemoglobin [Moles/volume] in Blood"

// orderDetails: Additional order information, codeableConcept

* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannGruppenpraxis)
* reasonCode = $sct#90688005
* reasonCode.text = "Chronic renal failure syndrome (disorder)"
* insurance = Reference(HealthInsuranceCard)
* supportingInfo = Reference(MedicationStatement/Acetylsalicylat)
* specimen[0] = Reference(Specimen/Blood) "Blood"
// * specimen[+] = Reference(Specimen/Blood)

Instance: Acetylsalicylat
InstanceOf: MedicationStatement
Title: "MedicationStatement: Acetylsalicylat Verordnung"
Description: "Example of Medication Record"
Usage: #example
* status = #active
* medicationReference = Reference(Medication/Aspirin)
* subject = Reference(Patient/HansGuggindieluft) "HansGuggindieluft"
* effectiveDateTime = "2023-11-11"
* dateAsserted = "2023-11-11"
* informationSource = Reference(Patient/HansGuggindieluft) "HansGuggindieluft"
// * reason.reference.reference = "Observation/backache"
* note.text = "Patient takes it every day in the morning back pain"
* dosage.sequence = 1
* dosage.text = "1 tablet per day"

Instance: Aspirin
InstanceOf: Medication
Title: "Medication: Aspirin"
Description: "Example of a Medication Product"
Usage: #example
* contained = sub02
* code = $sct#774656009 "Product containing only aspirin (medicinal product)"
* form = $sct#385055001 "Tablet (basic dose form)"
* ingredient.itemReference = Reference(sub02)
* ingredient.strength.numerator = 250 'mg'
* ingredient.strength.denominator = 1 http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm#TAB

Instance: sub02
InstanceOf: Substance
Title: "Substance: Aspirin Substanz"
Description: "Example of a medication substance"
Usage: #inline
* code = $sct#387458008 "Aspirin (substance)"