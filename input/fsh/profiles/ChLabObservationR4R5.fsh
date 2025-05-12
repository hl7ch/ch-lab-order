// Define the Extension
Extension: ObservationTriggeredByExtension
Id: observation-triggeredBy
Title: "Triggered By Observation Extension"
Description: "An extension to indicate that an observation was triggered by another observation."
* ^context[0].type = #element
* ^context[0].expression = "Observation"

// Define the sub-elements of the extension
* extension contains
    observation 0..1 and
    type 0..1 and
    reason 0..1

* extension[observation] ^short = "Reference to the triggering observation"
* extension[observation] ^definition = "A reference to another Observation that triggered this one."
* extension[observation].valueReference only Reference(Observation)

* extension[type] ^short = "Type of triggering"
* extension[type] ^definition = "A CodeableConcept representing the type of trigger."
// * extension[type].valueCodeableConcept only CodeableConcept
* extension[type].valueCodeableConcept from ObservationTriggeredByTypeVS (required)

* extension[reason] ^short = "Reason for the trigger"
* extension[reason] ^definition = "A string describing why this observation was triggered."
* extension[reason].valueString only string

// Define the Observation Profile
Profile: ChLabObservationR4R5
Parent: Observation
Id: ch-lab-observation-r4-r5
Title: "My Observation Profile"
Description: "Observation profile that includes the triggeredBy extension."
* extension contains ObservationTriggeredByExtension named triggeredBy 0..1

ValueSet: ObservationTriggeredByTypeVS
Id: observation-triggeredby-type
Title: "Observation TriggeredBy Type"
Description: "Possible reasons why an observation was triggered by another."
* ^url = "http://fhir.ch/ig/ch-lab-order/ValueSet/observation-triggeredby-type"
* ^status = #active
* ^experimental = false
* include codes from system http://fhir.ch/ig/ch-lab-order/CodeSystem/triggeredby-type

CodeSystem: ObservationTriggeredByTypeCS
Id: triggeredby-type
Title: "Observation TriggeredBy Type CodeSystem"
Description: "Code system defining types of observation triggers."
* ^url = "http://fhir.ch/ig/ch-lab-order/CodeSystem/triggeredby-type"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* #follow-up "Follow-up test"
* #confirmatory "Confirmatory test"
* #monitoring "Monitoring test"
* #reflex "Reflex test"
* #repeat "Repeat test"
* #add-on "Add-on test"
* #other "Other test"

// Reflex Testing
// ttps://apps.trihealth.com/trihealthlab/Reflex%20Testing.pdf

/*
Profile: ChLabObservationR4R5
Parent: Observation
Id: observation-with-triggeredby
Title: "Observation with triggeredBy Extension"
Description: "An Observation profile with an extension to support triggeredBy elements from R5."

// Bind the 'type' of triggeredBy to the official ValueSet
// * extension[triggeredBy].extension[observation].valueReference only Reference(Observation)
// * extension[triggeredBy].extension[type].valueCodeableConcept from http://hl7.org/fhir/ValueSet/observation-triggeredbytype (required)
// * extension[triggeredBy].extension[reason].valueString only string


Extension: ObservationTriggeredBy
Id: ObservationTriggeredBy
Context: Observation
* ^url = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/observation-triggeredBy"
* . ^short = "Triggered by another Observation"
* . ^definition = "Links an Observation to another one that triggered it."
* extension contains
    Observation named observation 0..* and
    CodeableConcept named type 0..* and
    string named reason 0..*
* extension[observation] ^short = "Reference to the triggering observation"
* extension[type] ^short = "Type of triggering"
* extension[reason] ^short = "Reason for the trigger"

    observation 1..1 MS and
    type 1..1 MS and
    reason 0..1 MS

* extension[triggeredBy].extension[observation].valueReference only Reference(Observation)
* extension[triggeredBy].extension[observation] ^short = "Reference to the triggering Observation"

* extension[triggeredBy].extension[type].valueCodeableConcept from http://hl7.org/fhir/observation-triggeredbytype (required)
* extension[triggeredBy].extension[type] ^short = "Type of trigger (e.g., reflex, repeat, add-on)"

* extension[triggeredBy].extension[reason].valueString only string
* extension[triggeredBy].extension[reason] ^short = "Reason for triggering"
*/