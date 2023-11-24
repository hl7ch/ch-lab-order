Profile: ChLabOrderComposition
Parent: CHCoreComposition //  ChOrfComposition replaced by Composition
Id: ch-lab-order-composition
Title: "CH LAB-Order Composition by Service Request"
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
* subject 1.. MS
* subject ^short = "Patient as the principle target of service request"
* author ..1 MS
* author only Reference(CHCorePractitionerRole)
* author ^short = "The person/organization responsible for the form content"
* title MS
* title ^short = "Meaningful title"

// ---------- Composition.section.entry:ServiceRequest ----------

* section MS
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open

// ---------- Composition.section:orderReferral ----------
* section contains orderReferral 1..1 MS
* section[orderReferral] ^short = "Contains the data that supports the order and referral by form."
* section[orderReferral].title 1..1 MS
* section[orderReferral].title ^short = "Order-Referral"
* section[orderReferral].code 1..1 MS
* section[orderReferral].code = $loinc#93037-0 // "Portable medical order form"
* section[orderReferral].text MS
* section[orderReferral].section 0..0

* section[orderReferral].entry MS
* section[orderReferral].entry ^slicing.discriminator.type = #profile
* section[orderReferral].entry ^slicing.discriminator.path = "resolve()"
* section[orderReferral].entry ^slicing.rules = #open
// ---------- Composition.section.entry:Questionnaire - 10.11.21: According to Ballot #18, Cardinality set to 0..
// * section[orderReferral].entry contains Questionnaire 0..1 MS
// * section[orderReferral].entry[Questionnaire] only Reference(ChOrfQuestionnaire)
// * section[orderReferral].entry[Questionnaire] ^short = "Questionnaire"
// * section[orderReferral].entry[Questionnaire].reference 1.. MS
// ---------- Composition.section.entry:QuestionnaireResponse - - 10.11.21: According to Ballot #18, Cardinality set to 0..
// * section[orderReferral].entry contains QuestionnaireResponse 0..1 MS
// * section[orderReferral].entry[QuestionnaireResponse] only Reference(ChOrfQuestionnaireResponse)
// * section[orderReferral].entry[QuestionnaireResponse] ^short = "QuestionnaireResponse"
// * section[orderReferral].entry[QuestionnaireResponse].reference 1.. MS
// ---------- Composition.section.entry:ServiceRequest ----------
* section[orderReferral].entry contains ServiceRequest 1..* MS
* section[orderReferral].entry[ServiceRequest] only Reference(ChLabOrderSRSingletest or ChLabOrderSRContainer)
* section[orderReferral].entry[ServiceRequest] ^short = "ServiceRequest"
* section[orderReferral].entry[ServiceRequest].reference 1.. MS
// ---------- Composition.section.entry:DocumentReference ----------
* section[orderReferral].entry contains DocumentReference 0..* MS
* section[orderReferral].entry[DocumentReference] only Reference(ChLabOrderDocument)
* section[orderReferral].entry[DocumentReference] ^short = "DocumentReference"
* section[orderReferral].entry[DocumentReference].reference 1.. MS