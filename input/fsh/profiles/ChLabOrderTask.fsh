Profile: ChLabOrderTask
Parent: Task
Id: ch-lab-orders-task
Title: "CH LAB Order Task"
Description: "Profile for lab-related workflow Tasks such as fulfilling a ServiceRequest."

* identifier 1..* MS
* identifier ^short = "Identifier for the Task"

/*
Element     Id	Task.basedOn
Definition	BasedOn refers to a higher-level authorization that triggered the creation of the task.
            It references a "request" resource such as a ServiceRequest, MedicationRequest, CarePlan,
            etc. which is distinct from the "request" resource the task is seeking to fulfill. 
            This latter resource is referenced by focus. For example, based on a CarePlan (= basedOn),
            a task is created to fulfill a ServiceRequest ( = focus ) to collect a specimen from a patient.
*/

* basedOn only Reference(ChLabOrderSR)
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
