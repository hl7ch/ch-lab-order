Profile: ChLabOrderDiagnosisCondition
Parent: Condition
Id: ch-lab-order-diagnosis-condition
Title: "CH LAB-Order Diagnosis Condition"
Description: "Definition for the Diagnosis Condition resource in the context of CH LAB-Order."

// Could be integrated to access a Problem List, e.g.:


Instance: ProblemItem-renal-failure
InstanceOf: ChLabOrderDiagnosisCondition
Title: "Condition: Renal Failure"
Description: "Problem or Diagnosis from problem list: Renal Failure"
* clinicalStatus = $condition-clinical#active
// * category.coding[0] = $sct#55607006 "Problem"
// * category.coding[+] = $condition-category#problem-list-item
* category = $condition-category#problem-list-item
* code = $sct#90688005
* code.coding.display = "Chronic renal failure syndrome (disorder)"
* code.text = "Item from Problem list"
* subject.reference = "Patient/HansGuggindieluft" 

/*
CodeSystem: ConditionCategoryCodes
Id: condition-category
Title: "Condition Category Codes"
Description: "Preferred value set for Condition Categories."
* ^meta.lastUpdated = "2020-04-09T21:10:28.568+00:00"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pc
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 3
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.1.1073"
* ^version = "0.5.0"
* ^status = #draft
* ^experimental = false
* ^date = "2023-02-25T13:51:42-07:00"
* ^publisher = "FHIR Project team"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/fhir"
* ^caseSensitive = true
* ^valueSet = "http://terminology.hl7.org/ValueSet/condition-category"
* ^content = #complete
* #problem-list-item "Problem List Item" "An item on a problem list that can be managed over time and can be expressed by a practitioner (e.g. physician, nurse), patient, or related person."
* #encounter-diagnosis "Encounter Diagnosis" "A point in time diagnosis (e.g. from a physician or nurse) in context of an encounter."

Alias: $usage-context-type = http://terminology.hl7.org/CodeSystem/usage-context-type

ValueSet: ProblemList
Id: problemlist-hansguggindieluft
Description: "This is an example value set that includes all problems of Hans Guggindielufg"
* ^name = "Problemlist"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "http://hl7.org/fhir/ValueSet/problemlist-hansguggindieluft"
// * ^identifier.system = "http://acme.com/identifiers/valuesets"
// * ^identifier.value = "loinc-cholesterol-int"
* ^version = "20150622"
* ^title = "Problemliste von Hans Guggindiluft"
* ^status = #draft
* ^experimental = true
* ^date = "2015-06-22"
* ^publisher = "HL7 International"
* ^contact.name = "FHIR project team"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/fhir"
* ^useContext.code = $usage-context-type#age
* ^useContext.valueQuantity.comparator = #>
* ^useContext.valueQuantity = 18 'a' "yrs"
* ^purpose = "problemlist owned by patient Hans Guggindieluft"
* ^compose.lockedDate = "2015-06-22"
* ^compose.inactive = true
* $sct#90688005 "Chronic renal failure syndrome (disorder)"
* $sct#64859006 "Osteoporosis (disorder)"
* $sct#160332003 "Family history: Anxiety state (situation)"
* $sct#116101000119100 "Colonoscopy declined (situation)"
*/