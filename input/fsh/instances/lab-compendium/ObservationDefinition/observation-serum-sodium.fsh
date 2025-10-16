Instance: observation-serum-sodium
InstanceOf: ChLab_LabObservationDefinitionR4
Title: "ObservationDefinition Sodium in blood"
Description: "Natrium im Blut [Moles/volume]"
Usage: #example
* code = $loinc#2947-0 "Sodium [Moles/volume] in Blood"
* permittedDataType[0] = #Quantity
* permittedDataType[0] = #Quantity
* permittedDataType[+] = #string
* multipleResultsAllowed = false
* method.coding.system = $sct
* method.coding.code = #703445001
* method.coding.display = "Ion selective electrode measurement technique (qualifier value)"
* method.text = "Ion Selective Electrode (ISE)"
* preferredReportName = "sodium"
* quantitativeDetails.customaryUnit = $ucum#g/L
* quantitativeDetails.unit = $ucum#mmol/L
* quantitativeDetails.decimalPrecision = 0
* qualifiedInterval.category = #reference
* qualifiedInterval.range.low = 135 'mmol/L'
* qualifiedInterval.range.high = 145 'mmol/L'
* qualifiedInterval.context = $referencerange-meaning#normal "Normal Range"