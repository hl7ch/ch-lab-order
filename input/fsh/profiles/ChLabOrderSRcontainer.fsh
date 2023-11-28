Profile: ChLabOrderSRContainer
Parent: ChOrfServiceRequest
Id: ch-lab-order-SR-container
Title: "CH LAB-Order-SR Container"
Description: "Definition for ServiceRequest Container in the context of CH LAB-Order"

* . ^short = "CH LAB-Order ServiceRequest Container"
* . ^definition = "The IHE Laboratory Testing Workflow Profile covers the workflow related to tests performed on in vitro specimens by a clinical laboratory inside a healthcare institution, for both existing and pending orders, related to identified patients and unidentified or misidentified patients. It maintains the consistency of patient and order information from registration through ordering, scheduling, pre-analytical processing, testing, technical and clinical validation, to results reporting and usage of laoratory observations and comments by the care providers."

* ^version = "0.9.0"
* ^status = #draft
* ^date = "2019-02-05"
* ^publisher = "HL7 Switzerland"
* ^contact[0].name = "HL7 Switzerland"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.hl7.ch/"
* ^contact[+].name = "Marcel Hanselmann"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "hanselmann48@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CH
* ^copyright = "CC0-1.0"

// ---- instantiates Canonical
* instantiatesCanonical 0.. MS

// * Is based On ChLabOrderSRSingletest or other SRContainer
* basedOn 0.. MS
* basedOn only Reference(ChLabOrderSRSingletest or ChLabOrderSRContainer) // Labtest or Selfreferential
* requisition 0..1 MS

* code ^binding.description = "Codes for tests or services that can be carried out by a designated individual, organization or healthcare service. For laboratory, LOINC is preferred."


// * code ^short = "Only allow code from LOINC and/or SNOMED CT"
// 
// * code.coding ^slicing.discriminator.type = #value
// * code.coding ^slicing.discriminator.path = "this"
// * code.coding ^slicing.rules = #closed
// * code.coding ^slicing.description = ""
// * code.coding ^slicing.ordered = false
// * code.coding.version = ""
// * code.coding contains
//     LoincCode 0..1 and
//     SnomedCode 0..1
// * code.coding[LoincCode] MS
// * code.coding[LoincCode] from LOINC
// * code.coding[SnomedCode] MS
// * code.coding[SnomedCode] from SCT 


//------- orderDetail -------

//------- reasonCode -------
* reasonCode MS
* reasonCode ^short = "Clinical Question in free text"
* reasonCode.text 1.. MS
//------- reasonReference -------
* reasonReference MS
* reasonReference ^short = "Reason for the referral (primary diagnosis)"
* reasonReference only Reference(ChLabOrderDiagnosisCondition) 

//------- insurance -------

//------- supportingInfo -------

// ---- specimen ----
* specimen ^short = "Must be present, if order category is #RequestForLabExam or #RequestForHistopathExam"

// ######################################################################
// ---- Examples of Service Request Container ----
// ######################################################################

// ---- Container containing 2 other Containers
// ######################################################################

Instance: SR-Container
InstanceOf: ChLabOrderSRContainer
Title: "ChLabOrderSRContainer containing 2 References on other Containers"
Description: "Service Request example as container for 2 other containers, CreaClearance and Electrolytes"
Usage: #example
* id = "SR-Container"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"

* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/PlanDefinition/Creatinine-Clearance"
* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/PlanDefinition/panel-blood-electrolyte"

* basedOn = Reference(SR-CreaClearance)
* basedOn = Reference(SR-Blood-Electrolytes)

// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-1234567"

* status = #active
* intent = #original-order
* category = $sct#721963009 "Order (record artifact)"

* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannGruppenpraxis)

// ---- Container containing 2 Tests ----------
// ######################################################################

Instance: SR-CreaClearance
InstanceOf: ChLabOrderSRContainer
Title: "CH LAB-Order SRContainer containing the Creatinine Clearance Panel"
Description: "Example for Service Request for Creatinine-Clearance Container"
Usage: #example
* id = "CreaClearance"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"

// * instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/PlanDefinition/Creatinine-Clearance"
* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/PlanDefinition/creatinine-clearance"

* basedOn = Reference(SR-Creatinine-Serum)
* basedOn = Reference(SR-Creatinine-24h-Urine)

// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-1234567"

* status = #active
* intent = #original-order
* category = $sct#721963009 "Order (record artifact)"

// ---- Code, LOINC or SNOMED CT ----
// * code.coding[0] = $sct#167181009 "Measurement of renal clearance of creatinine (procedure)"
// * code.coding[+] = $loinc#34555-3 "Creatinine 24H renal clearance panel"
* code = $loinc#34555-3 "Creatinine 24H renal clearance panel"

// orderDetails: Additional order information, codeableConcept
* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannGruppenpraxis)
* reasonCode = $sct#723188008
* reasonCode.text = "Renal insufficiency (disorder)"
* insurance = Reference(HealthInsuranceCard)

// ---- Specimen: Serum, Urine
* specimen[0] = Reference(Specimen/Serum) "Serum specimen"
* specimen[+] = Reference(Specimen/Blood)
* specimen[+] = Reference(Specimen/Urine)

// ---- Container containing Serum Electrolyte Panel
// ######################################################################

Instance: SR-Blood-Electrolytes
InstanceOf: ChLabOrderSRContainer
Title: "LabOrder Service Request Serum Electrolyte Panel"
Description: "ChLabOrderSRContainer containing the Serum Electrolyte Panel"
Usage: #example
* id = "SR-Electrolytes"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"

* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/PlanDefinition/panel-blood-electrolyte"

// What is being ordered 
// * basedOn = Reference(SR-example)
// ---- Electrolytes 1998 panel - Serum or Plasma ----
* basedOn = Reference(SR-Sodium)
* basedOn = Reference(SR-Potassium)
* basedOn = Reference(SR-Chloride)

// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-1234567"

* status = #active
* intent = #original-order
* category = $sct#721963009 "Order (record artifact)"

// ---- Code, LOINC or SNOMED CT ----
// * code.coding[0] = $sct#20109005 "Electrolytes measurement, serum (procedure)"
// * code.coding[+] = $loinc#24326-1 "Electrolytes 1998 panel - Serum or Plasma"
* code = $loinc#24326-1 "Electrolytes 1998 panel - Serum or Plasma"

// orderDetails: Additional order information, codeableConcept
* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannGruppenpraxis)
* reasonCode = $sct#723188008
* reasonCode.text = "Renal insufficiency (disorder)"
* insurance = Reference(HealthInsuranceCard)

// ---- Specimen 
* specimen[0] = Reference(Specimen/Serum) "Serum specimen"
// * specimen[+] = Reference(Specimen/Blood)