Extension: ChLabValidityPeriod
Id: ch-lab-validity-period
Title: "CH LAB Validity Period"
Description: "Validity period of a catalog or catalog entry (R4-compatible adaptation of Order Catalog ValidityPeriod)."
* ^url = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-validity-period"
* ^status = #active
* ^version = "1.0.0"
* ^publisher = "HL7 Switzerland"
* ^jurisdiction = urn:iso:std:iso:3166#CH "Switzerland"
* ^context.type = #element
* ^context.expression = "Composition"

* value[x] only Period
* valuePeriod ^short = "Time range during which the catalog is valid"
