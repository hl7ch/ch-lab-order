Instance: observation-vitamin-d
InstanceOf: ObservationDefinition
Title: "ObservationDefinition 25-hydroxyvitamin D3 [Moles/Vol]"
Description: "Vitamin-D"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabObservationDefinition"
// * language = #de-CH
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"de-CH\" lang=\"de-CH\">\n            <p><b>Additional Narrative in French language | Vue narrative en français : </b></p>\n            <p>Analyse de biologie médicale : dosage vitamine D dans sérum sanguin</p>\n            <p>Catégorie : laboratoire</p>\n            <p>Identification : 14635-7 |25-hydroxyvitamin D3 [Moles/volume] in Serum or Plasma| (http://loinc.org)</p>\n            <p>Types de résultat autorisés : quantitatif, textuel</p>\n            <p>Résultat multiples : non</p>\n            <p>intitulé préféré sur compte rendu : Vitamine D</p>\n            <p>Unité de mesure : pmol/L (http://unitsofmeasure.org)</p>\n        </div>"
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#14635-7 "25-hydroxyvitamin D3 [Moles/volume] in Serum or Plasma"
* permittedDataType[0] = #Quantity
* permittedDataType[+] = #string
* multipleResultsAllowed = false
* preferredReportName = "Vitamine D"
* quantitativeDetails.unit = http://unitsofmeasure.org#pmol/L
* quantitativeDetails.decimalPrecision = 0