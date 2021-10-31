CodeSystem: ChLabOrderServiceRequestCategories
Id: ServiceRequest.categories
Title: "Service Request Categories for Questionnaires"
Description: "ch-lab-order defines 10 different Kinds of Service Request"
* ^url = "http://build.fhir.org/ig/hl7ch/ch-lab-order/CodeSystem/ServiceRequest.categories"
* ^version = "0.1.0"
* ^status = #active
* ^date = "2021-06-01T10:21:46+00:00"
* ^publisher = "HL7 Switzerland"
* ^contact.name = "Marcel Hanselmann"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.hl7.ch"
* ^jurisdiction = urn:iso:std:iso:3166#CH
* ^copyright = "CC-BY-SA-4.0"
* ^content = #complete
* ^count = 11
* #RequestForLabExam "Anforderung von Laboruntersuchungen" "Electronic ordering of laboratory tests and/or panels"
* #RequestForAdditionalExam "Anforderung von zusätzlichen Laboruntersuchungen bei derselben Probe" "Electronic ordering of additional laboratory tests for referenced specimen"
* #RequestForPrecedentReport "Anforderung vorangehender Laborberichte" "Electronic ordering of laboratory diagnositic reports"
* #RequestForPrecedentReportAndImages "Anforderung vorangehender Bilddokumente" "Electronic ordering of laboratory images"
* #RequestFor2ndOpinion "Anforderung einer Zweitmeinung" "Electronic ordering of 2nd opinion"
* #ProposalForAdditionalExam "Vorschlag für weitere Untersuchungen" "Electronic proposal for additional exam"
* #RequestForMonit24hBP "Anforderung von Monitoring 24 h Blutdruckmessung" "Electronic ordering of 24 Blood Pressure Monitoring"
* #RequestForMonit24hECG "Anforderung von Monitoring 24 h EKG" "Electronic ordering of 24 Blood Pressure Monitoring"
* #RequestForMonit7dECG "Anforderung von Monitoring 7 Tage EKG" "Electronic ordering of 24 EKG Monitoring"
* #RequestForMonitPO "Anforderung von Monitoring nächtliche Pulsoxymetrie" "Electronic ordering of nocturnal Puls Oximetry Monitoring"
* #RequestForMonitPG "Anforderung von Monitoring nächtliche Polygrafie" "Electronic ordering of nocturnal Sleep Polygraphy"