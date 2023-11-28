Instance: 6-histopath-ServiceRequest
InstanceOf: ChLabOrderSRContainer
Title: "Service Request 0-generic"
Description: "Example for Service Request due to suspected melanoma of skin"
Usage: #example
* id = "6-histopath-service-request"
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
* requester = Reference(ArminAhrensArztpraxis)
* reasonCode = $sct#1163403006 "Pigmented nevus (morphologic abnormality)"
* reasonCode.text = "Suspicion Melanoma Skin"
* reasonReference = Reference(DiagnosticReport/skin-dermatoscopy)
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

Instance: ArminAhrensArztpraxis
InstanceOf: CHCorePractitionerRole
Title: "Marc Mustermann at Arztpraxis"
Description: "PractitionerRole, refers to 1-tvt"
Usage: #example
* practitioner = Reference(Practitioner/ArminAhrens)
* organization = Reference(Organization/Arztpraxis)

Instance: ArminAhrens
InstanceOf: CHCorePractitioner
Title: "Armin Ahrens"
Description: "Practitioner, works in Arztpraxis, refers to 6-histopath"
Usage: #example
* identifier[0].system = "urn:oid:2.51.1.3"
* identifier[=].value = "7601000050700"
* identifier[+].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1" // ZSR
* identifier[=].value = "A123309"
* name.use = #official
* name.family = "Ahrens"
* name.given = "Armin"
* name.prefix = "Dr. med."
* name.prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name.prefix.extension.valueCode = #AC
* telecom[0].system = #phone
* telecom[=].value = "033 123 22 11"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "armin.ahrens@arztpraxis.ch"
* telecom[=].use = #work

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
* period.end = "2024-12-31"
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
// * request = Reference(ServiceRequest/6-histopath-service-request)
* request = Reference(ServiceRequest/6-histopath-service-request)
// ---- only in R5: ----
//* feature.type = $sct#181469002 "Entire skin (body structure)"  //  The physical property of a specimen
//* feature.Description = "29 x 11 x 5 mm skin ellipse"
* collection.collector = Reference(ArminAhrensArztpraxis)
* collection.collectedDateTime = "2015-08-16T06:40:17Z"
* collection.bodySite = $sct#1149541002 "Entire skin of lumbar region of back (body structure)"
* container.type = $sct#701394007 "General specimen receptacle transport container (physical object)"

Instance: SkinDermatoscopy
InstanceOf: DiagnosticReport
Title: "Report about the dermatiscopy of skin"
Description: "Report about the dermatiscopy of skin"
Usage: #example
* id = "skin-dermatoscopy"
* meta.profile = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport"
* identifier.system = "https://www.acmeonline.com"
* identifier.value = "P44444444"
* status = #final
* category = $v2-0074#PAT "Pathology (gross & histopath, not surgical)"
* category.text = "Pathology"
* code = $sct#1237125003 "Optical dermatoscopy of skin (procedure)"
* code.text = "Dermatoscopy of skin, Diagnostic Report"
* subject.display = "Simone Studer"
* subject = Reference(Patient/SimoneStuder)
* effectiveDateTime = "2017-03-02"
* issued = "2017-03-15T08:13:08Z"
* performer.display = "Marc Mustermann, Arztpraxis"
* resultsInterpreter.display = "Marc Mustermann, Dr. med."
* specimen = Reference(Skin)
* media.comment = "Dermatoskopy"
* media.link = Reference(Media/skin-dermatoskopy-image)

Instance: SkinDermatoscopyImage
InstanceOf: Media
Description: "Example of an image sent together with a histopathological examination order"
Title: "Dermatoscopic image of the skin excision"
Usage: #example
* id = "skin-dermatoskopy-image"
* status = #completed
* type = $v3-MediaType#image/png "PNG Image"
* subject = Reference(Patient/SimoneStuder)
* createdDateTime = "2017-12-17"
* issued = "2017-12-17T14:56:18Z"
* operator = Reference(Practitioner/MarcelMustermann)
* height = 661
* width = 702
* content.id = "a1"
* content.contentType = #image/png
* content.url = "http://fhir.ch/ig/ch-lab-order/images/Dermatoscopic-image-of-superficial-spreading-melanoma.png"
* content.creation = "2017-12-17"
