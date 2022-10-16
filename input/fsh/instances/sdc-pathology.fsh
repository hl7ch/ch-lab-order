Instance: sdc-pathology
InstanceOf: Questionnaire
Description: "Sample File for Advanced Rendering"
Usage: #example
* url = "http://hl7.org/fhir/uv/sdc/Questionnaire/sdc-pathology"
* version = "3.0.0"
* name = "QuestionnaireSDCProfileExampleCap"
* title = "Questionnaire SDC Profile Cap"
* status = #active
* date = "2022-10-01T05:09:13+00:00"
* publisher = "HL7 International - FHIR Infrastructure Work Group"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/Special/committees/fiwg"
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* item[0].linkId = "1"
* item[=].text = "MARGINS"
* item[=].type = #group
* item[=].required = true
* item[=].item.linkId = "1.1"
* item[=].item.text = "Status of surgical margin involvement by tumor (observable entity)"
* item[=].item.type = #choice
* item[=].item.required = true
* item[=].item.answerOption[0].valueCoding = http://example.org#M1 "Margins univolved by tumor"
* item[=].item.answerOption[+].valueCoding = http://example.org#M2 "Margin(s) involved by tumor"
* item[=].item.answerOption[+].valueCoding = http://example.org#M3 "Cannot be determined"
* item[=].item.answerOption[+].valueCoding = http://example.org#M4 "Not applicable"
* item[=].item.item[0].linkId = "1.1.1"
* item[=].item.item[=].type = #group
* item[=].item.item[=].enableWhen.question = "1.1"
* item[=].item.item[=].enableWhen.operator = #=
* item[=].item.item[=].enableWhen.answerCoding = http://example.org#M1
* item[=].item.item[=].required = true
* item[=].item.item[=].item[0].linkId = "1.1.1.1"
* item[=].item.item[=].item[=].text = "Distance from Closest Margin"
* item[=].item.item[=].item[=].type = #choice
* item[=].item.item[=].item[=].answerOption[0].valueCoding = http://example.org#D1 "Specify (mm)"
* item[=].item.item[=].item[=].answerOption[+].valueCoding = http://example.org#D2 "Cannot be assessed (explain)"
* item[=].item.item[=].item[=].item[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item.item[=].item[=].item[=].extension[=].valueDecimal = 0.01
* item[=].item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item.item[=].item[=].item[=].extension[=].valueDecimal = 1000
* item[=].item.item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxDecimalPlaces"
* item[=].item.item[=].item[=].item[=].extension[=].valueInteger = 2
* item[=].item.item[=].item[=].item[=].linkId = "1.1.1.1.1.1"
* item[=].item.item[=].item[=].item[=].text = "Specify (mm)"
* item[=].item.item[=].item[=].item[=].type = #decimal
* item[=].item.item[=].item[=].item[=].required = true
* item[=].item.item[=].item[=].item[+].linkId = "1.1.1.1.2.1"
* item[=].item.item[=].item[=].item[=].text = "Cannot be assessed (explain)"
* item[=].item.item[=].item[=].item[=].type = #string
* item[=].item.item[=].item[=].item[=].required = true
* item[=].item.item[=].item[+].linkId = "1.1.1.2"
* item[=].item.item[=].item[=].text = "Specify Margin, if possible"
* item[=].item.item[=].item[=].type = #choice
* item[=].item.item[=].item[=].answerOption[0].valueCoding = http://example.org#W1 "Specify margin"
* item[=].item.item[=].item[=].answerOption[+].valueCoding = http://example.org#W2 "Cannot be determined (explain)"
* item[=].item.item[=].item[=].item[0].linkId = "1.1.1.2.1.1"
* item[=].item.item[=].item[=].item[=].text = "Specify margin"
* item[=].item.item[=].item[=].item[=].type = #string
* item[=].item.item[=].item[=].item[=].required = true
* item[=].item.item[=].item[=].item[+].linkId = "1.1.1.2.2.1"
* item[=].item.item[=].item[=].item[=].text = "Cannot be determined (explain)"
* item[=].item.item[=].item[=].item[=].type = #string
* item[=].item.item[=].item[=].item[=].required = true
* item[=].item.item[+].linkId = "1.1.2.1"
* item[=].item.item[=].text = "Specify Margin(s), if possible"
* item[=].item.item[=].type = #choice
* item[=].item.item[=].required = true
* item[=].item.item[=].answerOption[0].valueCoding = http://example.org#I1 "Specify margin(s)"
* item[=].item.item[=].answerOption[+].valueCoding = http://example.org#I2 "Cannot be determined (explain)"
* item[=].item.item[=].item[0].linkId = "1.1.2.1.1.1"
* item[=].item.item[=].item[=].text = "Specify margin(s)"
* item[=].item.item[=].item[=].type = #string
* item[=].item.item[=].item[=].required = true
* item[=].item.item[=].item[+].linkId = "1.1.2.1.2.1"
* item[=].item.item[=].item[=].text = "Cannot be determined (explain)"
* item[=].item.item[=].item[=].type = #string
* item[=].item.item[=].item[=].required = true
* item[=].item.item[+].linkId = "1.1.3.1"
* item[=].item.item[=].text = "Cannot be determined"
* item[=].item.item[=].type = #string
* item[=].item.item[=].required = true
* item[=].item.item[+].linkId = "1.1.4.1"
* item[=].item.item[=].text = "Not Applicable"
* item[=].item.item[=].type = #string
* item[=].item.item[=].required = true
* item[+].linkId = "2"
* item[=].text = "ACCESSORY FINDINGS"
* item[=].type = #group
* item[=].required = true
* item[=].item[0].linkId = "2.1"
* item[=].item[=].text = "Treatment Effect (applicable to carcinomas treated with neoadjuvant therapy)"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = http://example.org#E1 "Not identified"
* item[=].item[=].answerOption[+].valueCoding = http://example.org#E2 "Present (specify)"
* item[=].item[=].answerOption[+].valueCoding = http://example.org#E3 "Indeterminate"
* item[=].item[=].item[0].linkId = "2.1.1.1"
* item[=].item[=].item[=].text = "Not identified"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[+].linkId = "2.1.2.1"
* item[=].item[=].item[=].text = "Present (specify)"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[+].linkId = "2.1.3.1"
* item[=].item[=].item[=].text = "Indeterminate"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[+].linkId = "2.2"
* item[=].item[=].text = "Tumor Description"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueCoding = http://example.org#U1 "Hemorrhagic"
* item[=].item[=].answerOption[+].valueCoding = http://example.org#U2 "Necrotic"
* item[=].item[=].answerOption[+].valueCoding = http://example.org#U3 "Invasion"
* item[=].item[=].answerOption[+].valueCoding = http://example.org#U4 "Other (specify)"
* item[=].item[=].item[0].linkId = "2.2.1.1"
* item[=].item[=].item[=].text = "??"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].answerOption[0].valueCoding = http://example.org#V1 "Capsule"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://example.org#V2 "Vessels"
* item[=].item[=].item[=].answerOption[+].valueCoding = http://example.org#V3 "Extra-adrenal (specify)"
* item[=].item[=].item[=].item.linkId = "2.2.1.1.1.1"
* item[=].item[=].item[=].item.text = "Extra-adrenal (specify)"
* item[=].item[=].item[=].item.type = #string
* item[=].item[=].item[=].item.required = true
* item[=].item[=].item[+].linkId = "2.2.2.1"
* item[=].item[=].item[=].text = "Other (specify)"
* item[=].item[=].item[=].type = #string
* item[=].item[=].item[=].required = true