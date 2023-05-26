Instance: Pipette-Catalog-Header
InstanceOf: Composition
Title: "Catalog Header of Labor Pipette"
Description: "Example of a Lab header"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/CatalogHeader"
* language = #en-US
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en-US\" lang=\"en-US\">\n
<p><b>Additional Narrative: </b></p>\n
<p><b>Laboratory catalog title</b>: Labor Pipette - Directory of Diagnostic Services</p>\n
<p><b>id:</b> example-lab-catalog-header</p>\n
<p><b>meta - profile:</b> hl7.org/fhir/uv/order-catalog/StructureDefinition/CatalogHeader</p>\n
<p><b>status:</b> preliminary</p>\n
<p><b>type:</b> catalog</p>\n
<p><b>category:</b> protocol</p>\n
<p><b>date published:</b> June 8, 2020</p>\n
<p><b>valid from:</b> 2020-08-01 <b>to:</b> 2021-12-31</p>\n            
<!--
<p><b>author:</b> <a href=\"Organization-Labor-Pipette.html\"> Labor Pipette</a></p>\n            
<p><b>custodian:</b> <a href=\"Organization-Labor-Pipette.html\"> Labor Pipette</a></p>\n        
-->
</div>"
* extension.url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ValidityPeriod"
* extension.valuePeriod.start = "2022-08-01"
* extension.valuePeriod.end = "2022-12-31"
* identifier.use = #official
* identifier.system = "http://fhir.org"
* identifier.value = "PipetteLabCatalog"
* status = #preliminary
* type.text = "Catalog"
* category = http://terminology.hl7.org/CodeSystem/catalogType#protocol
* date = "2020-06-01T17:00:00+02:00"
* author = Reference(Organization/LaborPipette)
* title = "Pipette laboratory - Directory of Diagnostic Services"
* custodian = Reference(Organization/LaborPipette)
