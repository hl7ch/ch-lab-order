// Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
Alias: $LabChargeItemDefinition = http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabChargeItemDefinition

Extension: ChLabServiceBillingCode
Id: ChLabServiceBillingCode
Title: "Healthcare Service Billing Code"
Description: "This extension to PlanDefinition conveys a billing code associated with the service represented by the PlanDefinition instance. It may also reference the billing rules associated with this code as a ChargeItemDefinition"
Context: PlanDefinition
// * ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
// * ^extension[=].valueCode = #oo
// * ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics"
// * ^extension[=].valueCode = #can-bind
// * ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
// * ^extension[=].valueInteger = 2
// * ^extension[=].valueInteger.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
// * ^extension[=].valueInteger.extension.valueCanonical = "http://hl7.org/fhir/uv/order-catalog/ImplementationGuide/ig-uv-order-catalog"
// * ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
// * ^extension[=].valueCode = #trial-use
// * ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
// * ^extension[=].valueCode.extension.valueCanonical = "http://hl7.org/fhir/uv/order-catalog/ImplementationGuide/ig-uv-order-catalog"
* ^url = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ChLabServiceBillingCode"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.999.42.24"
* ^version = "1.0.0-ballot"
* ^status = #draft
* ^publisher = "HL7 International / Orders and Observations"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/orders"
// * ^jurisdiction = $m49.htm#001
* ^purpose = "This extension to PlanDefinition is usable for potentially any kind of service or protocole represented by an instance of PlanDefinition"
* url = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ChLabServiceBillingCode" (exactly)
* value[x] only CodeableConcept or Reference
* value[x] ^slicing.discriminator.type = #type
* value[x] ^slicing.discriminator.path = "$this"
* value[x] ^slicing.rules = #closed
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept ^sliceName = "valueCodeableConcept"
* valueReference only Reference($LabChargeItemDefinition)
* valueReference ^sliceName = "valueReference"
* valueReference ^type.aggregation = #referenced