Instance: zika-virus-exposure-assessment
InstanceOf: Questionnaire
Usage: #example
* url = "http://example.org/Questionnaire/zika-virus-exposure-assessment"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.4.642.20.1"
* name = "ExampleZikaVirusExposureAssessment"
* title = "Example Zika Virus Exposure Assessment"
* status = #draft
* subjectType = #Patient
* date = "2016-11-14"
* description = "Example questionnaire to assess Zika virus exposure potential."
* effectivePeriod.start = "2016-11-14"
* item[0].extension.url = "http://example.org/additional-information"
* item[=].extension.valueAttachment.url = "http://www.cdc.gov/zika/geo/index.html"
* item[=].extension.valueAttachment.title = "Areas with active Zika virus transmission/exposure risk"
* item[=].linkId = "1"
* item[=].code = http://example.org/questionnaires#"CDE: Resident of or Frequent Traveler to Zika Area"
* item[=].text = "Are you a resident of, or do you travel frequently to, an area with active Zika transmission?"
* item[=].type = #boolean
* item[+].extension.url = "http://example.org/additional-information"
* item[=].extension.valueAttachment.url = "http://www.cdc.gov/zika/geo/index.html"
* item[=].extension.valueAttachment.title = "Areas with active Zika virus transmission/exposure risk"
* item[=].linkId = "2"
* item[=].code = http://example.org/questionnaires#"CDE: Recent Travel to Zika Area"
* item[=].text = "Have you recently traveled to an area with active Zika transmission?"
* item[=].type = #boolean
* item[=].enableWhen.question = "1"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = false
* item[+].linkId = "3"
* item[=].code = http://example.org/questionnaires#"CDE: Time Since Returned From Travel"
* item[=].text = "How long has it been since you returned?"
* item[=].type = #quantity
* item[=].enableWhen.question = "2"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true
* item[+].extension.url = "http://example.org/additional-information"
* item[=].extension.valueAttachment.url = "http://www.cdc.gov/zika/geo/index.html"
* item[=].extension.valueAttachment.title = "Areas with active Zika virus transmission/exposure risk"
* item[=].linkId = "4"
* item[=].code = http://example.org/questionnaires#"CDE: Recent Sexual Encounter with Traveler to Zika Area"
* item[=].text = "Have you recently had condomless sex with a partner that has travelled in an area with active Zika transmission?"
* item[=].type = #boolean
* item[=].enableWhen.question = "2"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = false
* item[+].linkId = "5"
* item[=].code = http://example.org/questionnaires#"CDE: Time Since Sexual Encounter"
* item[=].text = "How long has it been since your last condomless sexual encounter?"
* item[=].type = #quantity
* item[=].enableWhen.question = "4"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true
* item[+].extension.url = "http://example.org/additional-information"
* item[=].extension.valueAttachment.url = "http://www.cdc.gov/zika/geo/index.html"
* item[=].extension.valueAttachment.title = "Areas with active Zika virus transmission/exposure risk"
* item[=].linkId = "6"
* item[=].code = http://example.org/questionnaires#"CDE: Planned Travel to Zika Area"
* item[=].text = "Do you plan to travel to an area with active Zika transmission?"
* item[=].type = #boolean
* item[=].enableWhen.question = "4"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = false