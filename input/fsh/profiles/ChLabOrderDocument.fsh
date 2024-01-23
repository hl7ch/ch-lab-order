Profile: ChLabOrderDocument
Parent: CHCoreDocument
Id: ch-lab-order-document
Title: "CH LAB-Order Document with Service Request"
Description: "Definition of the bundle for the lab order document, parent is CHCoreDocument"
* . ^short = "CH Lab-Order Bundle by Service Request only"
* . ^definition = "This IG follows the IHE Laboratory Testing Workflow (LTW) Profile: 
An Order Filler (LIS) accepts from an Order Placer a single Order, which is sent to automation manager (LIS, LAS, Analyzer Manager). The automation manager converts the the laboratory order into “Analytical Work Order Steps” (AWOS). The intended IVD Device (Analyzer) queries the Analyzer manager for AWOS related to a specimen-in-container, performs the requested tests and sends the results back to the analyzer manager and Order Filler 
(which is concept commonly used in HL7) or Laboratory Service Request (Concept commonly used in DICOM). 
Consequently one CH Lab-Order Document contains one CH Lab-Order ServiceRequest which depicts one Placer Order 
equal one Filler Order equal one Laboratory Service Request."
* ^version = "0.1.0"
* ^experimental = false
* ^publisher = "eHealth Suisse"
* . ^short = "CH LAB-Order Document"
* identifier MS
* identifier ^short = "Document Identifier"
* identifier.system MS
* identifier.system = "urn:ietf:rfc:3986" (exactly)
* identifier.value MS
* identifier.value ^short = "UUID as Document Identifier"
* type MS
* timestamp MS
* timestamp ^short = "The document's creation date and time"
* total 0..0
* link 0..0
* entry MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open

// ---------- Bundle.entry:Composition ----------
* entry[Composition] 1..1
* entry[Composition] ^short = "Lab order composition"
* entry[Composition].resource 1..
* entry[Composition].resource only ChLabOrderComposition
