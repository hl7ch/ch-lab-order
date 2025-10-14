Profile: ChLab_ChargeItemDefinitionR4
Parent: ChargeItemDefinition
Id: ch-lab-chargeitemdefinition-r4
Title: "CH LAB ChargeItemDefinition R4"
Description: "R4-compatible profile for laboratory catalog billing and charge definitions."

* ^version = "3.0.0"
* ^status = #active
* ^publisher = "HL7 Switzerland / CH LAB"
* ^experimental = false

// ------------------ General metadata ------------------
* url 1..1
* status 1..1
* code 1..1
* description 0..1
* useContext 0..*
* jurisdiction 0..*

// ------------------ Applicability ------------------
* applicability 0..*
* applicability.description 0..1
* applicability.language 0..1
* applicability.expression 0..1

// ------------------ Property groups (simplified for R4) ------------------
* propertyGroup 0..*
* propertyGroup.priceComponent 0..*
* propertyGroup.priceComponent.type 1..1
* propertyGroup.priceComponent.type from http://hl7.org/fhir/ValueSet/invoice-priceComponentType (required)
* propertyGroup.priceComponent.amount 0..1

// ------------------ Relationships ------------------
* derivedFromUri 0..*
* partOf 0..*
* replaces 0..*
// * predecessor 0..1
// * successor 0..1
