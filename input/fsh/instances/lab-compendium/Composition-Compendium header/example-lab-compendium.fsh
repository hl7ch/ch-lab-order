Instance: example-lab-compendium-header
InstanceOf: Composition
Title: "Example for lab compendium header"
Description: "This Composition is used as example for a Laboratory Compendium Header"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/CatalogHeader"
* language = #en-US
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en-US\" lang=\"en-US\">\n            <p><b>Additional Narrative: </b></p>\n            <p><b>Laboratory compendium title</b>: The good testing laboratory - Directory of Diagnostic Services</p>\n            <p><b>id:</b> example-lab-compendium-header</p>\n            <p><b>meta - profile:</b> hl7.org/fhir/uv/order-catalog/StructureDefinition/CatalogHeader</p>\n            <p><b>status:</b> preliminary</p>\n            <p><b>type:</b> catalog</p>\n            <p><b>category:</b> protocol</p>\n            <p><b>date published:</b> June 8, 2020</p>\n            <p><b>valid from:</b> 2020-08-01 <b>to:</b> 2021-12-31</p>\n            <p><b>author:</b> <a href=\"Organization-LaborPipette.html\"> The good testing laboratory</a></p>\n            <p><b>custodian:</b> <a href=\"Organization-LaborPipette.html\"> The good testing laboratory</a></p>\n        </div>"

* extension.url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ValidityPeriod"
* extension.valuePeriod.start = "2025-01-01"
* extension.valuePeriod.end = "2025-12-31"
* identifier.use = #official
* identifier.system = "http://example.org"
* identifier.value = "GoodLabCompendium"
* status = #preliminary
* type.text = "Catalog"
* category = $catalogType#protocol
* date = "2025-01-01T17:00:00+02:00"
* author = Reference(Organization/LaborPipette)
* title = "Pipette laboratory - Directory of Diagnostic Services"
* custodian = Reference(Organization/LaborPipette)
