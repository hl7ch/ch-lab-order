Instance: input-observation-context-for-vitamin-d
InstanceOf: ObservationDefinition
Title: "ObservationDefinition: Vitamin D"
Description: "Context des Vitamin-D Befundes"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/InputObservationDefinition"
// // * language = #de-CH
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"de-CH\" lang=\"de-CH\">\n            <p><b>Additional Narrative - in French language | Vue narrative en français</b> : </p>\n            <p>Elément clinique pertinent &quot;contexte clinique de la prescription du dosage de la vitamine D&quot;</p>\n            <p>Résultats multiples autorisés</p>\n            <p>Types de résultats autorisés : concept codable (<code>CodeableConcept</code>)</p>\n            <p>Valeurs autorisées : <a href=\"ValueSet-clinical-focus-vitamin-d.html\"> ValueSet/clinical-focus-vitamin-d</a></p>\n            <p>Valeurs normales ouvrant droit à facturation : <a href=\"ValueSet-normal-contexts-vitamin-d.html\"> ValueSet/normal-contexts-vitamin-d</a></p>\n        </div>"
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam "Exam"
* code = $loinc#56820-4 "Problem context"
* permittedDataType = #CodeableConcept
* multipleResultsAllowed = true
* validCodedValueSet = Reference(ValueSet/clinical-focus-vitamin-d)
* normalCodedValueSet = Reference(ValueSet/normal-contexts-vitamin-d)