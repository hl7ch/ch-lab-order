Instance: observation-blood-hemoglobin
InstanceOf: ObservationDefinition
Description: "Hemoglobin blood [Moles/volume]"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabObservationDefinition"
* language = #en-US
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = $loinc#59260-0 "Hemoglobin [Moles/volume] in Blood"
* permittedDataType[0] = #Quantity
* permittedDataType[+] = #string
* multipleResultsAllowed = false
* method.text = "Ion Selective Electrode (ISE)"
* preferredReportName = "Potassium"
* quantitativeDetails.customaryUnit = http://unitsofmeasure.org#g/L
* quantitativeDetails.unit = http://unitsofmeasure.org#mmol/L
* quantitativeDetails.decimalPrecision = 1
* qualifiedInterval[0].category = #reference
* qualifiedInterval[=].range.low = 8.7 'mmol/L'
* qualifiedInterval[=].range.high = 11.2 'mmol/L' // male adult
* qualifiedInterval[=].context = http://terminology.hl7.org/CodeSystem/referencerange-meaning#normal "Normal Range"
* qualifiedInterval[=].context = http://terminology.hl7.org/CodeSystem/referencerange-meaning#normal "Normal Range"
* qualifiedInterval[=].age.low = 20 'a'

// TODO observation-blood-hematocrit