Profile : ChLabOrderMedication
Parent: CHCoreMedication
Title: "CH LAB-Order Medication"
Description: "Medication in Lab Order"


* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^short = "Code of the medication"
* code.coding contains 
    PHARMACODE 0..*

/*
PHARMACODE seems to still been used:
look at:
https://www.gs1network.ch/branchenindex/gesundheitswesen/item/2050-gtin-und-pharmacode-%E2%80%93-warum-braucht-es-beide.html
*/

* code.coding[PHARMACODE] ^short = "Numeric identification key for Swiss products"
* code.coding[PHARMACODE] ^mustSupport = true
* code.coding[PHARMACODE].system 1..1
* code.coding[PHARMACODE].system = "urn:oid:2.16.756.5.30.2.6.1" (exactly)
* code.coding[PHARMACODE].system ^short = "Pharmacode(Schweiz)"
* code.coding[PHARMACODE].code 1..1

* code.text 1.. MS
* code.text ^short = "Medication name"