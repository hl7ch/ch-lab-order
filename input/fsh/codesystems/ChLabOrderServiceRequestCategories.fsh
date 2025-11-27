CodeSystem: ChLabOrderServiceRequestCategories
Id: ServiceRequest.categories
Title: "Service Request Categories for Questionnaires"
Description: "ch-lab-order defines 10 different Kinds of Service Request"
* ^url = "http://fhir.ch/ig/ch-lab-order/CodeSystem/ServiceRequest.categories"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^count = 7
* #RequestForLabExam "Anforderung von Laboruntersuchungen" "Electronic ordering of laboratory tests and/or panels"
* #RequestForAdditionalExam "Nachverordnung von weiteren Laboruntersuchungen bei derselben Probe" "Electronic ordering of additional laboratory tests for referenced specimen"
* #RequestForPrecedentReport "Anforderung vorangehender Laborberichte" "Electronic ordering of laboratory diagnositic reports"
* #RequestForPrecedentReportAndImages "Anforderung vorangehender Bilddokumente" "Electronic ordering of laboratory images"
* #RequestFor2ndOpinion "Anforderung einer Zweitmeinung" "Electronic ordering of 2nd opinion"
* #ProposalForAdditionalExam "Vorschlag für weitere Untersuchungen" "Electronic proposal for additional exam"
* #RequestForHistopathExam "Anforderung von histopathologischen Untersuchungen" "Electronic ordering of histopathologic tests and/or panels"
// * #RequestForMonit24hBP "Anforderung von Monitoring 24 h Blutdruckmessung" "Electronic ordering of 24 h Blood Pressure Monitoring"
// * #RequestForMonit24hECG "Anforderung von Monitoring 24 h EKG" "Electronic ordering of 24 h ECG Monitoring"
// * #RequestForMonit7dECG "Anforderung von Monitoring 7 d EKG" "Electronic ordering of 7 d ECG Monitoring"
// * #RequestForMonitPO "Anforderung von Monitoring nächtliche Pulsoxymetrie" "Electronic ordering of nocturnal Puls Oximetry Monitoring"
// * #RequestForMonitPG "Anforderung von Monitoring nächtliche Polygrafie" "Electronic ordering of nocturnal Sleep Polygraphy"