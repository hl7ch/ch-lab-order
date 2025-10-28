ValueSet: BibliographyArtifactType
Id: bibliography-artifact-type
Title: "Types of bibliographic artifacts"
Description: "documentation | justification | citation"
// * ^meta.lastUpdated = "2019-12-20T10:30:00Z"
// * ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
// * ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
// * ^extension[=].valueCode = #oo
// * ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
// * ^extension[=].valueInteger = 2
// * ^extension[=].valueInteger.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
// * ^extension[=].valueInteger.extension.valueCanonical = "http://hl7.org/fhir/uv/order-catalog/ImplementationGuide/ig-uv-order-catalog"
// * ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
// * ^extension[=].valueCode = #trial-use
// * ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
// * ^extension[=].valueCode.extension.valueCanonical = "http://hl7.org/fhir/uv/order-catalog/ImplementationGuide/ig-uv-order-catalog"
// * ^url = "http://hl7.org/fhir/uv/order-catalog/ValueSet/bibliography-artifact-type"
// * ^identifier.system = "urn:ietf:rfc:3986"
// * ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.40.999.48.4"
// * ^version = "1.0.0-ballot"
* ^status = #active
* ^experimental = false
* ^date = "2025-01-01T00:00:00+00:00"
* ^publisher = "HL7 International / Orders and Observations"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/orders"
* ^jurisdiction = $m49.htm#001
* ^immutable = false
* RelatedArtifactType#documentation "Documentation"
* RelatedArtifactType#justification "Justification"
* RelatedArtifactType#citation "Citation"