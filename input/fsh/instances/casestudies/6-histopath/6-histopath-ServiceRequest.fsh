Instance: 6-histopath-ServiceRequest
InstanceOf: ChOrfServiceRequest
Title: "laborder 0-generic"
Description: "Example for Service Request due to suspected melanoma of skin"
Usage: #example
* id = "6-histopath"
* identifier[placerOrderIdentifier].type = $v2-0203#PLAC "Placer Identifier"
* identifier[placerOrderIdentifier].system = "urn:oid:2.16.756.5.30"
* identifier[placerOrderIdentifier].value = "123"
* status = #active
* intent = #original-order
* category = $servicerequest-categories#RequestForHistopathExam "Anforderung von histopathologischen Untersuchungen"
// code: what is being requested (procedure codes SNOMED CT, Test Codes LOINC), CodeableConcept
// code has an array of codings

// Pathology
* code.coding[0] = $loinc#11526-1 "Pathology study"

// orderDetails: Additional order information, codeableConcept

* priority = #urgent
* subject = Reference(Patient/SimoneStuder)
* requester = Reference(MarcMustermannArztpraxis)
* reasonCode = $sct#1163403006 "Pigmented nevus (morphologic abnormality)"
* reasonCode.text = "Suspicion Melanoma Skin"
* reasonReference = Reference(DiagnosticReport/Skin-dermatoscopy)
* insurance = Reference(HealthInsuranceCardSimoneStuder)
* specimen[0] = Reference(Specimen/Skin) "Skin specimen"

Instance: SimoneStuder
InstanceOf: CHCorePatient
Title: "Marina Rubella"
Description: "CH-Core-Patient, refers to 6-histopath"
Usage: #example
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>id</b>: SimoneStuder\n      </p><p><b>meta</b>: \n      </p><p><b>identifier</b>: 012/08.111113\n      </p><p><b>name</b>: SimoneStuder \n      </p><p><b>gender</b>: FEMALE\n      </p><p><b>birthDate</b>: Jan 08, 1992\n      </p><p><b>maritalStatus</b>: verheiratet \n        <span style=\"background: LightGoldenRodYellow\">(Details : {$ech-11-maritalstatus code '2' = '2', given as 'verheiratet'})</span></p><h3>Communications</h3><table class=\"grid\"><tr><td>-</td><td><b>Language</b></td><td><b>Preferred</b></td></tr><tr><td>*</td><td>Italienisch (Schweiz) \n            <span style=\"background: LightGoldenRodYellow\">(Details : {urn:ietf:bcp:47 code 'it-CH' = 'Italian (Region=Schweiz))</span></td><td>true</td></tr></table></div>"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.city = "Huttwil"
* extension[=].valueAddress.country = "Schweiz"
* extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-patient-ech-11-placeoforigin"
* extension[=].valueAddress.city = "Airolo"
* extension[=].valueAddress.state = "TI"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-religion"
* extension[=].valueCodeableConcept = $religiousAffiliation#1077 "Protestant"
* identifier.type = $v2-0203#MR
* identifier.system = "urn:oid:2.16.756.5.30.977789.1"
* identifier.value = "012/08.111113"
* name[0].use = #official
* name[=].family.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-name"
* name[=].family.extension.valueCode = #officialName
* name[=].family = "Studer"
* name[=].given = "Simone"
* name[=].given.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-firstname"
* name[=].given.extension.valueCode = #officialFirstName
* name[+].use = #maiden
* name[=].family.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-11-name"
* name[=].family.extension.valueCode = #originalName
* name[=].family = "Studer"
* telecom[0].system = #phone
* telecom[=].value = "+41 64 123 45 45"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "simone.studer@example.ch"
* gender = #female
* birthDate = "1992-01-08"
* address.use = #home
* address.type = #both
* address.line = "Amselstrasse 77"
* address.city = "Gerlafingen"
* address.postalCode = "4563"
* maritalStatus = $ech-11-maritalstatus#2 "verheiratet"
* communication.language = urn:ietf:bcp:47#de-CH
* communication.language.text = "Deutsch (Schweiz)"
* communication.preferred = true

Instance: HealthInsuranceCardSimoneStuder
InstanceOf: Coverage
Title: "HealthInsuranceCard"
Description: "Example for Insurance"
Usage: #example
* identifier.system = "http://ehic.com/insurer/123456789/member"
* identifier.value = "B123456780"
* status = #active
* type = $v3-ActCode#EHCPOL "extended healthcare"
* subscriber = Reference(Patient/SimoneStuder)
* beneficiary = Reference(Patient/SimoneStuder)
* period.end = "2012-03-17"
* payor.identifier.system = "http://ehic.com/insurer"
* payor.identifier.value = "123444449"


Instance: Skin
InstanceOf: Specimen
Title: "Serum Sample"
Description: "Example for Specimen of Serum"
Usage: #example
* identifier.value = "48736-12345-75465"
* accessionIdentifier.value = "4e99a-12345-dd333"
* status = #available
* type = $sct#396353007 "Specimen from skin obtained by elliptical excision (specimen)"
* type.text = "29 x 11 x 5 mm skin ellipse"
* subject = Reference(Patient/SimoneStuder)
* request = Reference(ServiceRequest/6-histopath)
// ---- only in R5: ----
//* feature.type = $sct#181469002 "Entire skin (body structure)"  //  The physical property of a specimen
//* feature.Description = "29 x 11 x 5 mm skin ellipse"
* collection.collector = Reference(MarcMustermannArztpraxis)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* collection.bodySite = $sct#1149541002 "Entire skin of lumbar region of back (body structure)"

* container.type = $sct#701394007 "General specimen receptacle transport container (physical object)"

Alias: $v2-0074 = http://terminology.hl7.org/CodeSystem/v2-0074
Alias: $acmeonline = https://www.acmeonline.com

Instance: Skin-dermatoscopy
InstanceOf: DiagnosticReport
Title: "Report about the dermatiscopic image of skin"
Description: "Report about the dermatiscopic image of skin"
Usage: #example
* meta.profile = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport"
* identifier.system = "https://www.acmeonline.com"
* identifier.value = "P44444444"
* status = #final
* category = $v2-0074#PAT "Pathology (gross & histopath, not surgical)"
* category.text = "Pathology"
* code = $acmeonline#4503 "Biopsy without Microscopic Description (1 Site/Lesion)-Standard"
* code.text = "Biopsy without Microscopic Description (1 Site/Lesion)-Standard"
* subject.display = "Simone Studer"
* effectiveDateTime = "2017-03-02"
* issued = "2017-03-15T08:13:08Z"
* performer.display = "Marc Mustermann, Arztpraxis"
* resultsInterpreter.display = "Marc Mustermann, Dr. med."
* specimen = Reference(Skin)
* presentedForm.contentType = #application/pdf
* presentedForm.language = #en
* presentedForm.title = "Dermatoscopy"
* presentedForm.url = "https://build.fhir.org/ig/hl7ch/ch-lab-order/branches/IG-ohne-Q/LabOrderBySR.png"