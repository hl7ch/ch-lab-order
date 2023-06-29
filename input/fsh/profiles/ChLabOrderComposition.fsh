Profile: ChLabOrderComposition
Parent: ChOrfComposition
Id: ch-lab-order-composition
Title: "CH LAB-Order Composition"
Description: "Definition for Composition resource in the context of CH LAB-Order"
* . ^short = "CH LAB-Order Composition"
// * ^version = "0.9.0"
// * ^status = #draft
// * ^date = "2019-01-30"
// * ^publisher = "HL7 Switzerland"
// * ^contact[0].name = "HL7 Switzerland"
// * ^contact[=].telecom.system = #url
// * ^contact[=].telecom.value = "https://www.hl7.ch/"
// * ^contact[+].name = "Marcel Hanselmann"
// * ^contact[=].telecom.system = #email
// * ^contact[=].telecom.value = "hanselmann48@gmail.com"
// * ^jurisdiction = urn:iso:std:iso:3166#CH
// * ^copyright = "CC0-1.0"
// * type from $DocumentEntry.typeCode (required)
// * type ^short = "Precise type of clinical document"
// * category 1..1
// * category from $DocumentEntry.classCode (required)
// * category ^short = "Order Document"

// ---- Composition.section.entry:https://hl7.org/fhir/R4/questionnaire.html ----------
// * section[orderReferral].entry[Questionnaire] ^type.targetProfile = Canonical(ChLabOrderQuestionnaire)

// ---------- Composition.section.entry:ServiceRequest ----------
// * section[orderReferral].entry[QuestionnaireResponse] ^type.targetProfile = Canonical(ChLabOrderQuestionnaireResponse)

// ---------- Composition.section.entry:ServiceRequest ----------
// * section[orderReferral].entry[ServiceRequest] ^type.targetProfile = Canonical(ChLabOrderSRContainer)