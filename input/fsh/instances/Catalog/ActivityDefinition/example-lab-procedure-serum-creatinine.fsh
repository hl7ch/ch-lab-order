Instance: example-lab-procedure-serum-creatinine
InstanceOf: ActivityDefinition
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabProcedureDefinition"
* language = #en-US
* url = "http://hl7.org/fhir/uv/order-catalog/ActivityDefinition/example-lab-procedure-serum-creatinine"
* version = "0.1.0"
* name = "UrineCreatinineProcedure"
* title = "Procedure - serum creatinine - venous blood"
* status = #draft
* experimental = true
* date = "2020-02-13T12:00:00+01:00"
* publisher = "HL7 International - Orders and Observations Work Group"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/Special/committees/orders"
* description = "creatinine measurements on serum specimen obtained from venous or capillary blood"
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* purpose = "This _ActivityDefinition_ specifies the input serum specimen and the output observation for serum creatinine.              It is referenced by any _PlanDefinition_ representing a lab service incorporating this procedure."
* kind = #ServiceRequest
* code = http://loinc.org#2160-0 "Creatinine [Mass/volume] in Serum or Plasma"
* observationResultRequirement = Reference(ObservationDefinition/example-observation-serum-creatinine)