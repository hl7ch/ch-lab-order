Profile: ChLabOrderSRSingletest
Parent: ChOrfServiceRequest
Id: ch-lab-order-SR-singletest
Title: "CH LAB-Order-SR Single-test"
Description: "Definition of a ServiceRequests of a single LabTest in the context of CH LAB-Order"

* . ^short = "CH LAB-Order ServiceRequest for a labtest"
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

* instantiatesCanonical 1..1 MS

// ---- SR Container and SR Labtest must have same requisition identifier ----

* basedOn only Reference(ChLabOrderSRSingletest) // Labtest
* requisition 1..1 MS

//---- Use only Code from LOINC or Snomed CT -----
//---- https://www.devdays.com/wp-content/uploads/2021/12/Daniel-Vreeman-LOINC-_-DevDays-2019-Amsterdam-1.pdf

// TODO: remove the line below as soon as ERROR in Service Request Resource is solved
* code ^binding.description = "Codes for tests or services that can be carried out by a designated individual, organization or healthcare service. For laboratory, LOINC is preferred."

* code 1..1


// * code from https://fhir.loinc.org/ValueSet/LL1162-8 // warning not found by validator

// * code from $microbiol-procedures (extensible)

// * code from http://hl7.org/fhir/ValueSet/report-codes or $microbiol-procedures

// Includes all codes defined in $loinc
// * code from $microbiol-procedures
// * code from $sct
// error 'Found a reference to a CodeSystem ($sct) where a ValueSet belongs'

// * code from $sct (example)
// * code ^binding.extension[=].valueString = "LOINC_Code"

// * code ^binding.extension[=].valueString = "AllergyCode"
// * code ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
// * code ^binding.extension[=].valueBoolean = true
// * code ^binding.description = "The code for allergy."

// ---- Canonical --- url to PlanDefinition | ActivityDefinition
//* instantiatesCanonical ^slicing.discriminator.type = #value
//* instantiatesCanonical ^slicing.discriminator.path = "Catalog/PlanDefinition"
//* instantiatesCanonical ^slicing.rules = #open
//* instantiatesCanonical ^slicing.description = "choose desired PlanDefinition of test/panel"
//* instantiatesCanonical ^slicing.ordered = false


// ---- Reference to further SR
// * basedOn ^slicing.discriminator.type = #value
// * basedOn ^slicing.discriminator.path = "this"
// * basedOn ^slicing.rules = #open
// * basedOn ^slicing.description = ""
// * basedOn ^slicing.ordered = false

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
// ---- Examples of Service Request of for single tests ----
// ######################################################################

// ---- Service Request of single Test Chloride ------------------------------
// ######################################################################

Instance: SR-Chloride
InstanceOf: ChLabOrderSRSingletest
Title: "LabOrder Service Request for single Test: Chloride"
Description: "Example for Service Request of Chloride in Serum"
Usage: #example
* id = "SR-Chloride"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"

* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-chloride-serum"

// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-1234567"

* status = #active
* intent = #original-order
* category = $servicerequest-categories#RequestForLabExam "Anforderung Laboruntersuchung"

// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Clinical Chemistry Tests ----
// * code.coding[0] = $loinc#2075-0 "Chloride [Moles/volume] in Serum or Plasma"
* code = $loinc#2075-0 "Chloride [Moles/volume] in Serum or Plasma"

// orderDetails: Additional order information, codeableConcept

* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannArztpraxis)
* reasonCode = $sct#723188008
* reasonCode.text = "Renal insufficiency (disorder)"
* insurance = Reference(HealthInsuranceCard)

// ---- Specimen ----
* specimen[0] = Reference(Specimen/Serum) "Serum specimen"
* specimen[+] = Reference(Specimen/Serum-capillary)
// * specimen[+] = Reference(Specimen/Blood)


// ---- Service Request of single Test Creatinine-24h-Urine ------------------------------
// ######################################################################

Instance: SR-Creatinine-24h-Urine
InstanceOf: ChLabOrderSRSingletest
Title: "LabOrder Service Request for single Test: Creatinine24 h Urine"
Description: "Example for Service Request"
Usage: #example
* id = "SR-Creatinine-24h-Urine"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"

* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-urine24h-creatinine"

// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-1234567"

* status = #active
* intent = #original-order
* category = $servicerequest-categories#RequestForLabExam "Anforderung Laboruntersuchung"

// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Clinical Chemistry Tests ----
* code = $loinc#20624-3 "Creatinine [Mass/volume] in 24 hour Urine"

// orderDetails: Additional order information, codeableConcept

* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannArztpraxis)
* reasonCode = $sct#723188008
* reasonCode.text = "Renal insufficiency (disorder)"
* insurance = Reference(HealthInsuranceCard)

// ---- Specimen ----
* specimen[0] = Reference(Specimen/Urine-24h) "Urin 24h Sample"

// ---- Service Request of single Test Creatinine-Serum ------------------------------
// ######################################################################

Instance: SR-Creatinine-Serum
InstanceOf: ChLabOrderSRSingletest
Title: "LabOrder Service Request for single Test: Creatinine-Serum"
Description: "Example for Service Request"
Usage: #example
* id = "SR-Creatinine-Serum"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"

* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-creatinine-serum"

// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-1234567"

* status = #active
* intent = #original-order
* category = $servicerequest-categories#RequestForLabExam "Anforderung Laboruntersuchung"

// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Clinical Chemistry Tests ----
* code = $loinc#2160-0 "Creatinine [Mass/volume] in Serum or Plasma"

// orderDetails: Additional order information, codeableConcept

* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannArztpraxis)
* reasonCode = $sct#723188008
* reasonCode.text = "Renal insufficiency (disorder)"
* insurance = Reference(HealthInsuranceCard)

// ---- Specimen ----
* specimen[0] = Reference(Specimen/Serum) "Serum specimen"
* specimen[+] = Reference(Specimen/Serum-capillary)
// * specimen[+] = Reference(Specimen/Blood)

// ---- Service Request of single Test Potassium ------------------------------
// ######################################################################

Instance: SR-Potassium
InstanceOf: ChLabOrderSRSingletest
Title: "LabOrder Service Request for single Test: Potassium"
Description: "Example for Service Request of Potassium in Serum"
Usage: #example
* id = "SR-Potassium"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"

* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-potassium-serum"

// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-1234567"

* status = #active
* intent = #original-order
* category = $servicerequest-categories#RequestForLabExam "Anforderung Laboruntersuchung"

// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Clinical Chemistry Tests ----
* code = $loinc#2823-3 "Potassium [Moles/volume] in Serum or Plasma"

// orderDetails: Additional order information, codeableConcept

* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannArztpraxis)
* reasonCode = $sct#723188008
* reasonCode.text = "Renal insufficiency (disorder)"
* insurance = Reference(HealthInsuranceCard)

// ---- Specimen ----
* specimen[0] = Reference(Specimen/Serum) "Serum specimen"
* specimen[+] = Reference(Specimen/Serum-capillary)
// * specimen[+] = Reference(Specimen/Blood)

// ---- Service Request of single Test Sodium ------------------------------
// ######################################################################

Instance: SR-Sodium
InstanceOf: ChLabOrderSRSingletest
Title: "LabOrder Service Request for single Test: Sodium"
Description: "Example for Service Request of Sodium in Serum"
Usage: #example
* id = "SR-Sodium"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"

* instantiatesCanonical = "http://fhir.ch/ig/ch-lab-order/lab-compendium/ActivityDefinition/procedure-sodium-serum"

// ---- grouperID, must be repeated in all dependent SR ----
* requisition.type = $v2-0203#PLAC "Placer Identifier"
* requisition.system = "urn:oid:2.16.756.5.30"
* requisition.value = "ReqID-1234567"


* status = #active
* intent = #original-order
* category = $servicerequest-categories#RequestForLabExam "Anforderung Laboruntersuchung"

// What is being ordered
// * basedOn = Reference(SR-example)
// ---- Clinical Chemistry Tests ----
* code = $loinc#2951-2 "Sodium [Moles/volume] in Serum or Plasma"

// orderDetails: Additional order information, codeableConcept

* priority = #urgent
* subject = Reference(Patient/HansGuggindieluft)
* requester = Reference(MarcMustermannArztpraxis)
* reasonCode = $sct#723188008
* reasonCode.text = "Renal insufficiency (disorder)"
* insurance = Reference(HealthInsuranceCard)

// ---- Specimen ----
* specimen[0] = Reference(Specimen/Serum) "Serum specimen"
* specimen[+] = Reference(Specimen/Serum-capillary)
// * specimen[+] = Reference(Specimen/Blood)