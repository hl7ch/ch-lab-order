Instance: observation-serum-chloride
InstanceOf: ObservationDefinition
Title: "ObservationDefinition Chloride"
Description: "Chlorid im Blut Befund"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabObservationDefinition"
* language = #en-US
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#2075-0 "chloride [Moles/volume] in Serum or Plasma"
* permittedDataType[0] = #Quantity
* permittedDataType[+] = #string
* multipleResultsAllowed = false
* method.text = "Ion Selective Electrode (ISE)"
* preferredReportName = "chloride"
* quantitativeDetails.customaryUnit = $ucum#g/L
* quantitativeDetails.unit = $ucum#mmol/L
* quantitativeDetails.decimalPrecision = 0
* qualifiedInterval.category = #reference
* qualifiedInterval.range.low = 98 'mmol/L'
* qualifiedInterval.range.high = 106 'mmol/L'
* qualifiedInterval.context = $referencerange-meaning#normal "Normal Range"