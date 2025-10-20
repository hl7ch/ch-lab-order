Instance: observation-blood-hematocrit
InstanceOf: ChLab_ObservationDefinitionR4
Title: "CH LAB-Order ObservationDefinition Hematocrit, Blood"
Description: "Hematocrit blood [Volume Fraction] by calculation"
Usage: #example
// * meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabObservationDefinition"
// * language = #en-US
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#20570-8 "Hematocrit [Volume Fraction] of Blood by calculation"
* permittedDataType[0] = #Quantity
* multipleResultsAllowed = false
* method.coding.system = $sct
* method.coding.code = #703452004
* method.coding.display = "Electrical impedance technique (qualifier value)"
* method.text = "automated hematology analyzer (AHA)"
* preferredReportName = "Hematocrit Calc (Bld) [Volume fraction]"  // LOINC display name
// * quantitativeDetails.customaryUnit = http://unitsofmeasure.org#g/L
* quantitativeDetails.unit = http://unitsofmeasure.org#mmol/L
* quantitativeDetails.decimalPrecision = 1
* qualifiedInterval[0].category = #reference
* qualifiedInterval[=].gender = #male
* qualifiedInterval[=].range.low = 41 '%'
* qualifiedInterval[=].range.high = 50 '%' // male adult
* qualifiedInterval[=].context = http://terminology.hl7.org/CodeSystem/referencerange-meaning#normal "Normal Range"
* qualifiedInterval[=].age.low = 20 'a'
* qualifiedInterval[+].gender = #female
* qualifiedInterval[=].range.low = 36 '%'
* qualifiedInterval[=].range.high = 48 '%' // female adult
* qualifiedInterval[=].context = http://terminology.hl7.org/CodeSystem/referencerange-meaning#normal "Normal Range"
* qualifiedInterval[=].age.low = 20 'a'
