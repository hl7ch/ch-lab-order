Profile: ChLabOrderDiagnosisCondition
Parent: Condition
Id: ch-lab-order-diagnosis-condition
Title: "CH LAB-Order Diagnosis Condition"
Description: "Definition for the Diagnosis Condition resource in the context of CH LAB-Order."

// Could be integrated to access a Problem List
// * . ^short = "CH LAB-Order Diagnosis Condition"
// * category 1..1 MS
// * category = ConditionCategory#problem-list-item
// * category ^short = "Problem List Item"
// * code 1.. MS 
// * code.text 1.. MS
// * subject MS
// * subject only Reference(ChCorePatient) 