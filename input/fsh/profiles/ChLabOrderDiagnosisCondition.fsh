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
