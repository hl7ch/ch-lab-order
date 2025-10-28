Instance: Gantenbein-Catalog-Header
InstanceOf: ChLabCatalogHeaderR4   // composition profile for Catalog Header
Title: "Catalog Header of Labor Gantenbein"
Description: "Example of a Lab header"
Usage: #example
* meta.profile = "http://fhir.ch/ig/ch-lab-order/StructureDefinition/ch-lab-catalog-header-r4"
* language = #en-US
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en-US\" lang=\"en-US\">\n
  <p><b>Additional Narrative: </b></p>\n 
  <p><b>Laboratory catalog title</b>: Labor Gantenbein - Directory of Diagnostic Services</p>\n 
  <p><b>id:</b> example-lab-catalog-header</p>\n 
  <p><b>meta - profile:</b> hl7.org/fhir/uv/order-catalog/StructureDefinition/CatalogHeader</p>\n
  <p><b>status:</b> preliminary</p>\n
  <p><b>type:</b> catalog</p>\n
  <p><b>category:</b> protocol</p>\n 
  <p><b>date published:</b> June 8, 2020</p>\n
  <p><b>valid from:</b> 2022-08-01 <b>to:</b> 2022-12-31</p>\n
  <!--
  <p><b>author:</b> <a href=\"Organization-Labor-Gantenbein.html\"> Labor Gantenbein</a></p>\n            
  <p><b>custodian:</b> <a href=\"Organization-Labor-Gantenbein.html\"> Labor Gantenbein</a></p>\n
  -->      
</div>"
* extension[validityPeriod].valuePeriod.start = "2025-01-01"
* extension[validityPeriod].valuePeriod.end = "2025-12-31"
* identifier.use = #official
* identifier.system = "http://example.org"
* identifier.value = "GantenbeinLabCatalog"
* status = #preliminary
* type.text = "Catalog"
* category = $catalogType#protocol
* date = "2025-01-01T17:00:00+02:00"
* author = Reference(Organization/LaborGantenbein)
* title = "Gantenbein laboratory - Directory of Diagnostic Services"
* custodian = Reference(Organization/LaborGantenbein)
* attester.time = "2025-01-01T17:00:00+02:00"