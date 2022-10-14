Instance: f201
InstanceOf: Questionnaire
Usage: #example
* url = "http://hl7.org/fhir/Questionnaire/f201"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.4.642.20.6"
* status = #active
* subjectType = #Patient
* date = "2010"
* code = http://example.org/system/code/lifelines/nl#"VL 1-1, 18-65_1.2.2" "Lifelines Questionnaire 1 part 1"
* item[0].linkId = "1"
* item[=].text = "Do you have allergies?"
* item[=].type = #boolean
* item[+].linkId = "2"
* item[=].text = "General questions"
* item[=].type = #group
* item[=].item[0].linkId = "2.1"
* item[=].item[=].text = "What is your gender?"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "2.2"
* item[=].item[=].text = "What is your date of birth?"
* item[=].item[=].type = #date
* item[=].item[+].linkId = "2.3"
* item[=].item[=].text = "What is your country of birth?"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "2.4"
* item[=].item[=].text = "What is your marital status?"
* item[=].item[=].type = #string
* item[+].linkId = "3"
* item[=].text = "Intoxications"
* item[=].type = #group
* item[=].item[0].linkId = "3.1"
* item[=].item[=].text = "Do you smoke?"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "3.2"
* item[=].item[=].text = "Do you drink alchohol?"
* item[=].item[=].type = #boolean