Instance: urine24h-creatinine
InstanceOf: ActivityDefinition
Description: "Service 24h Creatinine"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabProcedureDefinition"
* language = #en-US
* url = "http://hl7.org/fhir/uv/order-catalog/ActivityDefinition/urine24h-creatinine"
* version = "0.1.0"
* name = "UrineCreatinineProcedure"
* title = "Procedure - urine creatinine - 24H urine"
* status = #draft
* experimental = true
* date = "2020-02-11T14:00:00+02:00"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/Special/committees/orders"
* description = "creatinine measurements on 24-hour urine specimen"
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* purpose = "This _ActivityDefinition_ specifies the input specimens and input and output observations for urine creatinine.              It is referenced by any _PlanDefinition_ representing a lab service incorporating this procedure."
* effectivePeriod.start = "2022-04-01"
* effectivePeriod.end = "2023-12-25"
* topic[0] = http://snomed.info/LOINC#18729-4 "Urinanalysis studies (set)"
* topic[+] = http://snomed.info/sct#271260009 "Urine creatinine measurement (procedure)"
* topic[+] = http://snomed.info/sct#8879006 "Creatinine measurement, 24 hour urine"
* kind = #ServiceRequest
* code = http://loinc.org#65634-8 "Creatinine 24 hour urine panel - 24 hour Urine"
* observationRequirement[0] = Reference(ObservationDefinition/observation-collection-duration)
* observationRequirement[+] = Reference(ObservationDefinition/observation-collection-volume)
* observationResultRequirement[0] = Reference(ObservationDefinition/observation-collection-duration)
* observationResultRequirement[+] = Reference(ObservationDefinition/observation-collection-volume)
* observationResultRequirement[+] = Reference(ObservationDefinition/observation-urine24h-creatinine)