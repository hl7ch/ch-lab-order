Instance: ServiceRequestGeneric
InstanceOf: ChLabOrderSR
Title: "CH LAB-ServiceRequest for some single test"
Description: "Hemoglobin [Moles/volume] in Blood"
Usage: #example
* id = "service-request-generic"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-hb"

// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-1234567"

* status = #active
* intent = #original-order
// * category = $sct#721963009 "Order (record artifact)"

// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Clinical Chemistry Tests ----
* code.coding.code = #59260-0
* code.coding.system = $loinc
* code.coding.display = "Hemoglobin [Moles/volume] in Blood"

// orderDetails: Additional order information
// * orderDetail.coding = $v2-0119#NW "New order/service"

* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannGruppenpraxis)
* reasonCode = $sct#90688005
* reasonCode.text = "Chronic renal failure syndrome (disorder)"
* insurance = Reference(HealthInsuranceCard)
* supportingInfo = Reference(MedicationStatement/Acetylsalicylat)
* specimen[+] = Reference(Specimen/Blood) "Blood"
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
Title: "Medication Aspirin"
Description: "Example of a Medication Product"
Usage: #example
* contained = sub02
* code = $sct#774656009 "Product containing only aspirin (medicinal product)"
* form = $sct#385055001 "Tablet (basic dose form)"
* ingredient.itemReference = Reference(sub02)
* ingredient.strength.numerator = 250 'mg' "milligram"
* ingredient.strength.denominator = 1 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"

Instance: sub02
InstanceOf: Substance
Title: "Substance: Aspirin Substanz"
Description: "Example of a medication substance"
Usage: #inline
* code = $sct#387458008 "Aspirin (substance)"