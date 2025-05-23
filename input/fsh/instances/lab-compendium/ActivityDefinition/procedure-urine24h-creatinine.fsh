Instance: procedure-urine24h-creatinine
InstanceOf: ActivityDefinition
Title: "CH LAB-Order Procedure Creatinine 24h Urine"
Description: "Procedure Creatinine 24 hour urine panel - 24 hour Urine"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabProcedureDefinition"
* language = #en-US
* url = "http://fhir.ch/ig/ch-lab-order/ActivityDefinition/procedure-urine24h-creatinine"
* version = "0.1.0"
* name = "UrineCreatinineProcedure"
* title = "Procedure - urine creatinine - 24H urine"
* status = #active
* experimental = true
* date = "2020-02-11T14:00:00+02:00"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/Special/committees/orders"
* description = "creatinine measurements on 24-hour urine specimen"
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#756
* purpose = "This _ActivityDefinition_ specifies the input specimens and input and output observations for urine creatinine.              It is referenced by any _PlanDefinition_ representing a lab service incorporating this procedure."

* effectivePeriod.start = "2020-04-01"
* effectivePeriod.end = "2020-12-25"

* topic[0] = $loinc#18729-4 "Urinalysis studies (set)"
* topic[+] = $sct#442564008 "Evaluation of urine specimen (procedure)"

* kind = #ServiceRequest
* code = $loinc#65634-8 "Creatinine 24 hour urine panel - 24 hour Urine"
* observationRequirement[0] = Reference(ObservationDefinition/observationCollectionDurationUrine)
* observationRequirement[+] = Reference(ObservationDefinition/observation24hCollectionVolumeUrine)
// * observationRequirement[+] = Reference(ObservationDefinition/observation24hCollectionCreatinineUrine)
* observationResultRequirement[0] = Reference(ObservationDefinition/observationCollectionDurationUrine)
* observationResultRequirement[+] = Reference(ObservationDefinition/observation24hCollectionVolumeUrine)
* observationResultRequirement[+] = Reference(ObservationDefinition/observation24hCollectionCreatinineUrine)
