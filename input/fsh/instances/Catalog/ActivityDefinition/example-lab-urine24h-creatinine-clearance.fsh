Instance: example-lab-urine24h-creatinine-clearance
InstanceOf: ActivityDefinition
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabProcedureDefinition"
* language = #en-US
* url = "http://hl7.org/fhir/uv/order-catalog/ActivityDefinition/example-lab-urine24h-creatinine-clearance"
* version = "0.1.0"
* name = "UrineCreatinineClearanceProcedure"
* title = "Procedure - 24-hour urine creatinine clearance"
* status = #draft
* experimental = true
* date = "2020-02-13T18:00:00+01:00"
* publisher = "HL7 International - Orders and Observations Work Group"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/Special/committees/orders"
* description = "Procedures conveying the creatinine renal clearance in 24h urine observation"
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* purpose = "This procedures only hooks the creatinine renal clearance in 24h urine observation to the laboratory service \"Creatinine 24H renal clearance\""
* kind = #ServiceRequest
* code = http://loinc.org#2164-2 "Creatinine renal clearance in 24 hour Urine and Serum or Plasma"
// * observationResultRequirement = Reference(ObservationDefinition/example-observation-creatinine-renal-clearance)