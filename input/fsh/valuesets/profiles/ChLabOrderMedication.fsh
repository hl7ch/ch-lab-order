Profile : ChLabOrderMedication
Parent: Medication
Title: "CH LAB-Order Medication"
Description: "Medication in Lab Order"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^short = "Code of the medication"
* code.coding contains 
    GTIN 0..* and
    PHARMACODE 0..* and
    ATC 0..*

* code.coding[GTIN] ^short = "Use GTIN for Swiss products"
* code.coding[GTIN] ^mustSupport = true
* code.coding[GTIN].system 1..1
* code.coding[GTIN].system = "urn:oid:2.51.1.1" (exactly)
* code.coding[GTIN].system ^short = "Global Trade Item Number (GS1)"
* code.coding[GTIN].code 1..1

* code.coding[PHARMACODE] ^short = "Numeric identification key for Swiss products"
* code.coding[PHARMACODE] ^mustSupport = true
* code.coding[PHARMACODE].system 1..1
* code.coding[PHARMACODE].system = "urn:oid:2.16.756.5.30.2.6.1" (exactly)
* code.coding[PHARMACODE].system ^short = "Pharmacode(Schweiz)"
* code.coding[PHARMACODE].code 1..1

* code.coding[ATC] ^short = "Use ATC for foreign products"
* code.coding[ATC].system 1..1
* code.coding[ATC].system = "http://www.whocc.no/atc" (exactly)
* code.coding[ATC].system ^short = "Anatomical Therapeutic Chemical (ATC) Classification"
* code.coding[ATC].code 1..1

* code.text 1.. MS
* code.text ^short = "Medication name"