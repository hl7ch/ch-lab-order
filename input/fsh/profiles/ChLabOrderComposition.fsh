Profile: ChLabOrderComposition
Parent: ChOrfComposition
Id: ch-lab-order-composition
Title: "CH LAB-Order Composition by Service Request only"
Description: "Definition for Composition resource in the context of CH CH LAB-Order by Service Request"
* . ^short = "CH LAB-Order Composition"
* ^version = "0.9.0"
* ^status = #draft
* ^date = "2019-01-30"
* ^publisher = "HL7 Switzerland"
* ^contact[0].name = "HL7 Switzerland"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.hl7.ch/"
* ^contact[+].name = "Marcel Hanselmann"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "hanselmann48@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CH
* ^copyright = "CC0-1.0"
* type from DocumentEntryTypeCode (required)
* type ^short = "Precise type of clinical document"
* category 1..1
* category from DocumentEntryClassCode (required)
* category ^short = "Order Document"

// ---------- Composition.section.entry:Questionnaire - 10.11.21: According to Ballot #18, Cardinality set to 0..
* section[orderReferral].entry[Questionnaire] 0..0

// ---------- Composition.section.entry:QuestionnaireResponse - - 10.11.21: According to Ballot #18, Cardinality set to 0..
* section[orderReferral].entry[QuestionnaireResponse] 0..0

// ---------- Composition.section.entry:ServiceRequest ----------
* section[orderReferral].entry[ServiceRequest] // ^type.targetProfile = Canonical(ChLabOrderSRContainer)