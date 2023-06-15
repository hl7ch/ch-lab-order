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
* ^copyright = "CC-BY-SA-4.0"

// ---- instantiates Canonical
* instantiatesCanonical 1.. MS

// * Is based On ChLabOrderSRLabtest or other SRContainer
* basedOn MS
* basedOn only Reference(ChLabOrderSRLabtest or ChLabOrderSRContainer) // Labtest or Selfreferential

* requisition 1..1 MS

// ---- Canonical --- url to PlanDefinition | ActivityDefinition
// * instantiatesCanonical ^slicing.discriminator.type = #value
// * instantiatesCanonical ^slicing.discriminator.path = "Catalog/PlanDefinition"
// * instantiatesCanonical ^slicing.rules = #open
// * instantiatesCanonical ^slicing.description = "choose desired PlanDefinition of test/panel"
// * instantiatesCanonical ^slicing.ordered = false

// ---- basedOn 1..n ---- Reference to further SR
// * basedOn ^slicing.discriminator.type = #value
// * basedOn ^slicing.discriminator.path = "this"
// * basedOn ^slicing.rules = #open
// * basedOn ^slicing.description = ""
// * basedOn ^slicing.ordered = false

// ---- requisition 1 ---- grouperID

//------- category -------
// * category 1..1
// * category from ServiceRequestCategories (required)
// * category ^short = "Classification of Service Request: order of lab or histopathological tests/panels, request for test-results or request for 2nd opinion"
// * category ^binding.description = "High-level kind of a clinical document at a macro level."

// ------ code -------

// * code MS
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
// ---- Examples of Container ----
// ######################################################################

// ---- Container containing 2 other Containers
// ######################################################################

Instance: SR-Container
InstanceOf: ChLabOrderSRContainer
Title: "Example of an ChLabOrderSRContainer containing 2 References on other Containers"
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
* category = $servicerequest-categories#RequestForLabExam "Anforderung Laboruntersuchung"

* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannArztpraxis)

// ---- Container containing 2 Tests ----------
// ######################################################################

Instance: SR-CreaClearance
InstanceOf: ChLabOrderSRContainer
Title: "LabOrder Service Request Creatinin Clearance Panel"
Description: "Example for Service Request for Creatinine-Clearance Container"
Usage: #example
* id = "CreaClearance"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"

* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/PlanDefinition/Creatinine-Clearance"

* basedOn = Reference(SR-Creatinine-Serum)
* basedOn = Reference(SR-Creatinine-24h-Urine)

// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-1234567"

* status = #active
* intent = #original-order
* category = $servicerequest-categories#RequestForLabExam "Anforderung Laboruntersuchung"

// ---- Code, LOINC or SNOMED CT ----
// * code.coding[0] = $sct#167181009 "Measurement of renal clearance of creatinine (procedure)"
// * code.coding[+] = $lnc#34555-3 "Creatinine 24H renal clearance panel"
* code = $lnc#34555-3 "Creatinine 24H renal clearance panel"

// orderDetails: Additional order information, codeableConcept
* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannArztpraxis)
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
Description: "Example for Service Request for Serum Electrolyte Panel"
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
* category = $servicerequest-categories#RequestForLabExam "Anforderung Laboruntersuchung"

// ---- Code, LOINC or SNOMED CT ----
// * code.coding[0] = $sct#20109005 "Electrolytes measurement, serum (procedure)"
// * code.coding[+] = $lnc#24326-1 "Electrolytes 1998 panel - Serum or Plasma"
* code = $lnc#24326-1 "Electrolytes 1998 panel - Serum or Plasma"

// orderDetails: Additional order information, codeableConcept
* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannArztpraxis)
* reasonCode = $sct#723188008
* reasonCode.text = "Renal insufficiency (disorder)"
* insurance = Reference(HealthInsuranceCard)

// ---- Specimen 
* specimen[0] = Reference(Specimen/Serum) "Serum specimen"
// * specimen[+] = Reference(Specimen/Blood)