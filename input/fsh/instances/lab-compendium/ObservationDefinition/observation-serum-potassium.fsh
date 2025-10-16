Instance: observation-serum-potassium
InstanceOf: ChLab_LabObservationDefinitionR4
Title: "ObservationDefinition Potassium in Serum"
Description: "Kalium im Blut [Moles/volume]"
Usage: #example
// * meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabObservationDefinition"
* language = #en-US
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#2823-3 "Potassium [Moles/volume] in Serum or Plasma"
* permittedDataType[0] = #Quantity
* permittedDataType[+] = #string
* multipleResultsAllowed = false
* method.coding.system = $sct
* method.coding.code = #703445001
* method.coding.display = "Ion selective electrode measurement technique (qualifier value)"
* method.text = "Ion Selective Electrode (ISE)"
* preferredReportName = "Potassium"
* quantitativeDetails.customaryUnit = http://unitsofmeasure.org#g/L
* quantitativeDetails.unit = http://unitsofmeasure.org#mmol/L
* quantitativeDetails.decimalPrecision = 1
* qualifiedInterval[0].category = #reference
* qualifiedInterval[=].range.low = 3.8 'mmol/L'
* qualifiedInterval[=].range.high = 5.1 'mmol/L'
* qualifiedInterval[=].context = http://terminology.hl7.org/CodeSystem/referencerange-meaning#normal "Normal Range"
* qualifiedInterval[=].age.low = 2 'a'
* qualifiedInterval[=].age.high = 19 'a'
* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low = 3.5 'mmol/L'
* qualifiedInterval[=].range.high = 5.3 'mmol/L'
* qualifiedInterval[=].context = http://terminology.hl7.org/CodeSystem/referencerange-meaning#normal "Normal Range"
* qualifiedInterval[=].age.low = 20 'a'