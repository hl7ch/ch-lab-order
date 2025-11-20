Profile: ChLabOrderCompositionWithSR_AndForm
Parent: ChOrfComposition
Id: ch-lab-order-composition-with-sr-and-form
Title: "CH LAB-Order Composition with ServiceRequest and Form"
Description: "Definition of the Composition resource using ServiceRequest and Form."
* . ^short = "CH LAB-Order Composition with ServiceRequest and Form"

* type from DocumentEntryTypeCode (required)
* type ^short = "Precise type of clinical document"
* category 1..1
* category from DocumentEntryClassCode (required)
* category ^short = "Order Document"

// ---------- Composition.section.entry:Questionnaire - 10.11.21: According to Ballot #18, Cardinality set to 0..
* section[orderReferral].entry[Questionnaire] 1..1

// ---------- Composition.section.entry:QuestionnaireResponse - - 10.11.21: According to Ballot #18, Cardinality set to 0..
* section[orderReferral].entry[QuestionnaireResponse] 1..1

// ---------- Composition.section.entry:ServiceRequest ----------
* section[orderReferral].entry[ServiceRequest]  // ^type.targetProfile = Canonical(ChLabOrderSRContainer)
