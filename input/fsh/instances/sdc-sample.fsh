Instance: sdc-sample
InstanceOf: Questionnaire
Description: "Sample File for Advanced Rendering"
Usage: #example
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "weight"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.repeat(item).where(linkId='3.3.1').item.answer.valueDecimal"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "height"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "%resource.repeat(item).where(linkId='3.3.2').item.answer.valueDecimal*0.0254"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/cqf-library"
* extension[=].valueCanonical = "http://example.org/Library/MeasurementLimits"
* extension[+].extension[0].url = "name"
* extension[=].extension[=].valueCoding = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext#patient "Patient"
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #Patient
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "The patient that is to be used to pre-populate the form"
* extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-endpoint"
* extension[=].valueUri = "http://example.org/QuestionnaireResponse/create"
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-entryMode"
* extension[=].valueCode = #sequential
* url = "http://build.fhir.org/ig/HL7/sdc/sdc-sample"
* version = "3.0.0"
* name = "SDCAdvancedRenderingExample"
* status = #draft
* date = "2022-03-08T18:37:19+00:00"
* publisher = "HL7 International - FHIR Infrastructure Work Group"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/Special/committees/fiwg"
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* item[0].linkId = "1"
* item[=].text = "Value constraints"
* item[=].type = #group
* item[=].item[0].linkId = "1.1"
* item[=].item[=].text = "First Name"
* item[=].item[=].type = #string
* item[=].item[=].maxLength = 50
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/minLength"
* item[=].item[=].extension.valueInteger = 2
* item[=].item[=].linkId = "1.2"
* item[=].item[=].text = "Last Name"
* item[=].item[=].type = #string
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/regex"
* item[=].item[=].extension.valueString = "[A-Z][0-9][A-Z] [0-9][A-Z][0-9]"
* item[=].item[=].linkId = "1.3"
* item[=].item[=].text = "Postal Code (A1A 1A1)"
* item[=].item[=].type = #string
* item[=].item[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].extension[=].valueDecimal = 1
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].extension[=].valueDecimal = 100
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxDecimalPlaces"
* item[=].item[=].extension[=].valueInteger = 2
* item[=].item[=].linkId = "1.4"
* item[=].item[=].text = "Enter your weight in kg"
* item[=].item[=].type = #decimal
* item[=].item[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitValueSet"
* item[=].item[=].extension[=].valueCanonical = "http://hl7.org/fhir/ValueSet/ucum-bodyweight"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-minQuantity"
* item[=].item[=].extension[=].valueQuantity = 10 'kg'
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-maxQuantity"
* item[=].item[=].extension[=].valueQuantity = 100 'kg'
* item[=].item[=].linkId = "1.5"
* item[=].item[=].text = "Body Weight"
* item[=].item[=].type = #quantity
* item[=].item[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/mimeType"
* item[=].item[=].extension[=].valueCode = #image/jpeg
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/mimeType"
* item[=].item[=].extension[=].valueCode = #application/pdf
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxSize"
* item[=].item[=].extension[=].valueDecimal = 1048576
* item[=].item[=].linkId = "1.6"
* item[=].item[=].text = "Attach Proof of Citizenship"
* item[=].item[=].type = #attachment
* item[+].linkId = "2"
* item[=].text = "Value constraints"
* item[=].type = #group
* item[=].item[0].linkId = "2.1"
* item[=].item[=].text = "(I/We) worried whether (my/our) food would run out before (I/we) got money to buy more."
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = http://loinc.org#LA28397-0 "Often true"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA6729-3 "Sometimes true"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA28398-8 "Never true"
* item[=].item[=].answerOption[+].valueCoding = http://loinc.org#LA15775-2 "Don't know/refused"
* item[=].item[+].linkId = "2.3"
* item[=].item[=].text = "Activity Level"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://loinc.org/vs/LL4882-8"
* item[=].item[+].extension[0].extension[0].url = "option"
* item[=].item[=].extension[=].extension[=].valueCoding = http://example.org/CodeSystem/conditions#3
* item[=].item[=].extension[=].extension[+].url = "expression"
* item[=].item[=].extension[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].extension[=].valueExpression.expression = "%patient.gender!='male'"
* item[=].item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-answerOptionsToggleExpression"
* item[=].item[=].extension[+].extension[0].url = "option"
* item[=].item[=].extension[=].extension[=].valueCoding = http://example.org/CodeSystem/conditions#4
* item[=].item[=].extension[=].extension[+].url = "expression"
* item[=].item[=].extension[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].extension[=].valueExpression.expression = "%patient.gender!='female'"
* item[=].item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-answerOptionsToggleExpression"
* item[=].item[=].linkId = "2.5"
* item[=].item[=].text = "Applicable health conditions"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = true
* item[=].item[=].answerValueSet = "#vsConditionsAll"
* item[=].item[+].linkId = "2.6"
* item[=].item[=].text = "Email*"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension.valueExpression.description = "current date"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "today()"
* item[=].item[=].linkId = "2.7"
* item[=].item[=].text = "Current Date:"
* item[=].item[=].type = #date
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "2.7.1"
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item[=].text.extension.valueExpression.description = "Substitute in current date"
* item[=].item[=].text.extension.valueExpression.language = #text/fhirpath
* item[=].item[=].text.extension.valueExpression.expression = "'Please only enter data that has been validated as of ' + today()"
* item[=].item[=].type = #display
* item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-openLabel"
* item[=].item[=].extension.valueString = "Other event (specify)"
* item[=].item[=].linkId = "2.8"
* item[=].item[=].text = "Heart History (check all that applies)"
* item[=].item[=].type = #open-choice
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueCoding = http://example.org/CodeSystem/procedures#U1 "Heart attack"
* item[=].item[=].answerOption[+].valueCoding = http://example.org/CodeSystem/procedures#U2 "Heart surgery"
* item[=].item[=].answerOption[+].valueCoding = http://example.org/CodeSystem/procedures#U3 "Cardiac catheterization"
* item[=].item[=].answerOption[+].valueCoding = http://example.org/CodeSystem/procedures#U4 "Coronary angioplasty (PTCA)"
* item[=].item[=].answerOption[+].valueCoding = http://example.org/CodeSystem/procedures#U5 "Cardiac pacemaker"
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-minOccurs"
* item[=].item[=].extension.valueInteger = 2
* item[=].item[=].linkId = "2.9"
* item[=].item[=].text = "Heart History (check at least 2):"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueCoding = http://example.org/CodeSystem/procedures#U1 "Heart attack"
* item[=].item[=].answerOption[+].valueCoding = http://example.org/CodeSystem/procedures#U2 "Heart surgery"
* item[=].item[=].answerOption[+].valueCoding = http://example.org/CodeSystem/procedures#U3 "Cardiac catheterization"
* item[=].item[=].answerOption[+].valueCoding = http://example.org/CodeSystem/procedures#U4 "Coronary angioplasty (PTCA)"
* item[=].item[=].answerOption[+].valueCoding = http://example.org/CodeSystem/procedures#U5 "Cardiac pacemaker"
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-maxOccurs"
* item[=].item[=].extension.valueInteger = 3
* item[=].item[=].linkId = "2.10"
* item[=].item[=].text = "Heart History (check no more than 3):"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueCoding = http://example.org/CodeSystem/procedures#U1 "Heart attack"
* item[=].item[=].answerOption[+].valueCoding = http://example.org/CodeSystem/procedures#U2 "Heart surgery"
* item[=].item[=].answerOption[+].valueCoding = http://example.org/CodeSystem/procedures#U3 "Cardiac catheterization"
* item[=].item[=].answerOption[+].valueCoding = http://example.org/CodeSystem/procedures#U4 "Coronary angioplasty (PTCA)"
* item[=].item[=].answerOption[+].valueCoding = http://example.org/CodeSystem/procedures#U5 "Cardiac pacemaker"
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control#check-box "Check-box"
* item[=].item[=].linkId = "2.11"
* item[=].item[=].text = "What treatments do you now have for heart disease? (select all that applies)"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueCoding = http://example.org/CodeSystem/treatments#noTreatment "NoTreatment"
* item[=].item[=].answerOption[+].valueCoding = http://example.org/CodeSystem/treatments#aspirin "Aspirin"
* item[=].item[=].answerOption[+].valueCoding = http://example.org/CodeSystem/treatments#otherMeds "Other medicines, tablets, or pills"
* item[=].item[=].answerOption[+].valueCoding = http://example.org/CodeSystem/treatments#diet "Diet"
* item[=].item[=].answerOption[+].valueCoding = http://example.org/CodeSystem/treatments#exercise "Exercise"
* item[=].item[=].answerOption[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionExclusive"
* item[=].item[=].answerOption[=].extension.valueBoolean = true
* item[=].item[=].answerOption[=].valueCoding = http://example.org/CodeSystem/treatments#none "None of the above"
* item[=].item[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item[=].item[=].extension[=].valueCoding = http://unitsofmeasure.org#mL "mL"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item[=].item[=].extension[=].valueCoding = http://unitsofmeasure.org#L "L"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item[=].item[=].extension[=].valueCoding = http://unitsofmeasure.org#g "g"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
* item[=].item[=].extension[=].valueCoding = http://unitsofmeasure.org#mg "mg"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-unitOpen"
* item[=].item[=].extension[=].valueCode = #optionsOrType
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-unitSupplementalSystem"
* item[=].item[=].extension[=].valueCanonical = "http://example.org/SomeUnitCodeSystem"
* item[=].item[=].linkId = "2.12"
* item[=].item[=].text = "Dosage"
* item[=].item[=].type = #quantity
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitValueSet"
* item[=].item[=].extension.valueCanonical = "http://hl7.org/fhir/ValueSet/age-units"
* item[=].item[=].linkId = "2.13"
* item[=].item[=].text = "Specify age:"
* item[=].item[=].type = #quantity
* item[=].item[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-referenceResource"
* item[=].item[=].extension[=].valueCode = #Practitioner
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-referenceProfile"
* item[=].item[=].extension[=].valueCanonical = "http://example.org/fhir/StructureDefinition/my-practitioner"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-lookupQuestionnaire"
* item[=].item[=].extension[=].valueCanonical = "http://example.org/Questionnaire/1234"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-answerExpression"
* item[=].item[=].extension[=].valueExpression.description = "all active practitioners"
* item[=].item[=].extension[=].valueExpression.language = #application/x-fhir-query
* item[=].item[=].extension[=].valueExpression.expression = "Practitioner?active=true&_sort=family,given"
* item[=].item[=].extension[+].extension[0].url = "path"
* item[=].item[=].extension[=].extension[=].valueString = "name.where(use='official').family + ', ' + name.where(use='official').given.first()"
* item[=].item[=].extension[=].extension[+].url = "forDisplay"
* item[=].item[=].extension[=].extension[=].valueBoolean = true
* item[=].item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-choiceColumn"
* item[=].item[=].linkId = "2.14"
* item[=].item[=].text = "Select your preferred practitioner:"
* item[=].item[=].type = #reference
* item[+].linkId = "3"
* item[=].text = "Calculation"
* item[=].type = #group
* item[=].item[0].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].extension.valueExpression.description = "deadline for submission"
* item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].extension.valueExpression.expression = "today() + 7 days"
* item[=].item[=].linkId = "3.1"
* item[=].item[=].text = "Deadline for submission (7 days from now)"
* item[=].item[=].type = #date
* item[=].item[=].readOnly = true
* item[=].item[+].linkId = "3.2"
* item[=].item[=].type = #group
* item[=].item[=].item[0].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.description = "patient's last name"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%patient.name.where(use='official').given.first()"
* item[=].item[=].item[=].linkId = "3.2.1"
* item[=].item[=].item[=].text = "Last Name:"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].readOnly = true
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.description = "patient's first name"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%patient.name.where(use='official').family()"
* item[=].item[=].item[=].linkId = "3.2.2"
* item[=].item[=].item[=].text = "First Name:"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].readOnly = true
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.description = "patient's gender"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%patient.gender"
* item[=].item[=].item[=].linkId = "3.2.3"
* item[=].item[=].item[=].text = "Gender:"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].readOnly = true
* item[=].item[+].linkId = "3.3"
* item[=].item[=].text = "Calculated Expression"
* item[=].item[=].type = #group
* item[=].item[=].item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].item[=].extension.valueCoding = http://unitsofmeasure.org#kg
* item[=].item[=].item[=].linkId = "3.3.1"
* item[=].item[=].item[=].text = "Weight (kg)"
* item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].item[=].extension.valueCoding = http://unitsofmeasure.org#[in_i]
* item[=].item[=].item[=].linkId = "3.3.2"
* item[=].item[=].item[=].text = "Body Height (inches)"
* item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item[=].item[=].item[=].extension.valueExpression.description = "BMI Calculation"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "(%weight/(%height.power(2))).round(1)"
* item[=].item[=].item[=].linkId = "3.3.3"
* item[=].item[=].item[=].text = "Your Body Mass Index (BMI) is"
* item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[=].readOnly = true
* item[=].item[+].linkId = "3.4"
* item[=].item[=].text = "CQF-related Example"
* item[=].item[=].type = #group
* item[=].item[=].item[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].item[=].extension[=].valueDecimal = 1
* item[=].item[=].item[=].extension[=].valueDecimal.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue"
* item[=].item[=].item[=].extension[=].valueDecimal.extension.valueString = "min_weight"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].item[=].extension[=].valueDecimal = 100
* item[=].item[=].item[=].extension[=].valueDecimal.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue"
* item[=].item[=].item[=].extension[=].valueDecimal.extension.valueString = "max_weight"
* item[=].item[=].item[=].linkId = "3.4.1"
* item[=].item[=].item[=].text = "Enter weight in kg"
* item[=].item[=].item[=].type = #decimal
* item[=].item[=].item[+].linkId = "3.4.2"
* item[=].item[=].item[=].text = "Enter email address"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].required.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item[=].item[=].required.extension.valueExpression.description = "current date"
* item[=].item[=].item[=].required.extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].required.extension.valueExpression.expression = "%patient.active"
* item[=].item[+].linkId = "3.5"
* item[=].item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
* item[=].item[=].text.extension.valueExpression.description = "last immunization date"
* item[=].item[=].text.extension.valueExpression.language = #text/fhirpath
* item[=].item[=].text.extension.valueExpression.expression = "'Your last immunization was on '+ %Immunization.occurrenceDateTime.substring(0,10) + '.'"
* item[=].item[=].type = #display
* item[+].linkId = "4"
* item[=].text = "Other Controls"
* item[=].type = #group
* item[=].item[0].linkId = "4.1"
* item[=].item[=].text = "Marital Status"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/marital-status"
* item[=].item[=].initial.valueCoding = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#D "Divorced"
* item[=].item[+].linkId = "4.2"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "4.2.1"
* item[=].item[=].item[=].text = "Choose Gender"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/administrative-gender"
* item[=].item[=].item[+].linkId = "4.2.2"
* item[=].item[=].item[=].text = "Are you pregnant? (enableWhen = gender is Female)"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].enableWhen.question = "4.2.1"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding = http://hl7.org/fhir/administrative-gender#female
* item[=].item[=].item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/yesnodontknow"
* item[=].item[=].item[+].linkId = "4.2.3"
* item[=].item[=].item[=].text = "Are you diabetic? (enableWhen = gender is Female)"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].enableWhen.question = "4.2.1"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding = http://hl7.org/fhir/administrative-gender#female
* item[=].item[=].item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/yesnodontknow"
* item[=].item[=].item[+].linkId = "4.2.4"
* item[=].item[=].item[=].text = "Have you been diagnosed with Gestational Diabetes? (enableBehavior = only when pregnant and diabetic)"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].enableWhen[0].question = "4.2.2"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
* item[=].item[=].item[=].enableWhen[+].question = "4.2.3"
* item[=].item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].item[=].enableWhen[=].answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
* item[=].item[=].item[=].enableBehavior = #all
* item[=].item[=].item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/yesnodontknow"
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/entryFormat"
* item[=].item[=].item[=].extension.valueString = "MM/DD/YYYY"
* item[=].item[=].item[=].linkId = "4.2.5"
* item[=].item[=].item[=].text = "Enter your birthdate (MM/DD/YYYY)"
* item[=].item[=].item[=].type = #date
* item[=].item[=].item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/administrative-gender"
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
* item[=].item[=].item[=].extension.valueExpression.description = "if last 2 questions were answered"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "%resource.repeat(item).where(linkId='4.2.b.1').answer.value.code ='female' and today().toString().substring(0, 4).toInteger() - %resource.repeat(item).where(linkId='4.2.b.5').answer.value.toString().substring(0, 4).toInteger() >= 40"
* item[=].item[=].item[=].linkId = "4.2.6"
* item[=].item[=].item[=].text = "Have you had mammogram before?(enableWhenExpression = only when gender is female and age > 40)"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/yesnodontknow"
* item[=].item[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-signatureRequired"
* item[=].item[=].extension[=].valueCodeableConcept = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.8 "Signature Witness Signature"
* item[=].item[=].extension[=].valueCodeableConcept.text = "the signature of a witness to any other signature."
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-usageMode"
* item[=].item[=].extension[=].valueCode = #capture
* item[=].item[=].linkId = "4.4"
* item[=].item[=].text = "Signature of Patient"
* item[=].item[=].type = #attachment
* item[=].item[=].required = true
* item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-candidateExpression"
* item[=].item[=].extension[=].valueExpression.description = "active practitioners that speak at least one of the patient's language"
* item[=].item[=].extension[=].valueExpression.language = #application/x-fhir-query
* item[=].item[=].extension[=].valueExpression.expression = "Practitioner?communication=&active=true"
* item[=].item[=].extension[+].extension[0].url = "path"
* item[=].item[=].extension[=].extension[=].valueString = "name.first().family"
* item[=].item[=].extension[=].extension[+].url = "label"
* item[=].item[=].extension[=].extension[=].valueString = "LAST NAME"
* item[=].item[=].extension[=].extension[+].url = "width"
* item[=].item[=].extension[=].extension[=].valueQuantity = 40 '%'
* item[=].item[=].extension[=].extension[+].url = "forDisplay"
* item[=].item[=].extension[=].extension[=].valueBoolean = true
* item[=].item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-choiceColumn"
* item[=].item[=].extension[+].extension[0].url = "path"
* item[=].item[=].extension[=].extension[=].valueString = "name.first().given.first()"
* item[=].item[=].extension[=].extension[+].url = "label"
* item[=].item[=].extension[=].extension[=].valueString = "FIRST NAME"
* item[=].item[=].extension[=].extension[+].url = "width"
* item[=].item[=].extension[=].extension[=].valueQuantity = 40 '%'
* item[=].item[=].extension[=].extension[+].url = "forDisplay"
* item[=].item[=].extension[=].extension[=].valueBoolean = true
* item[=].item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-choiceColumn"
* item[=].item[=].extension[+].extension[0].url = "path"
* item[=].item[=].extension[=].extension[=].valueString = "gender"
* item[=].item[=].extension[=].extension[+].url = "label"
* item[=].item[=].extension[=].extension[=].valueString = "GENDER"
* item[=].item[=].extension[=].extension[+].url = "width"
* item[=].item[=].extension[=].extension[=].valueQuantity = 20 '%'
* item[=].item[=].extension[=].extension[+].url = "forDisplay"
* item[=].item[=].extension[=].extension[=].valueBoolean = false
* item[=].item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-choiceColumn"
* item[=].item[=].linkId = "4.5"
* item[=].item[=].text = "All the practitioners below can speak the patient's language. Choose all preferred practioners:"
* item[=].item[=].type = #reference
* item[=].item[=].repeats = true
* item[=].item[+].extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext"
* item[=].item[=].extension[=].valueExpression.description = "Home address of the patient"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%patient.address.where(use='home')[0]"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].item[=].extension[=].valueExpression.description = "Home address of the patient"
* item[=].item[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].item[=].extension[=].valueExpression.expression = "%patient.address.where(use='home')[0]"
* item[=].item[=].linkId = "4.6"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "4.6.1"
* item[=].item[=].item[=].text = "Home Address"
* item[=].item[=].item[=].type = #display
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.description = "Address Line 1"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "line[0]"
* item[=].item[=].item[=].linkId = "4.6.2"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/Patient#Patient.address.line"
* item[=].item[=].item[=].text = "Address"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.description = "City"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "city"
* item[=].item[=].item[=].linkId = "4.6.3"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/Patient#Patient.address.city"
* item[=].item[=].item[=].text = "City"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.description = "State"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "state"
* item[=].item[=].item[=].linkId = "4.6.4"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/Patient#Patient.address.state"
* item[=].item[=].item[=].text = "Province"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerOption[0].valueCoding = http://example.org/CodeSystem/provinces#Alberta "Alberta"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://example.org/CodeSystem/provinces#BritishColumbia "British Columbia"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://example.org/CodeSystem/provinces#Manitoba "Manitoba"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://example.org/CodeSystem/provinces#NewBrunswick "New Brunswick"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://example.org/CodeSystem/provinces#NewfoundlandAndLabrador "Newfoundland and Labrador"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://example.org/CodeSystem/provinces#NovaScotia "Nova Scotia"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://example.org/CodeSystem/provinces#Ontario "Ontario"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://example.org/CodeSystem/provinces#PrinceEdwardIsland "Prince Edward Island"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://example.org/CodeSystem/provinces#Quebec "Quebec"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://example.org/CodeSystem/provinces#Saskatchewan "Saskatchewan"
* item[=].item[=].item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].item[=].item[=].extension.valueExpression.description = "Postal Code"
* item[=].item[=].item[=].extension.valueExpression.language = #text/fhirpath
* item[=].item[=].item[=].extension.valueExpression.expression = "postalCode"
* item[=].item[=].item[=].linkId = "4.6.5"
* item[=].item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/Patient#Patient.address.postalCode"
* item[=].item[=].item[=].text = "Postal Code"
* item[=].item[=].item[=].type = #string