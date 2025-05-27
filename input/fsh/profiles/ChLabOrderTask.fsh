Profile: ChLabOrderTask
Parent: Task
Id: ch-lab-orders-task
Title: "CH LAB Order Task"
Description: "Profile for lab-related workflow Tasks such as fulfilling a ServiceRequest."

* code 1..1
* code from $task-codeVS (extensible)
// * code.coding 1..1
// * code.coding from $task-codeVS (extensible)

* focus 1..1
* focus only Reference(ChLabOrderSR)

* input 0..*
* input.type 1..1
* input.type.coding from LoincOrSnomed (preferred)
* input.value[x] 1..1
